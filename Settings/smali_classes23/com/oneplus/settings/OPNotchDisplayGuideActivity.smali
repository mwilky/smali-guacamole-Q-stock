.class public Lcom/oneplus/settings/OPNotchDisplayGuideActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPNotchDisplayGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HIDE_NOTCH:I = 0x1

.field static final HIDE_NOTCH_VALUE:Ljava/lang/String; = "com.android.internal.display.cutout.emulation.noCutout"

.field private static final ONEPLUS_NOTCH_MODE:Ljava/lang/String; = "op_camera_notch_ignore"

.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERLAY_TARGET_PACKAGE:Ljava/lang/String; = "android"

.field static final PACKAGE_DEVICE_DEFAULT:Ljava/lang/String; = "package_device_default"

.field private static final SHOW_NOTCH:I


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mAms:Landroid/app/IActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideNotch:Landroid/widget/ImageView;

.field private mHideNotchBtn:Landroid/widget/RadioButton;

.field private mHideNotchMode:Landroid/view/View;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShowNotch:Landroid/widget/ImageView;

.field private mShowNotchBtn:Landroid/widget/RadioButton;

.field private mShowNotchMode:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$lBTk3aV-1tGVERBb37MROjQ8ddA;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$lBTk3aV-1tGVERBb37MROjQ8ddA;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/om/IOverlayManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrenMode()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "package_device_default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getOverlayInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    iget-object v4, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    :cond_0
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getOverlayInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    const-string v4, "com.android.internal.display_cutout_emulation"

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :cond_1
    nop

    sget-object v1, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic lambda$setOverlay$3(Landroid/content/om/OverlayInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setOverlay$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 1

    iget v0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return v0
.end method

.method private setCurrentMode()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_device_default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.display.cutout.emulation.noCutout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private setOverlay(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "package_device_default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    :cond_2
    new-instance v1, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method


# virtual methods
.method public synthetic lambda$onClick$1$OPNotchDisplayGuideActivity()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$onClick$2$OPNotchDisplayGuideActivity()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    const-string v1, "notch_display"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$I7MhZGV2MxvtCUd5vNy8iL55-Lo;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$I7MhZGV2MxvtCUd5vNy8iL55-Lo;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)V

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "package_device_default"

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setOverlay(Ljava/lang/String;)Z

    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v0, "com.android.internal.display.cutout.emulation.noCutout"

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setOverlay(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$FCz1Ru0CGbBUDAMHGoC-ZNJO4F4;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$FCz1Ru0CGbBUDAMHGoC-ZNJO4F4;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v1, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01bb

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAms:Landroid/app/IActivityManager;

    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const v0, 0x7f0a04c5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04c3

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const v0, 0x7f0a04a5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    const v0, 0x7f0a04c4

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v0, 0x7f0a04a6

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v1, 0x7f080495

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v1, 0x7f080465

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v1, 0x7f080496

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v1, 0x7f080466

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setCurrentMode()V

    return-void
.end method
