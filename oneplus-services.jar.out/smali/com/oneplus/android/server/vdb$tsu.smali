.class Lcom/oneplus/android/server/vdb$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field private gW:Landroid/view/View;

.field private hW:Landroid/view/View;

.field private iW:Landroid/view/View;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWm:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/oneplus/android/server/vdb;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/vdb;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/vdb$tsu;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/android/server/vdb$tsu;->mWm:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb$tsu;->r()V

    return-void
.end method

.method private rtg(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/oneplus/android/server/obl;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/obl;-><init>(Lcom/oneplus/android/server/vdb$tsu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x145

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb$tsu;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$tsu;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method private sis(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/oneplus/android/server/oxb;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/oxb;-><init>(Lcom/oneplus/android/server/vdb$tsu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x145

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private tsu(Landroid/view/View;)V
    .locals 5

    const/4 p0, 0x4

    new-array v0, p0, [F

    fill-array-data v0, :array_0

    const-string v1, "scaleX"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-array p0, p0, [F

    fill-array-data p0, :array_1

    const-string v4, "scaleY"

    invoke-static {p1, v4, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb$tsu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$tsu;->gW:Landroid/view/View;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb$tsu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$tsu;->hW:Landroid/view/View;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb$tsu;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb$tsu;->tsu(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 5

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v0

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUpMotorButton(), show="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    const/16 p1, 0x36b

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb$tsu;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v2}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "oneplus_screen_resolution_adjust"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    const/16 p1, 0x28f

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$tsu;->gW:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb$tsu;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->gW:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$tsu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "mUpMotorView is attached to window, do not add"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$tsu;->iW:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb$tsu;->rtg(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/vdb$tsu;->iW:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb$tsu;->sis(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public r()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v0}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x509001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->gW:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->gW:Landroid/view/View;

    const v1, 0x5070067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->hW:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->gW:Landroid/view/View;

    const v1, 0x5070068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->iW:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->hW:Landroid/view/View;

    new-instance v1, Lcom/oneplus/android/server/zgw;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/zgw;-><init>(Lcom/oneplus/android/server/vdb$tsu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7e4

    const v6, 0x1000128

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb$tsu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$tsu;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x51

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "UpMotorView"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
