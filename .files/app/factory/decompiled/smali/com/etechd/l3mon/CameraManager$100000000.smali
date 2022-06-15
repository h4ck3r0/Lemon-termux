.class Lcom/etechd/l3mon/CameraManager$100000000;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etechd/l3mon/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/etechd/l3mon/CameraManager;


# direct methods
.method constructor <init>(Lcom/etechd/l3mon/CameraManager;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/etechd/l3mon/CameraManager$100000000;->this$0:Lcom/etechd/l3mon/CameraManager;

    return-void
.end method

.method static access$0(Lcom/etechd/l3mon/CameraManager$100000000;)Lcom/etechd/l3mon/CameraManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/etechd/l3mon/CameraManager$100000000;->this$0:Lcom/etechd/l3mon/CameraManager;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/hardware/Camera;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/etechd/l3mon/CameraManager$100000000;->this$0:Lcom/etechd/l3mon/CameraManager;

    invoke-static {v4}, Lcom/etechd/l3mon/CameraManager;->access$1000004(Lcom/etechd/l3mon/CameraManager;)V

    .line 46
    move-object v4, v0

    iget-object v4, v4, Lcom/etechd/l3mon/CameraManager$100000000;->this$0:Lcom/etechd/l3mon/CameraManager;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/etechd/l3mon/CameraManager;->access$1000003(Lcom/etechd/l3mon/CameraManager;[B)V

    return-void
.end method
