#<center> oloSdk

android {
    repositories {
        flatDir {
            dirs 'libs'
        }
    }
}

dependencies {
    compile(name: 'adsdk', ext: 'aar')
}
### 开屏广告
		SplashAd.showAd(new SplashAd.Builder(this).setAdListener(new AdListener() {
            @Override
            public void onAdLoad() {
                //广告加载并显示时调用
            }

            @Override
            public void onAdClose() {
                //广告手动关闭时调用
            }

            @Override
            public void onAdClick() {
                //广告点击时调用
            }

            @Override
            public void onAdError(final AdException e) {
                //广告加载异常
            }

            @Override
            public void onAdCompleted() {
                // 广告显示完成/除开屏广告和视频广告显示完成后回调，其他广告会和onAdClose一起调用
                Log.e("----", "SplashAd onAdCompleted: ");
            }
        }).build());

### 插屏广告
		InterstitialAd.showAd(new InterstitialAd.Builder(this).setAdListener(new AdListener(){}).build());
        
### 横幅广告
		BannerAd.showAd(new BannerAd.Builder(this).setAdParentView(设置横幅广告的展示容器).setAdListener(new AdListener() { }).build());
		
### 信息流广告
		FlowAd.showAd(new FlowAd.Builder(this).setAdListener(new AdListener() { }).build());
		
### 原生广告
		NativeAd.showAd(new NativeAd.Builder(this).setNativeAdListener(new NativeAdListener<NativeAdData>() {
                    @Override
                    public void onAdLoad(final NativeAdData nativeAdData) {
                        //原生广告数据
                        
                        //广告图片
                        nativeAdData.getMedia()
                        //绑定一个显示的view，View必须实现INativeAdView接口，并实现对应的方法
                        nativeAdData.bindNativeAdView(imageView);
                        //广告显示上报
                        nativeAdData.reportOnShow();
                        // 广告点击上报
                        nativeAdData.reportOnClick();
                    }
        
                    @Override
                    public void onAdLoad() {
        
                    }
        
                    @Override
                    public void onAdClose() {
        
                    }
        
                    @Override
                    public void onAdClick() {
        
                    }
        
                    @Override
                    public void onAdError(final AdException e) {
                    }
                    @Override
                    public void onAdCompleted() {
        
                    }
        }).build());
