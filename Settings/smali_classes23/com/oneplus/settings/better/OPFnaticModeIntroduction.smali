.class public Lcom/oneplus/settings/better/OPFnaticModeIntroduction;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFnaticModeIntroduction.java"


# static fields
.field public static final ACTIVITED_MODE:I = 0x1

.field public static final DEFAULT_MODE:I = 0x0

.field private static final PSW:Ljava/lang/String; = "alwaysfnatic"

.field public static final TAPS_TO_ACTIVE_HIDDEN_WALLPAPERS:I = 0x4


# instance fields
.field private mCurrentMode:I

.field private mDescritionView:Landroid/view/View;

.field private mDevHitCountdown:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mPSWText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->enableFnaticWallPapers()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->resetTaState()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    return-object v0
.end method

.method private enableFnaticWallPapers()V
    .locals 14

    iget v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v4

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->showKeyboard(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private resetTaState()V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01b2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->setContentView(I)V

    const v0, 0x7f0a049e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mLogoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mLogoView:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$1;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const v0, 0x7f0a016d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$3;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->resetTaState()V

    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
