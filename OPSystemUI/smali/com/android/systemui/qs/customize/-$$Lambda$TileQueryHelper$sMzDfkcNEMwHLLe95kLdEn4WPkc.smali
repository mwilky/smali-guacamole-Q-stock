.class public final synthetic Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;->f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;->f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$sMzDfkcNEMwHLLe95kLdEn4WPkc;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$addCurrentAndStockTiles$0$TileQueryHelper(Ljava/util/ArrayList;)V

    return-void
.end method
