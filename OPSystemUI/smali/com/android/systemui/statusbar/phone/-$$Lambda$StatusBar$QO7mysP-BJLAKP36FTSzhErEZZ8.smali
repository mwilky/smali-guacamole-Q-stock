.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;->f$1:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;->f$1:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$QO7mysP-BJLAKP36FTSzhErEZZ8;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$start$3$StatusBar(II)V

    return-void
.end method
