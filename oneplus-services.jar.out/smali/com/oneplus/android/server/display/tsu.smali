.class public final Lcom/oneplus/android/server/display/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OpAssertiveDisplayManager"

.field private static final nca:I = 0xc


# instance fields
.field private final fca:I

.field private final gca:I

.field private hca:Z

.field private ica:Z

.field private jca:Z

.field private kca:Z

.field private lca:Z

.field private final mContext:Landroid/content/Context;

.field private mDaemon:Lsis/you/you/zta/zta/you;

.field private mGlobaAmbientLux:F

.field private mca:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/oneplus/android/server/display/tsu;->fca:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/oneplus/android/server/display/tsu;->gca:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->hca:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->ica:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->jca:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->kca:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->lca:Z

    iput-object p1, p0, Lcom/oneplus/android/server/display/tsu;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lsis/you/you/zta/zta/you;->getService()Lsis/you/you/zta/zta/you;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/tsu;->mDaemon:Lsis/you/you/zta/zta/you;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAssertiveDisplayManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/display/tsu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/tsu;->ica:Z

    return p1
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/tsu;)Lsis/you/you/zta/zta/you;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu;->mDaemon:Lsis/you/you/zta/zta/you;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/tsu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/tsu;->hca:Z

    return p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/tsu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/tsu;->kca:Z

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/tsu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/tsu;->kca:Z

    return p1
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/tsu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/tsu;->jca:Z

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/tsu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/tsu;->lca:Z

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/tsu;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/tsu;->mGlobaAmbientLux:F

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/tsu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/tsu;->jca:Z

    return p1
.end method


# virtual methods
.method public disablelightSensor()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/display/tsu;->mca:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/display/tsu;->mca:Landroid/os/CountDownTimer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->hca:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->ica:Z

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/tsu;->lca:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/display/tsu;->mDaemon:Lsis/you/you/zta/zta/you;

    const/16 v2, 0xc

    invoke-interface {v1, v2, v0}, Lsis/you/you/zta/zta/you;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpAssertiveDisplayManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->lca:Z

    :cond_1
    return-void
.end method

.method public updateAutoAssertiveDisplayStatus(F)V
    .locals 8

    iput p1, p0, Lcom/oneplus/android/server/display/tsu;->mGlobaAmbientLux:F

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->lca:Z

    const/4 v1, 0x0

    const v2, 0x46ea6000    # 30000.0f

    const/4 v3, 0x1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->hca:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/tsu;->hca:Z

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/tsu;->jca:Z

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu;->mca:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/oneplus/android/server/display/tsu;->mca:Landroid/os/CountDownTimer;

    :cond_0
    new-instance p1, Lcom/oneplus/android/server/display/you;

    const-wide/16 v4, 0x13ba

    const-wide/16 v6, 0x3e8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/android/server/display/you;-><init>(Lcom/oneplus/android/server/display/tsu;JJ)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/tsu;->mca:Landroid/os/CountDownTimer;

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/tsu;->lca:Z

    if-eqz v0, :cond_3

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/tsu;->ica:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/tsu;->ica:Z

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/tsu;->kca:Z

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu;->mca:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/oneplus/android/server/display/tsu;->mca:Landroid/os/CountDownTimer;

    :cond_2
    new-instance p1, Lcom/oneplus/android/server/display/sis;

    const-wide/16 v4, 0x13ba

    const-wide/16 v6, 0x3e8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/android/server/display/sis;-><init>(Lcom/oneplus/android/server/display/tsu;JJ)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
