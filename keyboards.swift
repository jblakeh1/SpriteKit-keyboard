import GameController
import SpriteKit


extension GameScene {
	
	func pollInput() {
		#if os(iOS) || os(tvOS)
        if let keyboard = GCKeyboard.coalesced?.keyboardInput {
            if (keyboard.button(forKeyCode: .keyA)?.isPressed ?? false) {
                //do stuff
            }
        }
		#endif
	}
	
	#if os(macOS)
	
	// mac keyboard is not recognized as a game controller
	public override func keyDown(with event: NSEvent) {
		if event.modifierFlags.contains(NSEvent.ModifierFlags.numericPad)  {
			let keyCode = event.keyCode
			
			// left arrow
			if keyCode == 123 {
                //do stuff
			}
			
			// right arrow
			if keyCode == 124 {
                //do stuff
			}

			// down arrow
			if keyCode == 125 {
                //do stuff
			}
			
			// down arrow
			if keyCode == 126 {
                //do stuff
			}
		}
		 else {
			if let characters = event.characters{
				for character in characters {
					switch character {
					case "a":
						// do stuff
						break

					default:
						break
					}
				}
			}
		}
	}

	#endif
}
