! Author:  Philipp Engel
! Licence: ISC
module sdl3_keyboard
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_keyboard_id = uint32

    ! enum SDL_TextInputType
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_TEXT                    = 0 !! The input is text.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_TEXT_NAME               = 1 !! The input is a person's name.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_TEXT_EMAIL              = 2 !! The input is an e-mail address.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_TEXT_USERNAME           = 3 !! The input is a username.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN    = 4 !! The input is a secure password that is hidden.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE   = 5 !! The input is a secure password that is visible.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_NUMBER                  = 6 !! The input is a number.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN  = 7 !! The input is a secure PIN that is hidden.
    integer(c_int), parameter, public :: SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE = 8 !! The input is a secure PIN that is visible.

    ! enum SDL_Capitalization
    integer(c_int), parameter, public :: SDL_CAPITALIZE_NONE      = 0 !! No auto-capitalization will be done.
    integer(c_int), parameter, public :: SDL_CAPITALIZE_SENTENCES = 1 !! The first letter of sentences will be capitalized.
    integer(c_int), parameter, public :: SDL_CAPITALIZE_WORDS     = 2 !! The first letter of words will be capitalized.
    integer(c_int), parameter, public :: SDL_CAPITALIZE_LETTERS   = 3 !! All letters will be capitalized.

    character(*), parameter, public :: SDL_PROP_TEXTINPUT_TYPE_NUMBER              = 'SDL.textinput.type'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_CAPITALIZATION_NUMBER    = 'SDL.textinput.capitalization'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN      = 'SDL.textinput.autocorrect'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_MULTILINE_BOOLEAN        = 'SDL.textinput.multiline'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_TITLE_STRING             = 'SDL.textinput.title'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_PLACEHOLDER_STRING       = 'SDL.textinput.placeholder'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_DEFAULT_TEXT_STRING      = 'SDL.textinput.default_text'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_MAX_LENGTH_NUMBER        = 'SDL.textinput.max_length'
    character(*), parameter, public :: SDL_PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER = 'SDL.textinput.android.inputtype'
end module sdl3_keyboard
