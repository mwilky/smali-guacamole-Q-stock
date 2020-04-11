.class Lcom/oneplus/settings/better/ColorPlateView$1;
.super Ljava/lang/Object;
.source "ColorPlateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/ColorPlateView;->setProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/ColorPlateView;

.field final synthetic val$xProgress:I

.field final synthetic val$yProgress:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/ColorPlateView;II)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView$1;->this$0:Lcom/oneplus/settings/better/ColorPlateView;

    iput p2, p0, Lcom/oneplus/settings/better/ColorPlateView$1;->val$xProgress:I

    iput p3, p0, Lcom/oneplus/settings/better/ColorPlateView$1;->val$yProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView$1;->this$0:Lcom/oneplus/settings/better/ColorPlateView;

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView$1;->val$xProgress:I

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView$1;->val$yProgress:I

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/better/ColorPlateView;->access$000(Lcom/oneplus/settings/better/ColorPlateView;II)V

    return-void
.end method
