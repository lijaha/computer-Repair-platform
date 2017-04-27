<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        //在应用程序启动时运行的代码
        Application["vistorCount"] = 0;
       

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //在应用程序关闭时运行的代码

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        //在出现未处理的错误时运行的代码

    }

    void Session_Start(object sender, EventArgs e)
    {
        Application.Lock();
        Application["vistorCount"] = (int)Application["vistorCount"] + 1;
        Application.UnLock();

    }

    void Session_End(object sender, EventArgs e)
    {
        Application.Lock();
        Application["vistorCount"] = (int)Application["vistorCount"] - 1;
        Application.UnLock();

    }
       
</script>
