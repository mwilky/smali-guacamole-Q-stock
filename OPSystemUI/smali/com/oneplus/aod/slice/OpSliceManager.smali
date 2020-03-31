.class public Lcom/oneplus/aod/slice/OpSliceManager;
.super Ljava/lang/Object;
.source "OpSliceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/slice/OpSliceManager$Callback;,
        Lcom/oneplus/aod/slice/OpSliceManager$H;,
        Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PRIORITY:[I


# instance fields
.field private mCalendarEnabled:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

.field private mIcon:Landroid/widget/ImageView;

.field private mListening:Z

.field private mMusicInfoEnabled:Z

.field private mPrimary:Landroid/widget/TextView;

.field private mRemark:Landroid/widget/TextView;

.field private mSecondary:Landroid/widget/TextView;

.field private mSettingsObserver:Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

.field private final mSleepStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mSlices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/aod/slice/OpSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartDisplayCurState:Z

.field private mSmartDisplayEnabled:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private mUserId:I

.field private mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/aod/slice/OpSliceManager;->DEBUG:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/aod/slice/OpSliceManager;->PRIORITY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/aod/slice/OpSliceManager$H;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/slice/OpSliceManager$H;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    new-instance v0, Lcom/oneplus/aod/slice/OpSliceManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/slice/OpSliceManager$1;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSleepStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    new-instance p1, Lcom/oneplus/aod/slice/OpSliceManager$Callback;

    invoke-direct {p1, p0, p0}, Lcom/oneplus/aod/slice/OpSliceManager$Callback;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;Lcom/oneplus/aod/slice/OpSliceManager;)V

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/slice/OpMusicSlice;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/oneplus/aod/slice/OpMusicSlice;-><init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/oneplus/aod/slice/OpWeatherSlice;-><init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/slice/OpCalendarSlice;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/oneplus/aod/slice/OpCalendarSlice;-><init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/slice/OpSliceManager;->initViews(Landroid/view/View;)V

    new-instance p1, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSettingsObserver:Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSettingsObserver:Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;

    invoke-virtual {p1}, Lcom/oneplus/aod/slice/OpSliceManager$SettingsObserver;->observe()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string p1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-direct {v3, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p1, "com.android.systemui.intent.SLEEP_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSleepStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/aod/slice/OpSliceManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/slice/OpSliceManager;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/aod/slice/OpSliceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    return p0
.end method

.method static synthetic access$602(Lcom/oneplus/aod/slice/OpSliceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->updateEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->refresh()V

    return-void
.end method

.method private getActiveSlice()I
    .locals 7

    sget-object v0, Lcom/oneplus/aod/slice/OpSliceManager;->PRIORITY:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    sget-object v4, Lcom/oneplus/aod/slice/OpSliceManager;->PRIORITY:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/slice/OpSlice;

    sget-boolean v4, Lcom/oneplus/aod/slice/OpSliceManager;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSlice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/oneplus/aod/slice/OpSliceManager;->PRIORITY:[I

    aget v5, v5, v2

    invoke-direct {p0, v5}, Lcom/oneplus/aod/slice/OpSliceManager;->getSliceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    const-string v5, " slice is null"

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isActive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oneplus/aod/slice/OpSlice;->isActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpSliceManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/aod/slice/OpSlice;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/oneplus/aod/slice/OpSliceManager;->PRIORITY:[I

    aget p0, p0, v2

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getSliceName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "calendar"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "music"

    return-object p0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-string/jumbo p0, "weather"

    return-object p0

    :cond_2
    const-string p0, "none"

    return-object p0
.end method

.method static synthetic lambda$dump$2(Ljava/io/PrintWriter;Lcom/oneplus/aod/slice/OpSlice;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/oneplus/aod/slice/OpSlice;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic lambda$setListening$0(ZLcom/oneplus/aod/slice/OpSlice;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/oneplus/aod/slice/OpSlice;->setListening(Z)V

    return-void
.end method

.method private refresh()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$bc5FflJJqAJrqqT9q8U1JQ3DSW4;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$bc5FflJJqAJrqqT9q8U1JQ3DSW4;-><init>(Lcom/oneplus/aod/slice/OpSliceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateEnabled()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayCurState:Z

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    iget v5, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    iget-boolean v5, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mMusicInfoEnabled:Z

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    if-ne v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mCalendarEnabled:Z

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/slice/OpSlice;

    invoke-virtual {v1, v4}, Lcom/oneplus/aod/slice/OpSlice;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$sDEl99Q7Xx5rSvALZJbngOIzF8I;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$sDEl99Q7Xx5rSvALZJbngOIzF8I;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/oneplus/aod/slice/OpSliceContainer;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mViewContainer:Lcom/oneplus/aod/slice/OpSliceContainer;

    sget v0, Lcom/android/systemui/R$id;->slice_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->slice_primary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->slice_remark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->slice_secondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$refresh$1$OpSliceManager()V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->getActiveSlice()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/slice/OpSlice;

    sget-boolean v2, Lcom/oneplus/aod/slice/OpSliceManager;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slice count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " refresh to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->getSliceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpSliceManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x8

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->getIcon()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->getPrimaryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->getSecondaryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->getRemark()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mRemark:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onInitiativePulse()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/slice/OpSlice;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->onUserActive()V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/slice/OpSlice;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/aod/slice/OpSlice;->onTimeChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->updateEnabled()V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    const-string v1, "OpSliceManager"

    if-eqz v0, :cond_1

    sget-boolean p1, Lcom/oneplus/aod/slice/OpSliceManager;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do not active slices since current user is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSmartDisplayEnabled:Z

    if-nez v0, :cond_3

    sget-boolean p0, Lcom/oneplus/aod/slice/OpSliceManager;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Do not active slices since smart aod is disabled"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mListening:Z

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$uEI6V7m4r8KzqBNTTRNzRj3G2Ac;

    invoke-direct {v1, p1}, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$uEI6V7m4r8KzqBNTTRNzRj3G2Ac;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager;->mHandler:Lcom/oneplus/aod/slice/OpSliceManager$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
