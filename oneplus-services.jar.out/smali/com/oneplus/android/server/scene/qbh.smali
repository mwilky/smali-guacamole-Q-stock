.class public Lcom/oneplus/android/server/scene/qbh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Uea:Ljava/lang/String; = "game_mode_answer_no_incallui"

.field private static instance:Lcom/oneplus/android/server/scene/qbh;


# instance fields
.field private Sea:Z

.field private final Tea:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/qbh;->Sea:Z

    new-instance v0, Lcom/oneplus/android/server/scene/ywr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/scene/ywr;-><init>(Lcom/oneplus/android/server/scene/qbh;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/qbh;->Tea:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/qbh;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/qbh;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "op_oimc_func_answer_without_ui"

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/qbh;
    .locals 2

    const-class v0, Lcom/oneplus/android/server/scene/qbh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/android/server/scene/qbh;->instance:Lcom/oneplus/android/server/scene/qbh;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/android/server/scene/qbh;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/qbh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/android/server/scene/qbh;->instance:Lcom/oneplus/android/server/scene/qbh;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/qbh;->instance:Lcom/oneplus/android/server/scene/qbh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    const-string p0, "OPOIMCController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ps()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/qbh;->Sea:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/qbh;->Sea:Z

    iget-object v0, p0, Lcom/oneplus/android/server/scene/qbh;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/qbh;->Tea:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private static zta(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public W(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/qbh;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "game_mode_answer_no_incallui"

    invoke-static {v0, v2, v1}, Lcom/oneplus/android/server/scene/qbh;->zta(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAnswerWithoutUIObserver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/qbh;->logd(Ljava/lang/String;)V

    sget-object p0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ENABLE_ANSWERWITHOUTUI:Lcom/oneplus/core/oimc/OIMCRule;

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/oneplus/server/zta;->addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/oneplus/server/zta;->removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V

    :goto_0
    return-void
.end method

.method public df()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAnswerWithoutUIContentObServer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/qbh;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/qbh;->ps()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/qbh;->Sea:Z

    iget-object v0, p0, Lcom/oneplus/android/server/scene/qbh;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_answer_no_incallui"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/qbh;->Tea:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
