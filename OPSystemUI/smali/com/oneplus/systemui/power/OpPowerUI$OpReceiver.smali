.class public Lcom/oneplus/systemui/power/OpPowerUI$OpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/power/OpPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/power/OpPowerUI;


# direct methods
.method protected constructor <init>(Lcom/oneplus/systemui/power/OpPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/power/OpPowerUI$OpReceiver;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/IntentFilter;)V
    .locals 0

    const-string p0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
