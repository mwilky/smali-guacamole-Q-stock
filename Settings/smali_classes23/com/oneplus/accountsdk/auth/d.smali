.class public final Lcom/oneplus/accountsdk/auth/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/oneplus/accountsdk/auth/d;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->b:Ljava/lang/String;

    sget-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->c:Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->d:Ljava/lang/String;

    sget-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->e:Ljava/lang/String;

    const-string v0, "1.2.1"

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->getOnlyOverSea()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/accountsdk/auth/d;->a(Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->getOnlyChina()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/accountsdk/auth/d;->a(Z)V

    return-void

    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/d;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "OverSeas"

    :goto_0
    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/d;->g:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "China"

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    const-string v0, "persist.sys.oem.region"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/oneplus/accountsdk/utils/OnePlusPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverSeas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.oem.region"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/oneplus/accountsdk/utils/OnePlusPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/d;->g:Ljava/lang/String;

    const-string v1, "OverSeas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
