# TapGestureRecognizer

这是一个简单的demo，当用户轻触屏幕将会在触摸的地方出现爱心桃

## 环境要求
- Xcode9.0 及以上
- iOS12.0 及以上
- Swift4.0 及以上

## GIF演示
![](https://github.com/HuangRunHua/TapGestureRecognizer/blob/master/TapGestureRecognizer/TapGestureRecognizer/IMB_zBPnBs.gif)

## 核心代码
下面是爱心变化的核心代码
```swift
func playAnimation() {
        UIView.animate(withDuration: 1.0, animations: {
            let scale = CGAffineTransform(scaleX: 200, y: 200)
            self.button.transform = scale
        }) { (_) in
            UIView.animate(withDuration: 1.0) {
                self.button.alpha = 0.0
            }
        }
    }
```



