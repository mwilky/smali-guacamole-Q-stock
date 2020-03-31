.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;

    invoke-direct {v0}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$onTuningChanged$3(Ljava/util/Map$Entry;)V

    return-void
.end method
