
import UIKit

// Helper class for drawing shapes and gradients
class DrawingHelper {
    static func drawEllipse(in context: CGContext, rect: CGRect, color: UIColor, opacity: CGFloat) {
        context.saveGState()
        context.setFillColor(color.withAlphaComponent(opacity).cgColor)
        context.fillEllipse(in: rect)
        context.restoreGState()
    }

    static func drawRectangle(in context: CGContext, rect: CGRect, color: UIColor, opacity: CGFloat) {
        context.saveGState()
        context.setFillColor(color.withAlphaComponent(opacity).cgColor)
        context.fill(rect)
        context.restoreGState()
    }

    static func drawEllipseWithGradient(in context: CGContext, rect: CGRect, gradientColors: GradientColors, startPoint: CGPoint, endPoint: CGPoint) {
        let gradient = CGGradient(colorsSpace: nil, colors: gradientColors.cgColorArray, locations: nil)
        context.drawRadialGradient(gradient!, startCenter: startPoint, startRadius: 0, endCenter: endPoint, endRadius: max(rect.width, rect.height) / 2, options: [])
    }
}

// Enum for gradient colors
enum GradientColors {
    case orangeYellow
    case violetPink

    var cgColorArray: CFArray {
        switch self {
        case .orangeYellow:
            return [UIColor(red: 1, green: 0.89, blue: 0.74, alpha: 1.0).cgColor, UIColor(red: 1, green: 0.59, blue: 0.36, alpha: 1.0).cgColor] as CFArray
        case .violetPink:
            return [UIColor(red: 0.91, green: 0.80, blue: 1, alpha: 1.0).cgColor, UIColor(red: 1, green: 0.72, blue: 0.74, alpha: 1.0).cgColor] as CFArray
        }
    }
}

class CustomView: UIView {
   override func draw(_ rect: CGRect) {
      super.draw(rect)
      
      guard let context = UIGraphicsGetCurrentContext() else { return }
      
      let centerX = bounds.width / 2
      let centerY = bounds.height / 2
      
      // Draw circles
      DrawingHelper.drawEllipse(in: context, rect: CGRect(x: centerX - 414, y: centerY - 414, width: 828, height: 828), color: UIColor(red: 0.30, green: 0.29, blue: 0.94, alpha: 1.0), opacity: 0.30)
      DrawingHelper.drawEllipse(in: context, rect: CGRect(x: centerX - 326, y: centerY - 326, width: 652, height: 652), color: UIColor(red: 0.78, green: 0.78, blue: 0.98, alpha: 1.0), opacity: 0.08)
      DrawingHelper.drawEllipse(in: context, rect: CGRect(x: centerX - 248, y: centerY - 248, width: 496, height: 496), color: UIColor(red: 0.93, green: 0.93, blue: 0.99, alpha: 1.0), opacity: 0.08)
      DrawingHelper.drawEllipse(in: context, rect: CGRect(x: centerX - 173, y: centerY - 173, width: 346, height: 346), color: UIColor(red: 0.93, green: 0.93, blue: 0.99, alpha: 1.0), opacity: 0.07)
      
      // Draw rectangles
      DrawingHelper.drawRectangle(in: context, rect: CGRect(x: centerX - 58.09, y: centerY - 58.09, width: 116.18, height: 116.18), color: UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0), opacity: 0)
      
      // Draw gradients
      DrawingHelper.drawEllipseWithGradient(in: context, rect: CGRect(x: centerX - 7.785, y: centerY - 7.785, width: 15.57, height: 15.57), gradientColors: .orangeYellow, startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 1, y: 1))
      
      DrawingHelper.drawEllipseWithGradient(in: context, rect: CGRect(x: centerX + 93.66, y: centerY + 93.66, width: 11.68, height: 11.68), gradientColors: .violetPink, startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 1, y: 1))
      
      
      // Add an image in the center of the view
      let imageView = UIImageView(image: UIImage(named: "logo.png"))
      imageView.contentMode = .scaleAspectFit
      imageView.frame = CGRect(x: centerX - 100, y: centerY - 100, width: 200, height: 200) // Adjust the frame as needed
      addSubview(imageView)
      
   }
}



class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let customView = CustomView(frame: view.bounds)
        customView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(customView)
    }
}



























