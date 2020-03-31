.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$6$Es5SN3-RKnhrBR7n3pYQ0OR57uE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$6$Es5SN3-RKnhrBR7n3pYQ0OR57uE;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$6$Es5SN3-RKnhrBR7n3pYQ0OR57uE;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->lambda$onCastDevicesChanged$0$AutoTileManager$6()V

    return-void
.end method
