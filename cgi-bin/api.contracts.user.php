<?php
#
# we do not use these contacts but we require these classes to be updated to 
# make sure we can generate correct api document.
# 
#注册
class UserRegisterRequest{
  
}
class UserRegisterResponse{
}
#登陆
class UserLoginRequest{
}
class UserLoginResponse{
}
#退出
class UserLogoutRequest{
}
class UserLogoutResponse{
}
#修改详细信息
class UserUpdateProfileRequest{
}
class UserUpdateProfileResponse{
}

#验证联系方式
class UserContactVerifyRequest{
}
class UserContactVerifyResponse{
}

#重置密码
class UserPasswordResetRequest{
}
class UserPasswordResetResponse{
}

#添加社交账号
class UserAddSocialAccountRequest{}
class UserAddSocialAccountResponse{}

#删除社交账号
class UserDeleteSocialAccountRequest{}
class UserDeleteSocialAccountResponse{}

#获取社交账号
class UserSearchSocialAccountRequest{}
class UserSearchSocialAccountResponse{}
?>
