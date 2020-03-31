.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$n71p2lA3I37oyoKRz8xFfo1UnRo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$n71p2lA3I37oyoKRz8xFfo1UnRo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$n71p2lA3I37oyoKRz8xFfo1UnRo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$getStatusBarWindowTouchListener$10$StatusBar(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
