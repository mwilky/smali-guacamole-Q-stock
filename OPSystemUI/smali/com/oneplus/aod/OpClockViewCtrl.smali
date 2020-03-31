.class public Lcom/oneplus/aod/OpClockViewCtrl;
.super Ljava/lang/Object;
.source "OpClockViewCtrl.java"


# instance fields
.field private mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

.field private mClockStyle:I

.field private mClockView:Lcom/oneplus/aod/OpTextClock;

.field private final mContext:Landroid/content/Context;

.field private mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

.field private mDateView:Lcom/oneplus/aod/OpTextDate;

.field private mDisplayText:Ljava/lang/String;

.field private mDreaming:Z

.field private mMiniClockView:Lcom/oneplus/aod/OpMinimalismClock;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/OpClockViewCtrl;->initViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private getDisplayText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method private refreshTime()V
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OpMinimalismClock;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpMinimalismClock;->refreshTime()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    sget-object v1, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    sget-object v0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateClockVisibility()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateClockVisibility: mClockStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockViewCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OpMinimalismClock;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OpMinimalismClock;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OpMinimalismClock;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OpMinimalismClock;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpTextClock;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateView:Lcom/oneplus/aod/OpTextDate;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpTextDate;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

    iget p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpDateTimeView;->setClockStyle(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->owner_info_default_marginTop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->owner_info_analog_marginTop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getClockStyle()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    return p0
.end method

.method public initViews(Landroid/view/ViewGroup;)V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->date_time_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpDateTimeView;

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

    sget v0, Lcom/android/systemui/R$id;->clock_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpTextClock;

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Lcom/oneplus/aod/OpTextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpTextClock;->setShowCurrentUserTime(Z)V

    sget v0, Lcom/android/systemui/R$id;->date_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateView:Lcom/oneplus/aod/OpTextDate;

    sget v0, Lcom/android/systemui/R$id;->analog_clock_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAnalogClock;

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

    sget v0, Lcom/android/systemui/R$id;->minimalism_clock_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpMinimalismClock;

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OpMinimalismClock;

    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateDisplayTextDB()V

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDreaming:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDreaming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpDateTimeView;->refresh()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->refreshTime()V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpDateTimeView;->refresh()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->refreshTime()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateOwnerInfo()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpDateTimeView;->refresh()V

    iput p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateDisplayTextDB()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateOwnerInfo()V

    return-void
.end method

.method public startDozing()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpDateTimeView;->refresh()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->refreshTime()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateOwnerInfo()V

    return-void
.end method

.method public updateClockDB()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    const/4 v2, 0x0

    const-string v3, "aod_clock_style"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v1

    const-string v3, "ClockViewCtrl"

    if-nez v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set clock style failed. Invalid clock style: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OpAnalogClock;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAnalogClock;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/OpDateTimeView;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpDateTimeView;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpDateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateLayout()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockVisibility()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateClock: style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDisplayTextDB()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    const-string v2, "aod_display_text"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDisplayText:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateClock: updateDisplayTextDB = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ClockViewCtrl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    const-string v0, "ClockViewCtrl"

    const-string/jumbo v1, "updateOwnerInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
