# Web-experiment
web应用技术实验的综合实验源代码

/web下的index.jsp为网上书店的主页，register.jsp为书店的注册用户界面,login.jsp为用户登录页面，shoppingcart.jsp为购物车页面，result.jsp为商品结算后的页面； among.jsp是中间页面，处理数据库cart表的增删；register_user.jsp是中间页面，处理注册页面提交的信息，如果账号已存在就弹出提示，否则就往数据库添加新用户；login_user.jsp是中间页面，验证登录页面提交的信息是否与数据库的账号密码一致，如果不一致就弹出提示，否则就修改全局变量中的值表示登录成功，并跳转到主页面；quit.jsp是中间页面，修改全局变量中的值表示退出登录；

/src/img存放网上书店的图片，数据库中表book的route保存该图片的路径； 

/src/js存放实验中需要用到的JavaScript文件； 

/src/pag存放实验中需要用到的JavaBean文件。

![123](C:\Users\11401\Desktop\123.png)
