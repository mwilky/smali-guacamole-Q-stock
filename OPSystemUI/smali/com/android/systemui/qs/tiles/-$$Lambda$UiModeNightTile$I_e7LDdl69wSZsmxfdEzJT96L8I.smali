.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$UiModeNightTile$I_e7LDdl69wSZsmxfdEzJT96L8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UiModeNightTile$I_e7LDdl69wSZsmxfdEzJT96L8I;->f$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UiModeNightTile$I_e7LDdl69wSZsmxfdEzJT96L8I;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UiModeNightTile$I_e7LDdl69wSZsmxfdEzJT96L8I;->f$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UiModeNightTile$I_e7LDdl69wSZsmxfdEzJT96L8I;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->lambda$handleClick$0$UiModeNightTile(Z)V

    return-void
.end method
