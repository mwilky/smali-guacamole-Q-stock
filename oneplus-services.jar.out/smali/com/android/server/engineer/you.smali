.class public Lcom/android/server/engineer/you;
.super Lcom/android/server/engineer/bvj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/you$zta;,
        Lcom/android/server/engineer/you$you;
    }
.end annotation


# static fields
.field private static final CB:Ljava/lang/String; = "sys_engineer_config_list"

.field private static final EB:Ljava/lang/String; = "/data/engineermode/sys_engineer_config_list.xml"

.field private static final FB:Ljava/lang/String; = "/system/etc/sys_engineer_config_list.xml"

.field private static final TAG:Ljava/lang/String; = "you"


# instance fields
.field private final XA:Lcom/android/server/engineer/you$zta;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/engineer/you$zta;)V
    .locals 3

    const-string v0, "sys_engineer_config_list"

    const-string v1, "/system/etc/sys_engineer_config_list.xml"

    const-string v2, "/data/engineermode/sys_engineer_config_list.xml"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/engineer/bvj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/server/engineer/you$you;

    invoke-direct {p1, p0, p2}, Lcom/android/server/engineer/you$you;-><init>(Lcom/android/server/engineer/you;Lcom/android/server/engineer/you$zta;)V

    new-instance v0, Lcom/android/server/engineer/you$you;

    invoke-direct {v0, p0, p2}, Lcom/android/server/engineer/you$you;-><init>(Lcom/android/server/engineer/you;Lcom/android/server/engineer/you$zta;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/engineer/bvj;->zta(Lcom/android/server/engineer/bvj$zta;Lcom/android/server/engineer/bvj$zta;)V

    iput-object p2, p0, Lcom/android/server/engineer/you;->XA:Lcom/android/server/engineer/you$zta;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/engineer/bvj;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/engineer/you;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method Ec()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    check-cast p0, Lcom/android/server/engineer/you$you;

    invoke-virtual {p0}, Lcom/android/server/engineer/you$you;->Ec()Z

    move-result p0

    return p0
.end method

.method public Gc()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/engineer/bvj;->Gc()V

    iget-object p0, p0, Lcom/android/server/engineer/you;->XA:Lcom/android/server/engineer/you$zta;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/engineer/you$zta;->i()V

    :cond_0
    sget-object p0, Lcom/android/server/engineer/you;->TAG:Ljava/lang/String;

    const-string v0, "update SecrecySwitchHelper config"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method J(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    check-cast p0, Lcom/android/server/engineer/you$you;

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you$you;->J(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method K(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    check-cast p0, Lcom/android/server/engineer/you$you;

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you$you;->K(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method sis(Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    check-cast p0, Lcom/android/server/engineer/you$you;

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you$you;->sis(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method tsu(Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/bvj;->d(Z)Lcom/android/server/engineer/bvj$zta;

    move-result-object p0

    check-cast p0, Lcom/android/server/engineer/you$you;

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you$you;->tsu(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
