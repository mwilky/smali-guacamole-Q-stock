.class public Lcom/oneplus/settings/OPThemeService;
.super Landroid/app/Service;
.source "OPThemeService.java"


# static fields
.field private static final ACTION_THEME_CHANGE:Ljava/lang/String; = "android.settings.oneplus_theme_ready"

.field private static final MSG_WHAT_DONE:I = 0x0

.field private static final MSG_WHAT_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPThemeService"

.field private static final TIME_DONE_DELAYED:I = 0x7d0

.field private static final TIME_OUT:I = 0x1388


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

.field private mThemeDoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPThemeService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPThemeService$1;-><init>(Lcom/oneplus/settings/OPThemeService;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/OPThemeService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPThemeService$2;-><init>(Lcom/oneplus/settings/OPThemeService;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mThemeDoneReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPThemeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPThemeService;->dismissAndStopService()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissAndStopService()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    const-string v1, "OPThemeService"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mThemeDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPThemeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "unregisterReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const v0, 0x7f1215dd

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPThemeService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPThemeService;->stopSelf()V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.settings.oneplus_theme_ready"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeService;->mThemeDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/OPThemeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showDialog()V
    .locals 4

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f130529

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    const v2, 0x7f1215dc

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPThemeService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "OPThemeService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/OPThemeService;->showDialog()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPThemeService;->registerReceiver()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
