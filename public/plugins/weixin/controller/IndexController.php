<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: wuwu <15093565100@163.com>  https://github.com/yangguangwuwu/thinkcmf5_wechat.git
// +----------------------------------------------------------------------
namespace plugins\weixin\controller; 

use cmf\controller\PluginBaseController;
use plugins\weixin\lib\TPweixin as Wechat;
use plugins\weixin\model\PluginPassiveModel as Passive;

class IndexController extends PluginBaseController
{
	private $weObj;
	private $options;
	private $plugin;
	private $config;

	protected function _initialize(){
		$pluginClass = cmf_get_plugin_class('Weixin');

        $this->plugin = new $pluginClass();
        $this->config = $this->plugin->getConfig();
		$this->options = array(
			'token'			=>$this->config['token'], //填写你设定的key
			'encodingaeskey'=>$this->config['encodingaeskey'], //填写加密用的EncodingAESKey
			'appid'			=>$this->config['appid'], //填写高级调用功能的app id, 请在微信开发模式后台查询
			'appsecret'		=>$this->config['appsecret'] //填写高级调用功能的密钥
			);
		 $this->weObj = new Wechat($this->options); //创建实例对象
	}

	/**
	 * [index 微信交互入口]
	 * @Author:   wuwu<15093565100@163.com>
	 * @DateTime: 2017-07-02T16:24:17+0800
	 * @since:    1.0
	 * @return    [type]                    [description]
	 */
    public function index(){
    	$this->weObj->valid();//微信接口验证
    	$msg = $this->weObj->getRev();
        $type = $msg->getRevType();

		switch($type) {
			case Wechat::MSGTYPE_TEXT://文字回复
				$this->text();
				break;
			case Wechat::MSGTYPE_EVENT://事件
                $eventType = $msg->getRevEvent();
                
                switch ($eventType['event']) {
                    case Wechat::EVENT_SUBSCRIBE://订阅回复subscribe
                        $this->subscribe();
                        break;                    
                    default:                       
                        break;
                }
                				
				break;
			default:
				$this->weObj->text("对不起，此类回复尚未开发")->reply();
		}
    }

    protected function text(){//文字回复
    	$keyword = $this->weObj->getRevContent();
        $data = Passive::where('mark', $keyword)->find();

        if(!isset($data['content'])){//关键词未查到
           $this->weObj->text("对不起，回复关键词不存在")->reply();
        }

        //根据回复类型回复
        $type = $data['outtype'];
        $content = $data['content'];
        $this->Reply($type,$content);

    }

    protected function subscribe(){//订阅回复
        $data = Passive::where('intype', 'subscribe')->find();
        if(empty($data['content'])){//关键词未查到
            $this->weObj->text("欢迎您关注此公共号")->reply();
            return;
        }

        $type = $data['outtype'];
        $content = $data['content'];
        $this->Reply($type,$content);        
    }

    protected function Reply($type,$content){//回复方式
        switch ($type) {
            case 'text':

                $this->weObj->text($content)->reply();
                break;
            
            default:
                $this->weObj->text("对不起，此类回复类型尚未开发")->reply();
                break;
        }
    }
}
