.class Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;
.super Landroid/os/Handler;
.source "OPAutoAwesomeBatteryLottieAnimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;->access$000(Lcom/oneplus/settings/system/OPAutoAwesomeBatteryLottieAnimPreference;)V

    nop

    :goto_0
    return-void
.end method
