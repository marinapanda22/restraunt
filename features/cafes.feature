# language: ru

Функционал: Регистрация и аутентификация
	Как пользователь я хочу иметь возможность зарегистрироваться и заходить/выходить на сайт

	Сценарий: Регистрация пользователя
		Допустим я перехожу на главную страницу и вижу кнопку "Sign up" 
		Если нажимаю на кнопку "Sign up"
		То выходит форма регистрации 
		Если я заполняю поля email "qwerty@mail.ru" и password "qwertyur" и нажимаю на кнопку "Sign up"
		То вижу на странице email пользователя "qwerty@mail.ru"

	Сценарий: аутентификация
		Допустим я перехожу на главную страницу и вижу кнопку "Log in"
		Если нажимаю кнопку "Log in"
		То выходит форма для входа
		Когда заполняются поля email "adminnn@mail.ru" и password "qwerty" и я нажимаю на кнопку "Log in"
		
		Если я хочу выйти 
		То кликаю кнопку "Sign up"
		Тогда выходят кнопки аутентификации

