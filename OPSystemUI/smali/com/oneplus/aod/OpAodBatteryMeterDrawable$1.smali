.class Lcom/oneplus/aod/OpAodBatteryMeterDrawable$1;
.super Ljava/lang/Object;
.source "OpAodBatteryMeterDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodBatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$1;->this$0:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$1;->this$0:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
