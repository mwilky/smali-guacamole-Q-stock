.class public Lcom/oneplus/android/server/scene/cgv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/cgv$zta;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final Mga:Ljava/lang/String; = "-1"

.field private static final Nga:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final Oga:J = 0x1f4L

.field private static final Pga:Landroid/net/Uri;

.field private static Qga:Lcom/oneplus/android/server/scene/vju; = null

.field private static Rga:Lcom/oneplus/android/server/scene/vju; = null

.field private static final SHORT_DURATION_TIMEOUT:J = 0x5dcL

.field private static Sga:Landroid/view/View; = null

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModePanel"

.field private static final VALUE_ON:Ljava/lang/String; = "1"


# instance fields
.field private Dga:Landroid/view/WindowManager;

.field private Ega:Landroid/animation/ValueAnimator;

.field private Fga:Landroid/animation/ValueAnimator;

.field private Gga:Lcom/oneplus/android/server/scene/vju;

.field private Hga:Lcom/oneplus/android/server/scene/cgv$zta;

.field private Iga:Ljava/lang/String;

.field private Jga:Z

.field private Kga:Z

.field private Lga:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mESportGuider:Lcom/oneplus/android/server/scene/tsu;

.field private mHandler:Landroid/os/Handler;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowManagerService:Landroid/view/IWindowManager;

.field private mb:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/cgv;->DBG:Z

    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/cgv;->Pga:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/scene/cgv;->Qga:Lcom/oneplus/android/server/scene/vju;

    sput-object v0, Lcom/oneplus/android/server/scene/cgv;->Rga:Lcom/oneplus/android/server/scene/vju;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Dga:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->mESportGuider:Lcom/oneplus/android/server/scene/tsu;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Iga:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/cgv;->Jga:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/cgv;->Kga:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Lga:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->mHandler:Landroid/os/Handler;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->Dga:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->mWindowManagerService:Landroid/view/IWindowManager;

    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 p2, 0x2

    new-array v1, p2, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->listenForCallState()V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Ks()V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Ls()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    const-class v2, Lcom/oneplus/android/server/scene/cgv;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-static {p1}, Lcom/oneplus/android/server/scene/tsu;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/tsu;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->mESportGuider:Lcom/oneplus/android/server/scene/tsu;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->mESportGuider:Lcom/oneplus/android/server/scene/tsu;

    invoke-virtual {p2, p0}, Lcom/oneplus/android/server/scene/tsu;->zta(Lcom/oneplus/android/server/scene/cgv;)V

    new-instance p2, Lcom/oneplus/android/server/scene/cgv$zta;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p1, v1}, Lcom/oneplus/android/server/scene/cgv$zta;-><init>(Lcom/oneplus/android/server/scene/cgv;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->Hga:Lcom/oneplus/android/server/scene/cgv$zta;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/oneplus/android/server/scene/cgv;->Pga:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Hga:Lcom/oneplus/android/server/scene/cgv$zta;

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Js()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private Jc(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-ne v0, p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private Js()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/oneplus/android/server/scene/cgv;->Lga:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Support haptic feedback app list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Lga:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneGameModePanel"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Ks()V
    .locals 0

    return-void
.end method

.method private Ls()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/scene/veq;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/veq;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private Ms()V
    .locals 8

    new-instance v0, Lcom/oneplus/android/server/scene/vdb;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    const v2, 0x509000e

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/oneplus/android/server/scene/vdb;-><init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/cgv;Z)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    const v1, 0x507001c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    const v4, 0x507001e

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/cgv;->Jc(Ljava/lang/String;)Z

    move-result v0

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/oneplus/android/server/scene/vdb;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    const v4, 0x509000f

    invoke-direct {v0, v1, v4, p0, v3}, Lcom/oneplus/android/server/scene/vdb;-><init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/cgv;Z)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/oneplus/android/server/scene/vdb;

    iget-object v4, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v2, p0, v3}, Lcom/oneplus/android/server/scene/vdb;-><init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/cgv;Z)V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceNotFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneGameModePanel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d8

    const/16 v6, 0x8

    const/4 v7, -0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->mb:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->mb:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "GameModeMsg"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Dga:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/cgv;->mb:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/cgv;->of()V

    return-void
.end method

.method private Ns()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/cgv;->_a(Z)V

    return-void
.end method

.method private Os()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/oxb;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/oxb;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/cjf;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/cjf;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private _a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/ire;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/ire;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/hmo;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/hmo;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/scene/cgv;->DBG:Z

    return v0
.end method

.method private hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Ns()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Dga:Landroid/view/WindowManager;

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->mESportGuider:Lcom/oneplus/android/server/scene/tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/tsu;->hide()V

    sput-object v0, Lcom/oneplus/android/server/scene/cgv;->Sga:Landroid/view/View;

    return-void
.end method

.method private listenForCallState()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/scene/fto;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/fto;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static qf()I
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/cgv;->Sga:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/scene/cgv;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Dga:Landroid/view/WindowManager;

    return-object p0
.end method

.method private show(Z)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    if-eqz p1, :cond_0

    const-string p0, "OemSceneGameModePanel"

    const-string p1, "There is gaming mode UI shown. Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Ega:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Fga:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Ms()V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/scene/cgv;)Lcom/oneplus/android/server/scene/vju;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    return-object p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/scene/cgv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/cgv;->Jga:Z

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/scene/cgv;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/scene/cgv;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/scene/cgv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/cgv;->Jga:Z

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/cgv;Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/vju;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    return-object p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/cgv;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/cgv;->hide(Z)V

    return-void
.end method

.method private zta(Landroid/view/View;II)Z
    .locals 2

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public O(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/cgv;->Kga:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/cgv;->hide(Z)V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Ms()V

    return-void
.end method

.method public P(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string v0, "esport_mode_enable_trigger"

    const-string v1, "1"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public Q(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Ms()V

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p2, Lcom/oneplus/android/server/scene/cgv;->DBG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current fg pgk: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OemSceneGameModePanel"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/oneplus/android/server/scene/cgv;->Iga:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Iga:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->Iga:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/cgv;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/oneplus/android/server/scene/obl;

    invoke-direct {p2, p0}, Lcom/oneplus/android/server/scene/obl;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Dga:Landroid/view/WindowManager;

    return-object p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/cgv;->Kga:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/cgv;->hide(Z)V

    return-void
.end method

.method protected of()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/cgv;->Os()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/cgv;->_a(Z)V

    return-void
.end method

.method public pa(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Lga:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pf()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cgv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/android/server/scene/ear;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/ear;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public rf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Iga:Ljava/lang/String;

    return-object p0
.end method

.method public sf()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/cgv;->Jga:Z

    return p0
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/cgv;->Kga:Z

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    if-eqz v1, :cond_0

    const-string p0, "OemSceneGameModePanel"

    const-string v0, "There is gaming mode UI shown. Ignore."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/cgv;->show(Z)V

    return-void
.end method

.method public tf()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cgv;->Gga:Lcom/oneplus/android/server/scene/vju;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zta(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/cgv;->hide(Z)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/cgv;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/cgv;->Kga:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/cgv;->show(Z)V

    :cond_0
    return-void
.end method
