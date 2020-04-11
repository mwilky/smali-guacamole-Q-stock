.class final Lcom/oneplus/android/server/display/ibl;
.super Lcom/oneplus/android/server/display/igw;
.source ""


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpGamutMappingController"


# instance fields
.field private mClient:Lsis/you/you/zta/zta/you;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/display/ibl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/igw;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/android/server/display/ibl;->mClient:Lsis/you/you/zta/zta/you;

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setUp(Landroid/content/Context;Z)V
    .locals 0

    :try_start_0
    invoke-static {}, Lsis/you/you/zta/zta/you;->getService()Lsis/you/you/zta/zta/you;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/ibl;->mClient:Lsis/you/you/zta/zta/you;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p0, "OpGamutMappingController"

    const-string p1, "can not get OneplusDisplay service"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public zta(Lcom/oneplus/android/server/display/bio;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/display/ibl;->DEBUG:Z

    const-string v1, "OpGamutMappingController"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/bio;->we()Lsis/you/you/zta/zta/zta;

    move-result-object v0

    const-string v2, "adjustColorGamut"

    invoke-static {v1, v2, v0}, Lcom/oneplus/android/server/display/qbh;->zta(Ljava/lang/String;Ljava/lang/String;Lsis/you/you/zta/zta/zta;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/ibl;->mClient:Lsis/you/you/zta/zta/you;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/display/ibl;->mClient:Lsis/you/you/zta/zta/you;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/bio;->we()Lsis/you/you/zta/zta/zta;

    move-result-object p1

    invoke-interface {p0, p1}, Lsis/you/you/zta/zta/you;->zta(Lsis/you/you/zta/zta/zta;)V

    goto :goto_0

    :cond_1
    const-string p1, "adjustColorGamut mClient = null"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lsis/you/you/zta/zta/you;->getService()Lsis/you/you/zta/zta/you;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/ibl;->mClient:Lsis/you/you/zta/zta/you;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
