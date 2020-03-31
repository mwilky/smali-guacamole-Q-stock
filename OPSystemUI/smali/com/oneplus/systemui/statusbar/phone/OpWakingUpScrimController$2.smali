.class Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$2;
.super Ljava/lang/Object;
.source "OpWakingUpScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
