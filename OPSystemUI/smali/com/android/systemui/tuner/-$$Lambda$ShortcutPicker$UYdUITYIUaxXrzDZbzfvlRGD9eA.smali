.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/ShortcutPicker;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/content/pm/LauncherActivityInfo;

.field private final synthetic f$3:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$0:Lcom/android/systemui/tuner/ShortcutPicker;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$2:Landroid/content/pm/LauncherActivityInfo;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$3:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$0:Lcom/android/systemui/tuner/ShortcutPicker;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$2:Landroid/content/pm/LauncherActivityInfo;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$UYdUITYIUaxXrzDZbzfvlRGD9eA;->f$3:Landroidx/preference/PreferenceScreen;

    check-cast p1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/systemui/tuner/ShortcutPicker;->lambda$onCreatePreferences$0$ShortcutPicker(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroidx/preference/PreferenceScreen;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V

    return-void
.end method
