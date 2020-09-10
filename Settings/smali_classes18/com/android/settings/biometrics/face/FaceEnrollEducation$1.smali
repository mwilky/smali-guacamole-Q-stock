.class Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;
.super Ljava/lang/Object;
.source "FaceEnrollEducation.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    if-eqz p2, :cond_0

    const v0, 0x7f1213a4

    goto :goto_0

    :cond_0
    const v0, 0x7f1213a3

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$000(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-virtual {v1, v0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->setTitle(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$200(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$300(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Lcom/google/android/setupdesign/view/IllustrationVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$200(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$300(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
