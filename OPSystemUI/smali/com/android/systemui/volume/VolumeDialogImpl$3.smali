.class Lcom/android/systemui/volume/VolumeDialogImpl$3;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "volume_dialog_container, onTouch"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$400(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl;)I

    move-result p1

    :goto_0
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volume_dialog_container, width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    if-le v1, p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl;)I

    move-result v1

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    :cond_3
    return v0
.end method
