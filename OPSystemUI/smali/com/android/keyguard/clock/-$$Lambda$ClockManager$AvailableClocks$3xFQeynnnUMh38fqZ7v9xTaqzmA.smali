.class public final synthetic Lcom/android/keyguard/clock/-$$Lambda$ClockManager$AvailableClocks$3xFQeynnnUMh38fqZ7v9xTaqzmA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field private final synthetic f$1:Lcom/android/systemui/plugins/ClockPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$AvailableClocks$3xFQeynnnUMh38fqZ7v9xTaqzmA;->f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    iput-object p2, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$AvailableClocks$3xFQeynnnUMh38fqZ7v9xTaqzmA;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$AvailableClocks$3xFQeynnnUMh38fqZ7v9xTaqzmA;->f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    iget-object p0, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$AvailableClocks$3xFQeynnnUMh38fqZ7v9xTaqzmA;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->lambda$addClockPlugin$0$ClockManager$AvailableClocks(Lcom/android/systemui/plugins/ClockPlugin;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
