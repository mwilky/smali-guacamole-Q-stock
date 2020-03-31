.class Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "OPDndCarModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/OPDndCarModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPDndCarModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/OPDndCarModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAR_MODE_STATUS  value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / observedChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPDndCarModeTile"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/OPDndCarModeTile;

    invoke-static {p2, p1}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->access$002(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;I)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/OPDndCarModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->access$100(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;)Z

    return-void
.end method
