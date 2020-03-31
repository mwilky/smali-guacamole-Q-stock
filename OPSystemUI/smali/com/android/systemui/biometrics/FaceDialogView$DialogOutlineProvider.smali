.class final Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "FaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FaceDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogOutlineProvider"
.end annotation


# instance fields
.field mY:F

.field final synthetic this$0:Lcom/android/systemui/biometrics/FaceDialogView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/biometrics/FaceDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/biometrics/FaceDialogView;Lcom/android/systemui/biometrics/FaceDialogView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    return-void
.end method


# virtual methods
.method calculateSmall()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FaceDialogView;->access$400(Lcom/android/systemui/biometrics/FaceDialogView;F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object v1, v1, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    float-to-int p0, v0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    return v1
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->mY:F

    float-to-int v2, p1

    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->this$0:Lcom/android/systemui/biometrics/FaceDialogView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->biometric_dialog_corner_size:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v1, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

.method setOutlineY(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->mY:F

    return-void
.end method
