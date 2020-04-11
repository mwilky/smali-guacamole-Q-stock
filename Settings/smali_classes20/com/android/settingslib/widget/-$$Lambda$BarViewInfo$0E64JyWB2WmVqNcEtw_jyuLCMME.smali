.class public final synthetic Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;

    invoke-direct {v0}, Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;-><init>()V

    sput-object v0, Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settingslib/widget/BarViewInfo;

    invoke-static {p1}, Lcom/android/settingslib/widget/BarViewInfo;->lambda$compareTo$0(Lcom/android/settingslib/widget/BarViewInfo;)I

    move-result p1

    return p1
.end method
