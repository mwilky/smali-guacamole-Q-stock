.class public Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# static fields
.field private static final TAG_SKIP_SCREEN_LOCK_DIALOG:Ljava/lang/String; = "skip_screen_lock_dialog"


# instance fields
.field private mLeftButtonIsSkip:Z

.field private mOptionsButton:Lcom/oneplus/lib/widget/button/OPButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$onCreateView$0$SetupChooseLockPattern$SetupChooseLockPatternFragment(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "skip_screen_lock_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a05d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v2, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mSkipOrClearButton:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v2, Lcom/android/settings/password/-$$Lambda$qmj8MbFDaJVoWm4wk3p_uMWO8v0;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$qmj8MbFDaJVoWm4wk3p_uMWO8v0;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 1

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    return-void
.end method

.method protected onSkipOrClearButtonClick(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLeftButtonIsSkip:Z

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ":settings:frp_supported"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "for_fingerprint"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "for_face"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onSkipOrClearButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06033c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060340

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mNextButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0603a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setTextColor(I)V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Lcom/oneplus/lib/widget/button/OPButton;

    if-eqz v0, :cond_2

    nop

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mSkipOrClearButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mSkipOrClearButton:Lcom/oneplus/lib/widget/button/OPButton;

    const v1, 0x7f1214b7

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLeftButtonIsSkip:Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mLeftButtonIsSkip:Z

    :goto_2
    iget v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->message:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void
.end method
