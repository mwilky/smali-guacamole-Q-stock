.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$xngHwpynxyZFSiQxF9iZw-c24-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$xngHwpynxyZFSiQxF9iZw-c24-s;->f$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$xngHwpynxyZFSiQxF9iZw-c24-s;->f$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p0

    return p0
.end method
