module main

import term // for bolding and clorizing the prints
import rand { intn } // for genrating random numbers
import os { input } // for getting user input

fn main() {
	// TODO write app logic here
	term.erase_clear() // clear terminal
	println(term.bold(term.cyan('This app developed by Omid with V programming language.')))
	mut snum := intn(101)! // our secret number
	for snum == 0 {
		// re genrating secret number if secret number is 0
		snum = intn(101)!
	}
	for lives := 10; lives != 0; lives-- {
		// main part of app
		println(term.bold(term.blue('you have ${lives} lives')))
		println(term.bold(term.magenta('guse the number betwen 1, 100')))
		unum := input(term.green('enter a number: ')) // geting user input

		match unum.int() {
			// checking the number
			snum {
				// if secret number equals to user entered number
				win()
				return
			}
			else {
				eprintln('No !!')
				if snum < unum.int() {
					println(term.yellow('the secret number is smaller than: ${unum.int()}'))
				} else if snum > unum.int() {
					println(term.yellow('the secret number is bigger than: ${unum.int()}'))
				} else {
					println('${unum.int()} is out of range.')
				}
			}
		}
	}
	println(term.bold(term.red('the secret number was: ') + term.bold(term.yellow(snum.str()))))
}

fn win() {
	// this function will exceute when the gueesed number is true
	println(term.bold(term.green('You win')))
}// winer function 
