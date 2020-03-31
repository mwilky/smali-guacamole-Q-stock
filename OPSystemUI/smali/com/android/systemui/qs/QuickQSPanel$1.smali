.class Lcom/android/systemui/qs/QuickQSPanel$1;
.super Ljava/lang/Object;
.source "QuickQSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickQSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickQSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$1;->this$0:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanel$1;->this$0:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setMaxTiles(I)V

    return-void
.end method
