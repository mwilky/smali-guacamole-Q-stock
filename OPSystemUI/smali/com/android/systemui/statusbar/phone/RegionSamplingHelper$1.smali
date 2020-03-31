.class Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;
.super Ljava/lang/Object;
.source "RegionSamplingHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->access$100(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->access$000(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->access$200(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    return-void
.end method
