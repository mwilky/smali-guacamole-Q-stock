.class public Lcom/oneplus/scene/OpSceneModeObserver;
.super Ljava/lang/Object;
.source "OpSceneModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/scene/OpSceneModeObserver$Callback;,
        Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/scene/OpSceneModeObserver$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsInBrickMode:Z

.field private mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mSettingsObserver:Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mIsInBrickMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NavigationBarController;

    iput-object p1, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    new-instance p1, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;-><init>(Lcom/oneplus/scene/OpSceneModeObserver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mSettingsObserver:Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;

    iget-object p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mSettingsObserver:Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;

    invoke-virtual {p0}, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->observe()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/scene/OpSceneModeObserver;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/scene/OpSceneModeObserver;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mIsInBrickMode:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/scene/OpSceneModeObserver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mIsInBrickMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/scene/OpSceneModeObserver;)Lcom/android/systemui/statusbar/NavigationBarController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/scene/OpSceneModeObserver;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isInBrickMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mIsInBrickMode:Z

    return p0
.end method

.method public removeCallback(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/scene/OpSceneModeObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
