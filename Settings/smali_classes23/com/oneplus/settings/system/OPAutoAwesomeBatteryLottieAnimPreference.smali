.class public Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;
.super Landroidx/preference/Preference;
.source "OPAutoAwesomeBatteryLottieAnimPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$OnPreferenceViewClickListener;
    }
.end annotation


# static fields
.field private static final MSG_PLAY:I


# instance fields
.field private animFile:Ljava/lang/String;

.field private anim_res:Lcom/airbnb/lottie/LottieAnimationView;

.field private img_play:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$OnPreferenceViewClickListener;

.field private resid:I

.field private showPlayBtn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d01dd

    iput v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->resid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->animFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->showPlayBtn:Z

    new-instance v0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d01dd

    iput v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->resid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->animFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->showPlayBtn:Z

    new-instance v0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d01dd

    iput v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->resid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->animFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->showPlayBtn:Z

    new-instance v0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;-><init>(Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->startOrStopAnim()V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->setLayoutResource(I)V

    return-void
.end method

.method private startAnim()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->img_play:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->anim_res:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    return-void
.end method

.method private startOrStopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->anim_res:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->stopAnim()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->startAnim()V

    return-void
.end method


# virtual methods
.method public isShowPlayBtn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->showPlayBtn:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a030a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->img_play:Landroid/widget/ImageView;

    const v0, 0x7f0a0091

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->anim_res:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->anim_res:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "auto_awesome_battery_dark.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->anim_res:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "auto_awesome_battery_light.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->anim_res:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->startAnim()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mListener:Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$OnPreferenceViewClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$OnPreferenceViewClickListener;->onPreferenceViewClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public playOrStopAnim()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAnimFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->animFile:Ljava/lang/String;

    return-void
.end method

.method public setShowPlayBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->showPlayBtn:Z

    return-void
.end method

.method public setViewOnClick(Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$OnPreferenceViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->mListener:Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$OnPreferenceViewClickListener;

    return-void
.end method

.method public stopAnim()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->anim_res:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->img_play:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
