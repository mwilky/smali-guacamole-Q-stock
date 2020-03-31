.class public final synthetic Lcom/android/keyguard/clock/-$$Lambda$d3U4w-CuqsezzeLGogc1fLHnUj0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/plugins/ClockPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/-$$Lambda$d3U4w-CuqsezzeLGogc1fLHnUj0;->f$0:Lcom/android/systemui/plugins/ClockPlugin;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/clock/-$$Lambda$d3U4w-CuqsezzeLGogc1fLHnUj0;->f$0:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockPlugin;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
