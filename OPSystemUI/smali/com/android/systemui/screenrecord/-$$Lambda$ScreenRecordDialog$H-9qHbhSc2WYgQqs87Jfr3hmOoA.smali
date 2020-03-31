.class public final synthetic Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialog;

.field private final synthetic f$1:Landroid/widget/CheckBox;

.field private final synthetic f$2:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;->f$2:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;->f$1:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;->f$2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->lambda$onCreate$0$ScreenRecordDialog(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
