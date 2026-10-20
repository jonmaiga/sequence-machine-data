import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021

/-!
# A050002: Numbers k such that A050000(k) < A050000(k+1).

The programs for A050002, there is no canonical definition to state claims against.
-/

/-! ## A050002.P16157976082416925276

`eq[char[A050003(n+1)], A000007(n)]`
-/

namespace A050002.P16157976082416925276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050003 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050002.P16157976082416925276

/-! ## A050002.P3227002255317283032

`eq[char[A050003(n+1)], A000038(n)]`
-/

namespace A050002.P3227002255317283032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050003 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050002.P3227002255317283032

/-! ## A050002.P9595539231375448525

`eq[char[A050003(n+1)], A036987(2*n)]`
-/

namespace A050002.P9595539231375448525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050003 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050002.P9595539231375448525

/-! ## A050002.P1297971393510658991

`record[n+1-A050000(n+2)%A050000(n+1)]`
-/

namespace A050002.P1297971393510658991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A050000 (n + 2)) (A050000 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050002.P1297971393510658991

/-! ## A050002.P5135993316413032535

`lt[A050000(A028310(n)), A050000(n+1)]`
-/

namespace A050002.P5135993316413032535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050002.P5135993316413032535

/-! ## A050002.P12704679509351449683

`lt[A050000(A000007(n)+n), A050000(n+1)]`
-/

namespace A050002.P12704679509351449683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050002.P12704679509351449683

/-!
# A050003: Numbers k such that A050000(k) > A050000(k+1).

The programs for A050003, there is no canonical definition to state claims against.
-/

/-! ## A050003.P2416116308074537366

`eq[char[A050002(n+1)], A000007(n)]`
-/

namespace A050003.P2416116308074537366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050003.P2416116308074537366

/-! ## A050003.P17632768898195539915

`eq[char[A050002(n+1)], A000038(n)]`
-/

namespace A050003.P17632768898195539915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050003.P17632768898195539915

/-! ## A050003.P12990397955889280519

`eq[char[A050002(n+1)], A130706(n)]`
-/

namespace A050003.P12990397955889280519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050003.P12990397955889280519

/-! ## A050003.P11202191024241983861

`lt[A050000(n+1), A050000(A028310(n))]`
-/

namespace A050003.P11202191024241983861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050003.P11202191024241983861

/-! ## A050003.P10809857048768166607

`lt[A050000(n+1), A050000(A000007(n)+n)]`
-/

namespace A050003.P10809857048768166607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050000 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050003.P10809857048768166607

/-! ## A050003.P1382155046973553567

`eq[char[A050002(n+1)], A198954(n²)]`
-/

namespace A050003.P1382155046973553567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050003.P1382155046973553567

/-!
# A050006: Numbers k such that A050004(k) < A050004(k+1).

The programs for A050006, there is no canonical definition to state claims against.
-/

/-! ## A050006.P17853010297064738901

`lt[n*char[A050007(n+1)], n]`
-/

namespace A050006.P17853010297064738901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050007 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050006.P17853010297064738901

/-! ## A050006.P751814124298416759

`eq[char[A050007(n+1)], A000007(n)]`
-/

namespace A050006.P751814124298416759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050007 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050006.P751814124298416759

/-! ## A050006.P5554170121478513328

`eq[char[A050007(n+1)], A000038(n)]`
-/

namespace A050006.P5554170121478513328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050007 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050006.P5554170121478513328

/-! ## A050006.P14620875963265009442

`lt[A050004(n+1), A050004(n+2)]+1`
-/

namespace A050006.P14620875963265009442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050006.P14620875963265009442

/-! ## A050006.P13200344756666923937

`lt[A050004(A028310(n)), A050004(n+1)]`
-/

namespace A050006.P13200344756666923937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050006.P13200344756666923937

/-! ## A050006.P17923424604197905422

`lt[char[A050007(n+1)], n/A000045(n+2)]`
-/

namespace A050006.P17923424604197905422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050007 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000045 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A050006.P17923424604197905422

/-! ## A050006.P5463158095703735858

`lt[char[A050007(n+1)], n/A049889(n+1)]`
-/

namespace A050006.P5463158095703735858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050007 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A049889 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A050006.P5463158095703735858

/-!
# A050007: Numbers k such that A050004(k) > A050004(k+1).

The programs for A050007, there is no canonical definition to state claims against.
-/

/-! ## A050007.P8067281094600243736

`eq[char[A050006(n+1)], A000007(n)]`
-/

namespace A050007.P8067281094600243736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050006 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050007.P8067281094600243736

/-! ## A050007.P6817008512836067250

`eq[char[A050006(n+1)], A000038(n)]`
-/

namespace A050007.P6817008512836067250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050006 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050007.P6817008512836067250

/-! ## A050007.P16143298841864097239

`eq[char[A050006(n+1)], A154955(n+1)]`
-/

namespace A050007.P16143298841864097239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050006 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050007.P16143298841864097239

/-! ## A050007.P2705945835919819616

`lt[A050004(n+2), A050004(n+1)]+1`
-/

namespace A050007.P2705945835919819616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050007.P2705945835919819616

/-! ## A050007.P6502532561787378077

`lt[A050004(n+1), A050004(A028310(n))]`
-/

namespace A050007.P6502532561787378077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050007.P6502532561787378077

/-! ## A050007.P10874337642049029329

`eq[char[A050006(n+1)], A151933(n)]`
-/

namespace A050007.P10874337642049029329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050006 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050007.P10874337642049029329

/-!
# A050010: Numbers k such that A050008(k) < A050008(k+1).

The programs for A050010, there is no canonical definition to state claims against.
-/

/-! ## A050010.P14834821555877592473

`eq[char[A050011(n+1)], A000007(n)]`
-/

namespace A050010.P14834821555877592473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050011 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050010.P14834821555877592473

/-! ## A050010.P10792610920896398146

`eq[char[A050011(n+1)], A000038(n)]`
-/

namespace A050010.P10792610920896398146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050011 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050010.P10792610920896398146

/-! ## A050010.P2338261232943202317

`eq[char[A050011(n+1)], A036987(2*n)]`
-/

namespace A050010.P2338261232943202317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050011 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050010.P2338261232943202317

/-! ## A050010.P4458389084014714019

`lt[A050008(A028310(n)), A050008(n+1)]`
-/

namespace A050010.P4458389084014714019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050010.P4458389084014714019

/-! ## A050010.P9273276746621757705

`lt[A050008(A000007(n)+n), A050008(n+1)]`
-/

namespace A050010.P9273276746621757705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050010.P9273276746621757705

/-! ## A050010.P15792095324492088139

`eq[char[A050011(n+1)], A088917(n²)]`
-/

namespace A050010.P15792095324492088139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050011 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050010.P15792095324492088139

/-!
# A050011: Numbers k such that A050008(k) > A050008(k+1).

The programs for A050011, there is no canonical definition to state claims against.
-/

/-! ## A050011.P8201434619402286364

`eq[char[A050010(n+1)], A000007(n)]`
-/

namespace A050011.P8201434619402286364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050011.P8201434619402286364

/-! ## A050011.P9355309468220192718

`eq[char[A050010(n+1)], A000038(n)]`
-/

namespace A050011.P9355309468220192718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050011.P9355309468220192718

/-! ## A050011.P16033456636458580716

`eq[1, A057427(n)+char[A050010(n+1)]]`
-/

namespace A050011.P16033456636458580716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050010 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050011.P16033456636458580716

/-! ## A050011.P17289074178831649887

`eq[char[A050010(n+1)], A154955(n+1)]`
-/

namespace A050011.P17289074178831649887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050011.P17289074178831649887

/-! ## A050011.P12795263176005214988

`eq[char[A050010(n+1)], A036987(2*n)]`
-/

namespace A050011.P12795263176005214988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050010 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050011.P12795263176005214988

/-! ## A050011.P13138181073907974517

`lt[A050008(n+1), A050008(A028310(n))]`
-/

namespace A050011.P13138181073907974517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050011.P13138181073907974517

/-! ## A050011.P12581872071409056519

`lt[A050008(n+1), A050008(A000007(n)+n)]`
-/

namespace A050011.P12581872071409056519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050008 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050011.P12581872071409056519

/-!
# A050014: Numbers k such that A050012(k) < A050012(k+1).

The programs for A050014, there is no canonical definition to state claims against.
-/

/-! ## A050014.P3819277845534186614

`eq[char[A050015(n+1)], A000007(n)]`
-/

namespace A050014.P3819277845534186614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050014.P3819277845534186614

/-! ## A050014.P7582981889486931650

`eq[char[A050015(n+1)], A000038(n)]`
-/

namespace A050014.P7582981889486931650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050014.P7582981889486931650

/-! ## A050014.P6664120753374893376

`eq[A071364(n+1)%2, char[A050015(n+1)]]`
-/

namespace A050014.P6664120753374893376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050015 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050014.P6664120753374893376

/-! ## A050014.P7791156279460833163

`eq[char[A050015(n+1)], A019590(n+2)]`
-/

namespace A050014.P7791156279460833163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050014.P7791156279460833163

/-! ## A050014.P1141443881787894383

`eq[char[A050015(n+1)], A049283(2*n+1)]`
-/

namespace A050014.P1141443881787894383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050014.P1141443881787894383

/-!
# A050015: Numbers k such that b(k) > b(k+1), where b=A050012.

The programs for A050015, there is no canonical definition to state claims against.
-/

/-! ## A050015.P14832724930497558757

`lt[n*char[A050014(n+1)], n]`
-/

namespace A050015.P14832724930497558757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050014 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050015.P14832724930497558757

/-! ## A050015.P13400736725577771282

`eq[char[A050014(n+1)], A000007(n)]`
-/

namespace A050015.P13400736725577771282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050014 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050015.P13400736725577771282

/-! ## A050015.P12946974934936202739

`eq[char[A050014(n+1)], A000038(n)]`
-/

namespace A050015.P12946974934936202739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050014 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050015.P12946974934936202739

/-! ## A050015.P10652691666456694946

`eq[A071364(n+1)%2, char[A050014(n+1)]]`
-/

namespace A050015.P10652691666456694946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050014 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050015.P10652691666456694946

/-! ## A050015.P17671849271425964622

`lt[char[A050014(n+1)], char[A038722(n+1)]]`
-/

namespace A050015.P17671849271425964622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050014 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050015.P17671849271425964622

/-! ## A050015.P16183492745276587651

`lt[char[A050014(n+1)], char[A134478(n)]]`
-/

namespace A050015.P16183492745276587651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050014 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050015.P16183492745276587651

/-!
# A050016: a(n) = floor(a(n-1)/2) if this is positive and not yet in the sequence, otherwise a(n) = 9*a(n-1).

The programs for A050016, there is no canonical definition to state claims against.
-/

/-! ## A050016.P3311788499268704127

`A037289(A321452(n)+A093896(n+1))`
-/

namespace A050016.P3311788499268704127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037289 (A321452 n + A093896 (n + 1)).toNat

end

end A050016.P3311788499268704127

/-! ## A050016.P13862210013840364303

`A037289(A214727(n)*A289816(2*n+3))`
-/

namespace A050016.P13862210013840364303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037289 (A214727 n * A289816 (2 * n + 3)).toNat

end

end A050016.P13862210013840364303

/-!
# A050018: Numbers k such that A050016(k) < A050016(k+1).

The programs for A050018, there is no canonical definition to state claims against.
-/

/-! ## A050018.P2275097495274845050

`lt[n*char[A050019(n+1)], n]`
-/

namespace A050018.P2275097495274845050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050019 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050018.P2275097495274845050

/-! ## A050018.P15846463253397238983

`eq[char[A050019(n+1)], A000007(n)]`
-/

namespace A050018.P15846463253397238983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050019 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050018.P15846463253397238983

/-! ## A050018.P4587988641124645547

`eq[char[A050019(n+1)], A000038(n)]`
-/

namespace A050018.P4587988641124645547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050019 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050018.P4587988641124645547

/-! ## A050018.P52468794152039589

`lt[A050016(n+1), A050016(n+2)]+1`
-/

namespace A050018.P52468794152039589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050018.P52468794152039589

/-! ## A050018.P445127560095358825

`lt[A050016(A028310(n)), A050016(n+1)]`
-/

namespace A050018.P445127560095358825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050018.P445127560095358825

/-!
# A050019: Numbers k such that A050016(k) > A050016(k+1).

The programs for A050019, there is no canonical definition to state claims against.
-/

/-! ## A050019.P6468530195145837293

`eq[char[A050018(n+1)], A000007(n)]`
-/

namespace A050019.P6468530195145837293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050018 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050019.P6468530195145837293

/-! ## A050019.P2050061659114342822

`eq[char[A050018(n+1)], A000038(n)]`
-/

namespace A050019.P2050061659114342822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050018 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050019.P2050061659114342822

/-! ## A050019.P16734075325901589991

`lt[A050016(n+2), A050016(n+1)]+1`
-/

namespace A050019.P16734075325901589991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050019.P16734075325901589991

/-! ## A050019.P18012468362021220878

`eq[A071364(n+1)%2, char[A050018(n+1)]]`
-/

namespace A050019.P18012468362021220878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050018 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050019.P18012468362021220878

/-! ## A050019.P9287884403909402723

`lt[A050016(n+1), A050016(A028310(n))]`
-/

namespace A050019.P9287884403909402723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050019.P9287884403909402723

/-! ## A050019.P1252635003136169089

`eq[char[A050018(n+1)], A157187(2*n)]`
-/

namespace A050019.P1252635003136169089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050018 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050019.P1252635003136169089

/-! ## A050019.P10204764582588742739

`eq[char[A050018(n+1)], A151933(n)]`
-/

namespace A050019.P10204764582588742739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050018 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050019.P10204764582588742739

/-!
# A050020: a(n) = floor(a(n-1)/2) if this is positive and not yet in the sequence, otherwise a(n) = 10*a(n-1).

The programs for A050020, there is no canonical definition to state claims against.
-/

/-! ## A050020.P8132028950693842202

`A018433(A335844(record[2-xor(1, -n)]))`
-/

namespace A050020.P8132028950693842202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018433 (A335844 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A050020.P8132028950693842202

/-!
# A050022: Numbers k such that A050020(k) < A050020(k+1).

The programs for A050022, there is no canonical definition to state claims against.
-/

/-! ## A050022.P17389685628192046204

`eq[char[A050023(n+1)], A000007(n)]`
-/

namespace A050022.P17389685628192046204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050023 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050022.P17389685628192046204

/-! ## A050022.P17609750432947858939

`eq[char[A050023(n+1)], A000038(n)]`
-/

namespace A050022.P17609750432947858939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050023 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050022.P17609750432947858939

/-! ## A050022.P8661320771380488506

`lt[A050020(n+1), A050020(n+2)]+1`
-/

namespace A050022.P8661320771380488506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050022.P8661320771380488506

/-! ## A050022.P3206044158854218841

`lt[A050020(A028310(n)), A050020(n+1)]`
-/

namespace A050022.P3206044158854218841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050020 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050022.P3206044158854218841

/-! ## A050022.P11857204669761848573

`eq[char[A050023(n+1)], A151933(n)]`
-/

namespace A050022.P11857204669761848573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050023 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050022.P11857204669761848573

/-!
# A050023: Numbers k such that A050020(k) > A050020(k+1).

The programs for A050023, there is no canonical definition to state claims against.
-/

/-! ## A050023.P13564613854410202896

`eq[char[A050022(n+1)], A000007(n)]`
-/

namespace A050023.P13564613854410202896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050023.P13564613854410202896

/-! ## A050023.P3207844407188245350

`eq[char[A050022(n+1)], A000038(n)]`
-/

namespace A050023.P3207844407188245350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050023.P3207844407188245350

/-! ## A050023.P14401949249889133585

`eq[char[A050022(n+1)], A169585(n)]`
-/

namespace A050023.P14401949249889133585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050023.P14401949249889133585

/-! ## A050023.P13726288394177696668

`eq[A071364(n+1)%2, char[A050022(n+1)]]`
-/

namespace A050023.P13726288394177696668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050022 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050023.P13726288394177696668

/-! ## A050023.P2579083528799548254

`lt[A050020(n+1), A050020(A028310(n))]`
-/

namespace A050023.P2579083528799548254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050020 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050023.P2579083528799548254

/-! ## A050023.P5785034802677530902

`eq[char[A050022(n+1)], A151933(n)]`
-/

namespace A050023.P5785034802677530902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050022 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050023.P5785034802677530902

/-!
# A050024: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the smallest integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A050024, there is no canonical definition to state claims against.
-/

/-! ## A050024.P15063487987169643089

`A050040(n+1)-char[1]`
-/

namespace A050024.P15063487987169643089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050024.P15063487987169643089

/-! ## A050024.P3572693437412874715

`A050040(A171526(n+1))`
-/

namespace A050024.P3572693437412874715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (A171526 (n + 1)).toNat

end

end A050024.P3572693437412874715

/-! ## A050024.P12558241964618282496

`A050040(A373565(n)+n)`
-/

namespace A050024.P12558241964618282496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (A373565 n + (n : ℤ)).toNat

end

end A050024.P12558241964618282496

/-! ## A050024.P5330051187196165651

`A050040(A063524(n)+1+n)`
-/

namespace A050024.P5330051187196165651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (A063524 n + 1 + (n : ℤ)).toNat

end

end A050024.P5330051187196165651

/-! ## A050024.P12641697800217038546

`A050056(A063524(n)+1+n)`
-/

namespace A050024.P12641697800217038546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (A063524 n + 1 + (n : ℤ)).toNat

end

end A050024.P12641697800217038546

/-! ## A050024.P15110417889336952368

`A050040(A159075(n)+1+n)`
-/

namespace A050024.P15110417889336952368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050024.P15110417889336952368

/-! ## A050024.P14265727520498589668

`A050056(A159075(n)+1+n)`
-/

namespace A050024.P14265727520498589668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050024.P14265727520498589668

/-! ## A050024.P7320237764628246666

`A050040(1-(A063524(n)-n))`
-/

namespace A050024.P7320237764628246666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050024.P7320237764628246666

/-! ## A050024.P17801847128681776431

`A050056(1-(A063524(n)-n))`
-/

namespace A050024.P17801847128681776431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050024.P17801847128681776431

/-! ## A050024.P16250083514213393493

`A050040(1-(A159075(n)-n))`
-/

namespace A050024.P16250083514213393493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (1 - (A159075 n - (n : ℤ))).toNat

end

end A050024.P16250083514213393493

/-! ## A050024.P14503141272482603697

`A050056(1-(A159075(n)-n))`
-/

namespace A050024.P14503141272482603697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (1 - (A159075 n - (n : ℤ))).toNat

end

end A050024.P14503141272482603697

/-! ## A050024.P14229591178054672469

`gcd(A050056(n+1), A130706(n))`
-/

namespace A050024.P14229591178054672469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050056 (n + 1)) (A130706 n)

end

end A050024.P14229591178054672469

/-! ## A050024.P13170744082931123968

`and(A050056(n+1), A260196(n))`
-/

namespace A050024.P13170744082931123968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050056 (n + 1)) (A260196 n)

end

end A050024.P13170744082931123968

/-! ## A050024.P17295131579230486994

`A050040(A033322(n+1)+1+n)`
-/

namespace A050024.P17295131579230486994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (A033322 (n + 1) + 1 + (n : ℤ)).toNat

end

end A050024.P17295131579230486994

/-! ## A050024.P12259965583572503863

`A050056(A033322(n+1)+1+n)`
-/

namespace A050024.P12259965583572503863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (A033322 (n + 1) + 1 + (n : ℤ)).toNat

end

end A050024.P12259965583572503863

/-! ## A050024.P13700468671785609352

`2*A050028(n+1)-A050032(n+1)`
-/

namespace A050024.P13700468671785609352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050028 (n + 1) - A050032 (n + 1)

end

end A050024.P13700468671785609352

/-! ## A050024.P10692953059794983585

`2*A050040(n+1)-A050056(n+1)`
-/

namespace A050024.P10692953059794983585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050040 (n + 1) - A050056 (n + 1)

end

end A050024.P10692953059794983585

/-! ## A050024.P11530193871895958733

`2*A050044(n+1)-A050064(n+1)`
-/

namespace A050024.P11530193871895958733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050044 (n + 1) - A050064 (n + 1)

end

end A050024.P11530193871895958733

/-! ## A050024.P9419981253754573086

`A050040(A050044(n+1)/A050028(n+1)+n)`
-/

namespace A050024.P9419981253754573086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (SequenceMachineLib.roundAway ((A050044 (n + 1) : ℚ) / (A050028 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050024.P9419981253754573086

/-! ## A050024.P10937113990903120540

`A050056(A050044(n+1)/A050028(n+1)+n)`
-/

namespace A050024.P10937113990903120540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (SequenceMachineLib.roundAway ((A050044 (n + 1) : ℚ) / (A050028 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050024.P10937113990903120540

/-!
# A050025: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A050025, there is no canonical definition to state claims against.
-/

/-! ## A050025.P5825538832667304938

`A050045(n+1)-A329474(n+1)`
-/

namespace A050025.P5825538832667304938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) - A329474 (n + 1)

end

end A050025.P5825538832667304938

/-! ## A050025.P14784298208548223716

`2*A050029(n+1)-A050033(n+1)`
-/

namespace A050025.P14784298208548223716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050029 (n + 1) - A050033 (n + 1)

end

end A050025.P14784298208548223716

/-! ## A050025.P7861794849439883780

`2*A050041(n+1)-A050057(n+1)`
-/

namespace A050025.P7861794849439883780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050041 (n + 1) - A050057 (n + 1)

end

end A050025.P7861794849439883780

/-! ## A050025.P766891587795997443

`2*A050045(n+1)-A050065(n+1)`
-/

namespace A050025.P766891587795997443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050065 (n + 1)

end

end A050025.P766891587795997443

/-! ## A050025.P16176252465012093910

`A050065(n+1)-2*A329474(n+1)`
-/

namespace A050025.P16176252465012093910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050065 (n + 1) - 2 * A329474 (n + 1)

end

end A050025.P16176252465012093910

/-! ## A050025.P4079123216650161157

`A050029(n+1)+A050041(n+1)-A050045(n+1)`
-/

namespace A050025.P4079123216650161157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050041 (n + 1) - A050045 (n + 1))

end

end A050025.P4079123216650161157

/-! ## A050025.P12769257960874372851

`A050029(n+1)+A050045(n+1)-A050049(n+1)`
-/

namespace A050025.P12769257960874372851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050045 (n + 1) - A050049 (n + 1))

end

end A050025.P12769257960874372851

/-! ## A050025.P4482708367511974374

`A050029(n+1)+A050049(n+1)-A050053(n+1)`
-/

namespace A050025.P4482708367511974374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050049 (n + 1) - A050053 (n + 1))

end

end A050025.P4482708367511974374

/-! ## A050025.P7912026228347518944

`A050033(n+1)+A050041(n+1)-A050049(n+1)`
-/

namespace A050025.P7912026228347518944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050041 (n + 1) - A050049 (n + 1))

end

end A050025.P7912026228347518944

/-! ## A050025.P3824062397214409331

`A050033(n+1)+A050045(n+1)-A050053(n+1)`
-/

namespace A050025.P3824062397214409331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050045 (n + 1) - A050053 (n + 1))

end

end A050025.P3824062397214409331

/-! ## A050025.P17663717494778371677

`A050037(n+1)+A050041(n+1)-A050053(n+1)`
-/

namespace A050025.P17663717494778371677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050041 (n + 1) - A050053 (n + 1))

end

end A050025.P17663717494778371677

/-! ## A050025.P11947217916591052196

`A050029(n+1)+A050065(n+1)-A050069(n+1)`
-/

namespace A050025.P11947217916591052196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050069 (n + 1))

end

end A050025.P11947217916591052196

/-! ## A050025.P5938086101559380597

`A050033(n+1)+A050057(n+1)-A050065(n+1)`
-/

namespace A050025.P5938086101559380597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050057 (n + 1) - A050065 (n + 1))

end

end A050025.P5938086101559380597

/-! ## A050025.P4743723999336385541

`A050041(n+1)+A050045(n+1)-A050061(n+1)`
-/

namespace A050025.P4743723999336385541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050045 (n + 1) - A050061 (n + 1))

end

end A050025.P4743723999336385541

/-! ## A050025.P6235460423867208004

`A050033(n+1)+A050061(n+1)-A050069(n+1)`
-/

namespace A050025.P6235460423867208004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050061 (n + 1) - A050069 (n + 1))

end

end A050025.P6235460423867208004

/-! ## A050025.P1316408575642286046

`A050037(n+1)+A050057(n+1)-A050069(n+1)`
-/

namespace A050025.P1316408575642286046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050057 (n + 1) - A050069 (n + 1))

end

end A050025.P1316408575642286046

/-! ## A050025.P16181206429117831904

`A050041(n+1)+A050049(n+1)-A050065(n+1)`
-/

namespace A050025.P16181206429117831904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050049 (n + 1) - A050065 (n + 1))

end

end A050025.P16181206429117831904

/-! ## A050025.P8856276834948070672

`A050041(n+1)+A050053(n+1)-A050069(n+1)`
-/

namespace A050025.P8856276834948070672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050053 (n + 1) - A050069 (n + 1))

end

end A050025.P8856276834948070672

/-! ## A050025.P4710979918173391498

`A050045(n+1)+A050049(n+1)-A050069(n+1)`
-/

namespace A050025.P4710979918173391498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050069 (n + 1))

end

end A050025.P4710979918173391498

/-!
# A050026: a(n) = a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A050026, there is no canonical definition to state claims against.
-/

/-! ## A050026.P8434170731297792501

`2*A050030(n+1)-A050034(n+1)`
-/

namespace A050026.P8434170731297792501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050030 (n + 1) - A050034 (n + 1)

end

end A050026.P8434170731297792501

/-! ## A050026.P16206276872945697252

`2*A050042(n+1)-A050058(n+1)`
-/

namespace A050026.P16206276872945697252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050042 (n + 1) - A050058 (n + 1)

end

end A050026.P16206276872945697252

/-! ## A050026.P3820703457257607334

`2*A050046(n+1)-A050066(n+1)`
-/

namespace A050026.P3820703457257607334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050066 (n + 1)

end

end A050026.P3820703457257607334

/-! ## A050026.P5070315755479843863

`A050030(n+1)+A050042(n+1)-A050046(n+1)`
-/

namespace A050026.P5070315755479843863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050042 (n + 1) - A050046 (n + 1))

end

end A050026.P5070315755479843863

/-! ## A050026.P16122976602042185819

`A050030(n+1)+A050046(n+1)-A050050(n+1)`
-/

namespace A050026.P16122976602042185819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050046 (n + 1) - A050050 (n + 1))

end

end A050026.P16122976602042185819

/-! ## A050026.P17476885976874850435

`A050034(n+1)+A050042(n+1)-A050050(n+1)`
-/

namespace A050026.P17476885976874850435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050042 (n + 1) - A050050 (n + 1))

end

end A050026.P17476885976874850435

/-! ## A050026.P11696046248541782311

`A050034(n+1)+A050046(n+1)-A050054(n+1)`
-/

namespace A050026.P11696046248541782311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050046 (n + 1) - A050054 (n + 1))

end

end A050026.P11696046248541782311

/-! ## A050026.P3415930943261344744

`A050038(n+1)+A050042(n+1)-A050054(n+1)`
-/

namespace A050026.P3415930943261344744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050042 (n + 1) - A050054 (n + 1))

end

end A050026.P3415930943261344744

/-! ## A050026.P3219684683022873641

`A050034(n+1)+A050058(n+1)-A050066(n+1)`
-/

namespace A050026.P3219684683022873641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050058 (n + 1) - A050066 (n + 1))

end

end A050026.P3219684683022873641

/-! ## A050026.P8487999146223809674

`A050042(n+1)+A050046(n+1)-A050062(n+1)`
-/

namespace A050026.P8487999146223809674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050046 (n + 1) - A050062 (n + 1))

end

end A050026.P8487999146223809674

/-! ## A050026.P2719550539908371007

`A050034(n+1)+A050062(n+1)-A050070(n+1)`
-/

namespace A050026.P2719550539908371007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050070 (n + 1))

end

end A050026.P2719550539908371007

/-! ## A050026.P3483335132188931461

`A050038(n+1)+A050058(n+1)-A050070(n+1)`
-/

namespace A050026.P3483335132188931461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050070 (n + 1))

end

end A050026.P3483335132188931461

/-! ## A050026.P7579556727434520078

`A050042(n+1)+A050050(n+1)-A050066(n+1)`
-/

namespace A050026.P7579556727434520078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050050 (n + 1) - A050066 (n + 1))

end

end A050026.P7579556727434520078

/-! ## A050026.P17956992595884987373

`A050042(n+1)+A050054(n+1)-A050070(n+1)`
-/

namespace A050026.P17956992595884987373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050070 (n + 1))

end

end A050026.P17956992595884987373

/-! ## A050026.P150047070562804479

`A050046(n+1)+A050050(n+1)-A050070(n+1)`
-/

namespace A050026.P150047070562804479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050070 (n + 1))

end

end A050026.P150047070562804479

/-!
# A050027: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A050027, there is no canonical definition to state claims against.
-/

/-! ## A050027.P6953480441483186564

`ceil(A050047(n+1)/2)`
-/

namespace A050027.P6953480441483186564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050047 (n + 1) : ℚ) / 2⌉

end

end A050027.P6953480441483186564

/-! ## A050027.P15916189044796053343

`ceil(A050067(n+1)/3)`
-/

namespace A050027.P15916189044796053343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050067 (n + 1) : ℚ) / 3⌉

end

end A050027.P15916189044796053343

/-! ## A050027.P12929086873956667176

`A050067(abs(1-n)+2)/3`
-/

namespace A050027.P12929086873956667176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050067 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 3

end

end A050027.P12929086873956667176

/-! ## A050027.P15487321770097999985

`A050047(A004277(n)+1-n)/2`
-/

namespace A050027.P15487321770097999985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050047 (A004277 n + (1 - (n : ℤ))).toNat : ℚ) / 2

end

end A050027.P15487321770097999985

/-! ## A050027.P2938020260741603384

`1/A122553(n)*A050067(n+1)`
-/

namespace A050027.P2938020260741603384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A122553 n : ℚ) * (A050067 (n + 1) : ℚ)

end

end A050027.P2938020260741603384

/-! ## A050027.P2605557377196032625

`gcd(A050047(n+1), A050067(n+1))`
-/

namespace A050027.P2605557377196032625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050047 (n + 1)) (A050067 (n + 1))

end

end A050027.P2605557377196032625

/-! ## A050027.P542909970268626067

`A050047(n+1)/gcd(2, A004277(n))`
-/

namespace A050027.P542909970268626067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050047 (n + 1) : ℚ) / (Int.gcd 2 (A004277 n) : ℚ)

end

end A050027.P542909970268626067

/-! ## A050027.P997560425132595598

`A050047(abs(n-1-A004277(n)))/2`
-/

namespace A050027.P997560425132595598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050047 |(n : ℤ) - 1 - A004277 n|.toNat : ℚ) / 2

end

end A050027.P997560425132595598

/-! ## A050027.P11689891606801483571

`2*A050031(n+1)-A050035(n+1)`
-/

namespace A050027.P11689891606801483571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050031 (n + 1) - A050035 (n + 1)

end

end A050027.P11689891606801483571

/-! ## A050027.P14384182691753280672

`2*A050043(n+1)-A050059(n+1)`
-/

namespace A050027.P14384182691753280672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050043 (n + 1) - A050059 (n + 1)

end

end A050027.P14384182691753280672

/-! ## A050027.P12437299232292172164

`A050047(char[(1-n)*A051037(n+1)]+n+1)/2`
-/

namespace A050027.P12437299232292172164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A051037 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050047 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + 1) : ℚ) / 2

end

end A050027.P12437299232292172164

/-! ## A050027.P17196641989534352280

`A050031(n+1)+A050043(n+1)-A050047(n+1)`
-/

namespace A050027.P17196641989534352280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050043 (n + 1) - A050047 (n + 1))

end

end A050027.P17196641989534352280

/-! ## A050027.P13931928925241513090

`A050031(n+1)+A050047(n+1)-A050051(n+1)`
-/

namespace A050027.P13931928925241513090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050047 (n + 1) - A050051 (n + 1))

end

end A050027.P13931928925241513090

/-! ## A050027.P16220402372726616751

`A050031(n+1)+A050051(n+1)-A050055(n+1)`
-/

namespace A050027.P16220402372726616751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050051 (n + 1) - A050055 (n + 1))

end

end A050027.P16220402372726616751

/-! ## A050027.P382222078275454265

`A050035(n+1)+A050043(n+1)-A050051(n+1)`
-/

namespace A050027.P382222078275454265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050043 (n + 1) - A050051 (n + 1))

end

end A050027.P382222078275454265

/-! ## A050027.P13519372256816875444

`A050035(n+1)+A050047(n+1)-A050055(n+1)`
-/

namespace A050027.P13519372256816875444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050047 (n + 1) - A050055 (n + 1))

end

end A050027.P13519372256816875444

/-! ## A050027.P14114359716166317893

`A050039(n+1)+A050043(n+1)-A050055(n+1)`
-/

namespace A050027.P14114359716166317893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050043 (n + 1) - A050055 (n + 1))

end

end A050027.P14114359716166317893

/-! ## A050027.P1689767654928457682

`A050031(n+1)+A050059(n+1)-A050063(n+1)`
-/

namespace A050027.P1689767654928457682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050059 (n + 1) - A050063 (n + 1))

end

end A050027.P1689767654928457682

/-! ## A050027.P14763802741733020835

`A050031(n+1)+A050067(n+1)-A050071(n+1)`
-/

namespace A050027.P14763802741733020835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050071 (n + 1))

end

end A050027.P14763802741733020835

/-!
# A050028: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A050028, there is no canonical definition to state claims against.
-/

/-! ## A050028.P1268614477618772703

`A050044(n+1)-char[1]`
-/

namespace A050028.P1268614477618772703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050028.P1268614477618772703

/-! ## A050028.P2484073505466434623

`A050044(A159075(n)+1+n)`
-/

namespace A050028.P2484073505466434623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050028.P2484073505466434623

/-! ## A050028.P9007084006628369587

`A050060(A159075(n)+1+n)`
-/

namespace A050028.P9007084006628369587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050028.P9007084006628369587

/-! ## A050028.P4428109915857529598

`A050044(1-A063524(n)+n)`
-/

namespace A050028.P4428109915857529598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (1 - A063524 n + (n : ℤ)).toNat

end

end A050028.P4428109915857529598

/-! ## A050028.P221938446230444041

`A050060(1-A063524(n)+n)`
-/

namespace A050028.P221938446230444041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (1 - A063524 n + (n : ℤ)).toNat

end

end A050028.P221938446230444041

/-! ## A050028.P14146924204253675299

`A050044(1-(A063524(n)-n))`
-/

namespace A050028.P14146924204253675299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050028.P14146924204253675299

/-! ## A050028.P2127872413767738025

`A050060(1-(A063524(n)-n))`
-/

namespace A050028.P2127872413767738025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050028.P2127872413767738025

/-! ## A050028.P6359502271405537530

`A050044(n+1)/A373565(n)`
-/

namespace A050028.P6359502271405537530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050044 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A050028.P6359502271405537530

/-! ## A050028.P948206375607232373

`gcd(A050060(n+1), A130706(n))`
-/

namespace A050028.P948206375607232373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050060 (n + 1)) (A130706 n)

end

end A050028.P948206375607232373

/-! ## A050028.P4628018434822393295

`gcd(A050044(n+1), A130779(n))`
-/

namespace A050028.P4628018434822393295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050044 (n + 1)) (A130779 n)

end

end A050028.P4628018434822393295

/-! ## A050028.P10326502128076091248

`and(A050060(n+1), A260196(n))`
-/

namespace A050028.P10326502128076091248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050060 (n + 1)) (A260196 n)

end

end A050028.P10326502128076091248

/-! ## A050028.P2020404480399220988

`(A050032(n+1)+A050024(n+1))/2`
-/

namespace A050028.P2020404480399220988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050032 (n + 1) + A050024 (n + 1) : ℚ) / 2

end

end A050028.P2020404480399220988

/-! ## A050028.P6964984328935482647

`2*A050032(n+1)-A050036(n+1)`
-/

namespace A050028.P6964984328935482647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050032 (n + 1) - A050036 (n + 1)

end

end A050028.P6964984328935482647

/-! ## A050028.P3443641604079640093

`2*A050044(n+1)-A050060(n+1)`
-/

namespace A050028.P3443641604079640093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050044 (n + 1) - A050060 (n + 1)

end

end A050028.P3443641604079640093

/-! ## A050028.P878113113021341519

`2*A050048(n+1)-A050068(n+1)`
-/

namespace A050028.P878113113021341519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050048 (n + 1) - A050068 (n + 1)

end

end A050028.P878113113021341519

/-! ## A050028.P4321886226165919837

`A050024(n+1)+A050036(n+1)-A050032(n+1)`
-/

namespace A050028.P4321886226165919837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050036 (n + 1) - A050032 (n + 1))

end

end A050028.P4321886226165919837

/-! ## A050028.P13315929635022684641

`A050024(n+1)+A050044(n+1)-A050040(n+1)`
-/

namespace A050028.P13315929635022684641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050044 (n + 1) - A050040 (n + 1))

end

end A050028.P13315929635022684641

/-! ## A050028.P8393110566670737643

`A050024(n+1)+A050048(n+1)-A050044(n+1)`
-/

namespace A050028.P8393110566670737643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050048 (n + 1) - A050044 (n + 1))

end

end A050028.P8393110566670737643

/-! ## A050028.P13251076700313610564

`A050032(n+1)+A050040(n+1)-A050044(n+1)`
-/

namespace A050028.P13251076700313610564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050040 (n + 1) - A050044 (n + 1))

end

end A050028.P13251076700313610564

/-! ## A050028.P1010218603028878964

`A050032(n+1)+A050044(n+1)-A050048(n+1)`
-/

namespace A050028.P1010218603028878964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050044 (n + 1) - A050048 (n + 1))

end

end A050028.P1010218603028878964

/-!
# A050029: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A050029, the canonical program `A050029.P9072155485838040689` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050029 has offset 1).

The definition of A050029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050029.P9072155485838040689

`a(2^ceil(log2(n))+2-(n+1)-1)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050029

/-- `a(2^ceil(log2(n))+2-(n+1)-1)+a(n-1)` -/
def P9072155485838040689.Spec : Prop :=
  ∀ n, (P9072155485838040689.a n : ℤ) = A050029 (n + 1)

theorem P9072155485838040689.correct : P9072155485838040689.Spec := by
  intro n
  simp only [A050029, Nat.add_sub_cancel]

end A050029

/-! ## A050029.P10804289439346664904

`A050049(n+1)-A329474(n+1)`
-/

namespace A050029.P10804289439346664904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) - A329474 (n + 1)

end

end A050029.P10804289439346664904

namespace A050029

/-- `A050049(n+1)-A329474(n+1)` -/
def P10804289439346664904.Spec : Prop :=
  ∀ n, P10804289439346664904.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P17561277354739928708

`(A050033(n+1)+A050025(n+1))/2`
-/

namespace A050029.P17561277354739928708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050033 (n + 1) + A050025 (n + 1) : ℚ) / 2

end

end A050029.P17561277354739928708

namespace A050029

/-- `(A050033(n+1)+A050025(n+1))/2` -/
def P17561277354739928708.Spec : Prop :=
  ∀ n, P17561277354739928708.a n = (A050029 (n + 1) : ℚ)

end A050029

/-! ## A050029.P12322302811240308586

`2*A050033(n+1)-A050037(n+1)`
-/

namespace A050029.P12322302811240308586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050033 (n + 1) - A050037 (n + 1)

end

end A050029.P12322302811240308586

namespace A050029

/-- `2*A050033(n+1)-A050037(n+1)` -/
def P12322302811240308586.Spec : Prop :=
  ∀ n, P12322302811240308586.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P7107648225552089276

`2*A050045(n+1)-A050061(n+1)`
-/

namespace A050029.P7107648225552089276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050061 (n + 1)

end

end A050029.P7107648225552089276

namespace A050029

/-- `2*A050045(n+1)-A050061(n+1)` -/
def P7107648225552089276.Spec : Prop :=
  ∀ n, P7107648225552089276.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P17325746767939333511

`2*A050049(n+1)-A050069(n+1)`
-/

namespace A050029.P17325746767939333511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050069 (n + 1)

end

end A050029.P17325746767939333511

namespace A050029

/-- `2*A050049(n+1)-A050069(n+1)` -/
def P17325746767939333511.Spec : Prop :=
  ∀ n, P17325746767939333511.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P255755973835561906

`A050069(n+1)-2*A329474(n+1)`
-/

namespace A050029.P255755973835561906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050069 (n + 1) - 2 * A329474 (n + 1)

end

end A050029.P255755973835561906

namespace A050029

/-- `A050069(n+1)-2*A329474(n+1)` -/
def P255755973835561906.Spec : Prop :=
  ∀ n, P255755973835561906.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P4294295437475934551

`A050025(n+1)+A050037(n+1)-A050033(n+1)`
-/

namespace A050029.P4294295437475934551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050037 (n + 1) - A050033 (n + 1))

end

end A050029.P4294295437475934551

namespace A050029

/-- `A050025(n+1)+A050037(n+1)-A050033(n+1)` -/
def P4294295437475934551.Spec : Prop :=
  ∀ n, P4294295437475934551.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P15204124629201912681

`A050025(n+1)+A050045(n+1)-A050041(n+1)`
-/

namespace A050029.P15204124629201912681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050045 (n + 1) - A050041 (n + 1))

end

end A050029.P15204124629201912681

namespace A050029

/-- `A050025(n+1)+A050045(n+1)-A050041(n+1)` -/
def P15204124629201912681.Spec : Prop :=
  ∀ n, P15204124629201912681.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P7230968412747578335

`A050025(n+1)+A050049(n+1)-A050045(n+1)`
-/

namespace A050029.P7230968412747578335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050049 (n + 1) - A050045 (n + 1))

end

end A050029.P7230968412747578335

namespace A050029

/-- `A050025(n+1)+A050049(n+1)-A050045(n+1)` -/
def P7230968412747578335.Spec : Prop :=
  ∀ n, P7230968412747578335.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P7240959191177101837

`A050025(n+1)+A050053(n+1)-A050049(n+1)`
-/

namespace A050029.P7240959191177101837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050053 (n + 1) - A050049 (n + 1))

end

end A050029.P7240959191177101837

namespace A050029

/-- `A050025(n+1)+A050053(n+1)-A050049(n+1)` -/
def P7240959191177101837.Spec : Prop :=
  ∀ n, P7240959191177101837.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P12418291724396186375

`A050033(n+1)+A050041(n+1)-A050045(n+1)`
-/

namespace A050029.P12418291724396186375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050041 (n + 1) - A050045 (n + 1))

end

end A050029.P12418291724396186375

namespace A050029

/-- `A050033(n+1)+A050041(n+1)-A050045(n+1)` -/
def P12418291724396186375.Spec : Prop :=
  ∀ n, P12418291724396186375.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P2248236815651953499

`A050033(n+1)+A050045(n+1)-A050049(n+1)`
-/

namespace A050029.P2248236815651953499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050045 (n + 1) - A050049 (n + 1))

end

end A050029.P2248236815651953499

namespace A050029

/-- `A050033(n+1)+A050045(n+1)-A050049(n+1)` -/
def P2248236815651953499.Spec : Prop :=
  ∀ n, P2248236815651953499.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P11035650874443518068

`A050033(n+1)+A050049(n+1)-A050053(n+1)`
-/

namespace A050029.P11035650874443518068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050049 (n + 1) - A050053 (n + 1))

end

end A050029.P11035650874443518068

namespace A050029

/-- `A050033(n+1)+A050049(n+1)-A050053(n+1)` -/
def P11035650874443518068.Spec : Prop :=
  ∀ n, P11035650874443518068.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P16046141058486737492

`A050037(n+1)+A050041(n+1)-A050049(n+1)`
-/

namespace A050029.P16046141058486737492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050041 (n + 1) - A050049 (n + 1))

end

end A050029.P16046141058486737492

namespace A050029

/-- `A050037(n+1)+A050041(n+1)-A050049(n+1)` -/
def P16046141058486737492.Spec : Prop :=
  ∀ n, P16046141058486737492.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P2548990866344173594

`A050037(n+1)+A050045(n+1)-A050053(n+1)`
-/

namespace A050029.P2548990866344173594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050045 (n + 1) - A050053 (n + 1))

end

end A050029.P2548990866344173594

namespace A050029

/-- `A050037(n+1)+A050045(n+1)-A050053(n+1)` -/
def P2548990866344173594.Spec : Prop :=
  ∀ n, P2548990866344173594.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P2458565599189845657

`A050041(n+1)+A050045(n+1)-A050057(n+1)`
-/

namespace A050029.P2458565599189845657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050045 (n + 1) - A050057 (n + 1))

end

end A050029.P2458565599189845657

namespace A050029

/-- `A050041(n+1)+A050045(n+1)-A050057(n+1)` -/
def P2458565599189845657.Spec : Prop :=
  ∀ n, P2458565599189845657.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P13577054474987205763

`A050041(n+1)+A050049(n+1)-A050061(n+1)`
-/

namespace A050029.P13577054474987205763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050049 (n + 1) - A050061 (n + 1))

end

end A050029.P13577054474987205763

namespace A050029

/-- `A050041(n+1)+A050049(n+1)-A050061(n+1)` -/
def P13577054474987205763.Spec : Prop :=
  ∀ n, P13577054474987205763.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P2243375676730050630

`A050033(n+1)+A050065(n+1)-A050069(n+1)`
-/

namespace A050029.P2243375676730050630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050065 (n + 1) - A050069 (n + 1))

end

end A050029.P2243375676730050630

namespace A050029

/-- `A050033(n+1)+A050065(n+1)-A050069(n+1)` -/
def P2243375676730050630.Spec : Prop :=
  ∀ n, P2243375676730050630.a n = A050029 (n + 1)

end A050029

/-! ## A050029.P15328605559190428419

`A050037(n+1)+A050061(n+1)-A050069(n+1)`
-/

namespace A050029.P15328605559190428419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050061 (n + 1) - A050069 (n + 1))

end

end A050029.P15328605559190428419

namespace A050029

/-- `A050037(n+1)+A050061(n+1)-A050069(n+1)` -/
def P15328605559190428419.Spec : Prop :=
  ∀ n, P15328605559190428419.a n = A050029 (n + 1)

end A050029

/-!
# A050030: a(n) = a(n-1) + a(m) for n >= 3, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1.

The programs for A050030, there is no canonical definition to state claims against.
-/

/-! ## A050030.P11800125597049785228

`(A050034(n+1)+A050026(n+1))/2`
-/

namespace A050030.P11800125597049785228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050034 (n + 1) + A050026 (n + 1) : ℚ) / 2

end

end A050030.P11800125597049785228

/-! ## A050030.P12193315219231988146

`2*A050034(n+1)-A050038(n+1)`
-/

namespace A050030.P12193315219231988146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050034 (n + 1) - A050038 (n + 1)

end

end A050030.P12193315219231988146

/-! ## A050030.P8417357481853795785

`2*A050046(n+1)-A050062(n+1)`
-/

namespace A050030.P8417357481853795785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050062 (n + 1)

end

end A050030.P8417357481853795785

/-! ## A050030.P10432845329495876522

`2*A050050(n+1)-A050070(n+1)`
-/

namespace A050030.P10432845329495876522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050070 (n + 1)

end

end A050030.P10432845329495876522

/-! ## A050030.P3546896939297661788

`A050026(n+1)+A050038(n+1)-A050034(n+1)`
-/

namespace A050030.P3546896939297661788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050038 (n + 1) - A050034 (n + 1))

end

end A050030.P3546896939297661788

/-! ## A050030.P12043160819618297065

`A050026(n+1)+A050046(n+1)-A050042(n+1)`
-/

namespace A050030.P12043160819618297065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050046 (n + 1) - A050042 (n + 1))

end

end A050030.P12043160819618297065

/-! ## A050030.P1053887440431655264

`A050026(n+1)+A050050(n+1)-A050046(n+1)`
-/

namespace A050030.P1053887440431655264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050050 (n + 1) - A050046 (n + 1))

end

end A050030.P1053887440431655264

/-! ## A050030.P11185049126652323062

`A050026(n+1)+A050054(n+1)-A050050(n+1)`
-/

namespace A050030.P11185049126652323062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050054 (n + 1) - A050050 (n + 1))

end

end A050030.P11185049126652323062

/-! ## A050030.P1970194500084257983

`A050034(n+1)+A050042(n+1)-A050046(n+1)`
-/

namespace A050030.P1970194500084257983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050042 (n + 1) - A050046 (n + 1))

end

end A050030.P1970194500084257983

/-! ## A050030.P10020478139733732132

`A050034(n+1)+A050046(n+1)-A050050(n+1)`
-/

namespace A050030.P10020478139733732132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050046 (n + 1) - A050050 (n + 1))

end

end A050030.P10020478139733732132

/-! ## A050030.P2277285732270233309

`A050026(n+1)+A050062(n+1)-A050058(n+1)`
-/

namespace A050030.P2277285732270233309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050062 (n + 1) - A050058 (n + 1))

end

end A050030.P2277285732270233309

/-! ## A050030.P14027964813072144289

`A050034(n+1)+A050050(n+1)-A050054(n+1)`
-/

namespace A050030.P14027964813072144289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050050 (n + 1) - A050054 (n + 1))

end

end A050030.P14027964813072144289

/-! ## A050030.P10266469902926461739

`A050038(n+1)+A050042(n+1)-A050050(n+1)`
-/

namespace A050030.P10266469902926461739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050042 (n + 1) - A050050 (n + 1))

end

end A050030.P10266469902926461739

/-! ## A050030.P6019686637529813507

`A050038(n+1)+A050046(n+1)-A050054(n+1)`
-/

namespace A050030.P6019686637529813507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050046 (n + 1) - A050054 (n + 1))

end

end A050030.P6019686637529813507

/-! ## A050030.P5385238788993803919

`A050034(n+1)+A050058(n+1)-A050062(n+1)`
-/

namespace A050030.P5385238788993803919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050058 (n + 1) - A050062 (n + 1))

end

end A050030.P5385238788993803919

/-! ## A050030.P14950497565444071582

`A050042(n+1)+A050046(n+1)-A050058(n+1)`
-/

namespace A050030.P14950497565444071582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050046 (n + 1) - A050058 (n + 1))

end

end A050030.P14950497565444071582

/-! ## A050030.P8150870702554647876

`A050034(n+1)+A050062(n+1)-A050066(n+1)`
-/

namespace A050030.P8150870702554647876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050066 (n + 1))

end

end A050030.P8150870702554647876

/-! ## A050030.P5081237849986723099

`A050038(n+1)+A050058(n+1)-A050066(n+1)`
-/

namespace A050030.P5081237849986723099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050066 (n + 1))

end

end A050030.P5081237849986723099

/-! ## A050030.P15664454460278994918

`A050042(n+1)+A050050(n+1)-A050062(n+1)`
-/

namespace A050030.P15664454460278994918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050050 (n + 1) - A050062 (n + 1))

end

end A050030.P15664454460278994918

/-! ## A050030.P15586821456015286498

`A050038(n+1)+A050062(n+1)-A050070(n+1)`
-/

namespace A050030.P15586821456015286498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050062 (n + 1) - A050070 (n + 1))

end

end A050030.P15586821456015286498

/-!
# A050031: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A050031, there is no canonical definition to state claims against.
-/

/-! ## A050031.P13886953103790523374

`ceil(A050055(n+1)/2)`
-/

namespace A050031.P13886953103790523374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050055 (n + 1) : ℚ) / 2⌉

end

end A050031.P13886953103790523374

/-! ## A050031.P15724593383642827913

`(A050035(n+1)+A050027(n+1))/2`
-/

namespace A050031.P15724593383642827913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050035 (n + 1) + A050027 (n + 1) : ℚ) / 2

end

end A050031.P15724593383642827913

/-! ## A050031.P4572996508741389276

`2*A050035(n+1)-A050039(n+1)`
-/

namespace A050031.P4572996508741389276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050035 (n + 1) - A050039 (n + 1)

end

end A050031.P4572996508741389276

/-! ## A050031.P10177209089318981268

`2*A050047(n+1)-A050063(n+1)`
-/

namespace A050031.P10177209089318981268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050047 (n + 1) - A050063 (n + 1)

end

end A050031.P10177209089318981268

/-! ## A050031.P8660647794860764370

`2*A050051(n+1)-A050071(n+1)`
-/

namespace A050031.P8660647794860764370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050071 (n + 1)

end

end A050031.P8660647794860764370

/-! ## A050031.P18255881652099937154

`A050027(n+1)+A050039(n+1)-A050035(n+1)`
-/

namespace A050031.P18255881652099937154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050039 (n + 1) - A050035 (n + 1))

end

end A050031.P18255881652099937154

/-! ## A050031.P16622367035034173091

`A050027(n+1)+A050047(n+1)-A050043(n+1)`
-/

namespace A050031.P16622367035034173091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050047 (n + 1) - A050043 (n + 1))

end

end A050031.P16622367035034173091

/-! ## A050031.P12686440685144373778

`A050027(n+1)+A050051(n+1)-A050047(n+1)`
-/

namespace A050031.P12686440685144373778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050051 (n + 1) - A050047 (n + 1))

end

end A050031.P12686440685144373778

/-! ## A050031.P7010144063173789584

`A050035(n+1)+A050043(n+1)-A050047(n+1)`
-/

namespace A050031.P7010144063173789584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050043 (n + 1) - A050047 (n + 1))

end

end A050031.P7010144063173789584

/-! ## A050031.P11225890303831572713

`A050035(n+1)+A050047(n+1)-A050051(n+1)`
-/

namespace A050031.P11225890303831572713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050047 (n + 1) - A050051 (n + 1))

end

end A050031.P11225890303831572713

/-! ## A050031.P17740207719514431164

`A050035(n+1)+A050051(n+1)-A050055(n+1)`
-/

namespace A050031.P17740207719514431164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050051 (n + 1) - A050055 (n + 1))

end

end A050031.P17740207719514431164

/-! ## A050031.P3827329082020217672

`A050039(n+1)+A050043(n+1)-A050051(n+1)`
-/

namespace A050031.P3827329082020217672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050043 (n + 1) - A050051 (n + 1))

end

end A050031.P3827329082020217672

/-! ## A050031.P14696981322473161576

`A050039(n+1)+A050047(n+1)-A050055(n+1)`
-/

namespace A050031.P14696981322473161576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050047 (n + 1) - A050055 (n + 1))

end

end A050031.P14696981322473161576

/-! ## A050031.P13216872386498691894

`A050035(n+1)+A050059(n+1)-A050063(n+1)`
-/

namespace A050031.P13216872386498691894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050059 (n + 1) - A050063 (n + 1))

end

end A050031.P13216872386498691894

/-! ## A050031.P14224272758803076973

`A050043(n+1)+A050047(n+1)-A050059(n+1)`
-/

namespace A050031.P14224272758803076973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050047 (n + 1) - A050059 (n + 1))

end

end A050031.P14224272758803076973

/-! ## A050031.P1077765994533644522

`A050043(n+1)+A050051(n+1)-A050063(n+1)`
-/

namespace A050031.P1077765994533644522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050051 (n + 1) - A050063 (n + 1))

end

end A050031.P1077765994533644522

/-! ## A050031.P17368589738313283802

`A050035(n+1)+A050067(n+1)-A050071(n+1)`
-/

namespace A050031.P17368589738313283802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050067 (n + 1) - A050071 (n + 1))

end

end A050031.P17368589738313283802

/-! ## A050031.P3894490996569029567

`A050039(n+1)+A050063(n+1)-A050071(n+1)`
-/

namespace A050031.P3894490996569029567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050063 (n + 1) - A050071 (n + 1))

end

end A050031.P3894490996569029567

/-! ## A050031.P12090916427380617842

`A050047(n+1)+A050051(n+1)-A050067(n+1)`
-/

namespace A050031.P12090916427380617842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050067 (n + 1))

end

end A050031.P12090916427380617842

/-!
# A050032: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique value such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A050032, there is no canonical definition to state claims against.
-/

/-! ## A050032.P12170466613382477590

`A050048(n+1)-char[1]`
-/

namespace A050032.P12170466613382477590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050032.P12170466613382477590

/-! ## A050032.P9404622253926137181

`A050048(A159075(n)+1+n)`
-/

namespace A050032.P9404622253926137181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050032.P9404622253926137181

/-! ## A050032.P6130042024616227683

`A050064(A159075(n)+1+n)`
-/

namespace A050032.P6130042024616227683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050064 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050032.P6130042024616227683

/-! ## A050032.P5957393532947700250

`A050048(1-A063524(n)+n)`
-/

namespace A050032.P5957393532947700250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (1 - A063524 n + (n : ℤ)).toNat

end

end A050032.P5957393532947700250

/-! ## A050032.P6573507746774569886

`A050064(1-A063524(n)+n)`
-/

namespace A050032.P6573507746774569886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050064 (1 - A063524 n + (n : ℤ)).toNat

end

end A050032.P6573507746774569886

/-! ## A050032.P12382345314292050756

`A050048(1-(A063524(n)-n))`
-/

namespace A050032.P12382345314292050756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050032.P12382345314292050756

/-! ## A050032.P4308620737776747666

`A050064(1-(A063524(n)-n))`
-/

namespace A050032.P4308620737776747666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050064 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050032.P4308620737776747666

/-! ## A050032.P17940314568304300454

`A050048(n+1)/A373565(n)`
-/

namespace A050032.P17940314568304300454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050048 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A050032.P17940314568304300454

/-! ## A050032.P10393110320113899386

`gcd(A050064(n+1), A130706(n))`
-/

namespace A050032.P10393110320113899386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050064 (n + 1)) (A130706 n)

end

end A050032.P10393110320113899386

/-! ## A050032.P15415843229005758731

`gcd(A050048(n+1), A169585(n))`
-/

namespace A050032.P15415843229005758731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050048 (n + 1)) (A169585 n)

end

end A050032.P15415843229005758731

/-! ## A050032.P6753068085321071081

`and(A050064(n+1), A260196(n))`
-/

namespace A050032.P6753068085321071081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050064 (n + 1)) (A260196 n)

end

end A050032.P6753068085321071081

/-! ## A050032.P14016529035647141025

`A050048(n+1)/(A063524(n)+1)`
-/

namespace A050032.P14016529035647141025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050048 (n + 1) : ℚ) / (A063524 n + 1 : ℚ)

end

end A050032.P14016529035647141025

/-! ## A050032.P16099822162791693246

`2*A050028(n+1)-A050024(n+1)`
-/

namespace A050032.P16099822162791693246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050028 (n + 1) - A050024 (n + 1)

end

end A050032.P16099822162791693246

/-! ## A050032.P11257688291582130906

`(A050036(n+1)+A050028(n+1))/2`
-/

namespace A050032.P11257688291582130906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050036 (n + 1) + A050028 (n + 1) : ℚ) / 2

end

end A050032.P11257688291582130906

/-! ## A050032.P886623059670696293

`2*A050044(n+1)-A050056(n+1)`
-/

namespace A050032.P886623059670696293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050044 (n + 1) - A050056 (n + 1)

end

end A050032.P886623059670696293

/-! ## A050032.P166402266386104463

`2*A050048(n+1)-A050064(n+1)`
-/

namespace A050032.P166402266386104463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050048 (n + 1) - A050064 (n + 1)

end

end A050032.P166402266386104463

/-! ## A050032.P17304003409601424461

`A050024(n+1)+A050048(n+1)-A050040(n+1)`
-/

namespace A050032.P17304003409601424461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050048 (n + 1) - A050040 (n + 1))

end

end A050032.P17304003409601424461

/-! ## A050032.P7721897650026439113

`A050024(n+1)+A050052(n+1)-A050044(n+1)`
-/

namespace A050032.P7721897650026439113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050052 (n + 1) - A050044 (n + 1))

end

end A050032.P7721897650026439113

/-! ## A050032.P9087610242414662152

`A050028(n+1)+A050044(n+1)-A050040(n+1)`
-/

namespace A050032.P9087610242414662152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050044 (n + 1) - A050040 (n + 1))

end

end A050032.P9087610242414662152

/-! ## A050032.P11905696257370223884

`A050028(n+1)+A050048(n+1)-A050044(n+1)`
-/

namespace A050032.P11905696257370223884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050048 (n + 1) - A050044 (n + 1))

end

end A050032.P11905696257370223884

/-!
# A050033: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A050033, there is no canonical definition to state claims against.
-/

/-! ## A050033.P18115227387654342513

`A050053(n+1)-A329474(n+1)`
-/

namespace A050033.P18115227387654342513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050053 (n + 1) - A329474 (n + 1)

end

end A050033.P18115227387654342513

/-! ## A050033.P12975393136752985686

`2*A050029(n+1)-A050025(n+1)`
-/

namespace A050033.P12975393136752985686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050029 (n + 1) - A050025 (n + 1)

end

end A050033.P12975393136752985686

/-! ## A050033.P3527957755471815496

`(A050037(n+1)+A050029(n+1))/2`
-/

namespace A050033.P3527957755471815496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050037 (n + 1) + A050029 (n + 1) : ℚ) / 2

end

end A050033.P3527957755471815496

/-! ## A050033.P15351587803601372795

`2*A050045(n+1)-A050057(n+1)`
-/

namespace A050033.P15351587803601372795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050057 (n + 1)

end

end A050033.P15351587803601372795

/-! ## A050033.P10639964845292328626

`2*A050049(n+1)-A050065(n+1)`
-/

namespace A050033.P10639964845292328626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050065 (n + 1)

end

end A050033.P10639964845292328626

/-! ## A050033.P8700299132489262900

`A050025(n+1)+A050049(n+1)-A050041(n+1)`
-/

namespace A050033.P8700299132489262900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050049 (n + 1) - A050041 (n + 1))

end

end A050033.P8700299132489262900

/-! ## A050033.P3393152533108648004

`A050025(n+1)+A050053(n+1)-A050045(n+1)`
-/

namespace A050033.P3393152533108648004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050053 (n + 1) - A050045 (n + 1))

end

end A050033.P3393152533108648004

/-! ## A050033.P5853211618859391113

`A050029(n+1)+A050045(n+1)-A050041(n+1)`
-/

namespace A050033.P5853211618859391113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050045 (n + 1) - A050041 (n + 1))

end

end A050033.P5853211618859391113

/-! ## A050033.P726046089673503575

`A050029(n+1)+A050049(n+1)-A050045(n+1)`
-/

namespace A050033.P726046089673503575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050049 (n + 1) - A050045 (n + 1))

end

end A050033.P726046089673503575

/-! ## A050033.P9972251533863286855

`A050029(n+1)+A050053(n+1)-A050049(n+1)`
-/

namespace A050033.P9972251533863286855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050053 (n + 1) - A050049 (n + 1))

end

end A050033.P9972251533863286855

/-! ## A050033.P8121110166587501955

`A050037(n+1)+A050041(n+1)-A050045(n+1)`
-/

namespace A050033.P8121110166587501955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050041 (n + 1) - A050045 (n + 1))

end

end A050033.P8121110166587501955

/-! ## A050033.P14555512831864795047

`A050037(n+1)+A050045(n+1)-A050049(n+1)`
-/

namespace A050033.P14555512831864795047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050045 (n + 1) - A050049 (n + 1))

end

end A050033.P14555512831864795047

/-! ## A050033.P11345372274144304998

`A050025(n+1)+A050065(n+1)-A050057(n+1)`
-/

namespace A050033.P11345372274144304998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050065 (n + 1) - A050057 (n + 1))

end

end A050033.P11345372274144304998

/-! ## A050033.P2733673641531005357

`A050037(n+1)+A050049(n+1)-A050053(n+1)`
-/

namespace A050033.P2733673641531005357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050049 (n + 1) - A050053 (n + 1))

end

end A050033.P2733673641531005357

/-! ## A050033.P10502440731115380279

`A050025(n+1)+A050069(n+1)-A050061(n+1)`
-/

namespace A050033.P10502440731115380279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050061 (n + 1))

end

end A050033.P10502440731115380279

/-! ## A050033.P8847344568779201517

`A050041(n+1)+A050049(n+1)-A050057(n+1)`
-/

namespace A050033.P8847344568779201517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050049 (n + 1) - A050057 (n + 1))

end

end A050033.P8847344568779201517

/-! ## A050033.P9138190332050907080

`A050029(n+1)+A050069(n+1)-A050065(n+1)`
-/

namespace A050033.P9138190332050907080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050069 (n + 1) - A050065 (n + 1))

end

end A050033.P9138190332050907080

/-! ## A050033.P6841012798356783025

`A050041(n+1)+A050053(n+1)-A050061(n+1)`
-/

namespace A050033.P6841012798356783025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050053 (n + 1) - A050061 (n + 1))

end

end A050033.P6841012798356783025

/-! ## A050033.P15729710889928078845

`A050045(n+1)+A050049(n+1)-A050061(n+1)`
-/

namespace A050033.P15729710889928078845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050061 (n + 1))

end

end A050033.P15729710889928078845

/-! ## A050033.P14532422133879672983

`A050037(n+1)+A050065(n+1)-A050069(n+1)`
-/

namespace A050033.P14532422133879672983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050065 (n + 1) - A050069 (n + 1))

end

end A050033.P14532422133879672983

/-!
# A050034: a(n) = a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A050034, there is no canonical definition to state claims against.
-/

/-! ## A050034.P1410308692828910717

`2*A050030(n+1)-A050026(n+1)`
-/

namespace A050034.P1410308692828910717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050030 (n + 1) - A050026 (n + 1)

end

end A050034.P1410308692828910717

/-! ## A050034.P7347496107983277449

`(A050038(n+1)+A050030(n+1))/2`
-/

namespace A050034.P7347496107983277449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050038 (n + 1) + A050030 (n + 1) : ℚ) / 2

end

end A050034.P7347496107983277449

/-! ## A050034.P13933559920166437166

`2*A050046(n+1)-A050058(n+1)`
-/

namespace A050034.P13933559920166437166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050058 (n + 1)

end

end A050034.P13933559920166437166

/-! ## A050034.P1183726617447608379

`2*A050050(n+1)-A050066(n+1)`
-/

namespace A050034.P1183726617447608379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050066 (n + 1)

end

end A050034.P1183726617447608379

/-! ## A050034.P6698553028872041257

`A050026(n+1)+A050050(n+1)-A050042(n+1)`
-/

namespace A050034.P6698553028872041257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050050 (n + 1) - A050042 (n + 1))

end

end A050034.P6698553028872041257

/-! ## A050034.P8862773626601054938

`A050026(n+1)+A050054(n+1)-A050046(n+1)`
-/

namespace A050034.P8862773626601054938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050054 (n + 1) - A050046 (n + 1))

end

end A050034.P8862773626601054938

/-! ## A050034.P9844708591048218163

`A050030(n+1)+A050046(n+1)-A050042(n+1)`
-/

namespace A050034.P9844708591048218163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050046 (n + 1) - A050042 (n + 1))

end

end A050034.P9844708591048218163

/-! ## A050034.P17602247033296302469

`A050030(n+1)+A050050(n+1)-A050046(n+1)`
-/

namespace A050034.P17602247033296302469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050050 (n + 1) - A050046 (n + 1))

end

end A050034.P17602247033296302469

/-! ## A050034.P17296545416682205372

`A050038(n+1)+A050042(n+1)-A050046(n+1)`
-/

namespace A050034.P17296545416682205372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050042 (n + 1) - A050046 (n + 1))

end

end A050034.P17296545416682205372

/-! ## A050034.P4245174490423810954

`A050038(n+1)+A050046(n+1)-A050050(n+1)`
-/

namespace A050034.P4245174490423810954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050046 (n + 1) - A050050 (n + 1))

end

end A050034.P4245174490423810954

/-! ## A050034.P3721543878016830910

`A050038(n+1)+A050050(n+1)-A050054(n+1)`
-/

namespace A050034.P3721543878016830910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050050 (n + 1) - A050054 (n + 1))

end

end A050034.P3721543878016830910

/-! ## A050034.P9062144964039934676

`A050038(n+1)+A050058(n+1)-A050062(n+1)`
-/

namespace A050034.P9062144964039934676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050062 (n + 1))

end

end A050034.P9062144964039934676

/-! ## A050034.P4620633508153198822

`A050042(n+1)+A050050(n+1)-A050058(n+1)`
-/

namespace A050034.P4620633508153198822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050050 (n + 1) - A050058 (n + 1))

end

end A050034.P4620633508153198822

/-! ## A050034.P16031970438434816194

`A050038(n+1)+A050062(n+1)-A050066(n+1)`
-/

namespace A050034.P16031970438434816194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050062 (n + 1) - A050066 (n + 1))

end

end A050034.P16031970438434816194

/-! ## A050034.P15049161168279765689

`A050042(n+1)+A050054(n+1)-A050062(n+1)`
-/

namespace A050034.P15049161168279765689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050062 (n + 1))

end

end A050034.P15049161168279765689

/-! ## A050034.P8568831431829682091

`A050046(n+1)+A050050(n+1)-A050062(n+1)`
-/

namespace A050034.P8568831431829682091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050062 (n + 1))

end

end A050034.P8568831431829682091

/-! ## A050034.P14380081340517727766

`A050046(n+1)+A050054(n+1)-A050066(n+1)`
-/

namespace A050034.P14380081340517727766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050054 (n + 1) - A050066 (n + 1))

end

end A050034.P14380081340517727766

/-! ## A050034.P821356595918275888

`A050050(n+1)+A050054(n+1)-A050070(n+1)`
-/

namespace A050034.P821356595918275888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050054 (n + 1) - A050070 (n + 1))

end

end A050034.P821356595918275888

/-!
# A050035: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A050035, there is no canonical definition to state claims against.
-/

/-! ## A050035.P6492606171713099460

`2*A050031(n+1)-A050027(n+1)`
-/

namespace A050035.P6492606171713099460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050031 (n + 1) - A050027 (n + 1)

end

end A050035.P6492606171713099460

/-! ## A050035.P1616179341318224182

`(A050039(n+1)+A050031(n+1))/2`
-/

namespace A050035.P1616179341318224182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050039 (n + 1) + A050031 (n + 1) : ℚ) / 2

end

end A050035.P1616179341318224182

/-! ## A050035.P1339716794033586545

`2*A050047(n+1)-A050059(n+1)`
-/

namespace A050035.P1339716794033586545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050047 (n + 1) - A050059 (n + 1)

end

end A050035.P1339716794033586545

/-! ## A050035.P17999111813125449574

`2*A050051(n+1)-A050067(n+1)`
-/

namespace A050035.P17999111813125449574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050067 (n + 1)

end

end A050035.P17999111813125449574

/-! ## A050035.P7555255696071643777

`A050027(n+1)+A050051(n+1)-A050043(n+1)`
-/

namespace A050035.P7555255696071643777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050051 (n + 1) - A050043 (n + 1))

end

end A050035.P7555255696071643777

/-! ## A050035.P18307999774249476368

`A050027(n+1)+A050055(n+1)-A050047(n+1)`
-/

namespace A050035.P18307999774249476368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050055 (n + 1) - A050047 (n + 1))

end

end A050035.P18307999774249476368

/-! ## A050035.P11948588398964682168

`A050031(n+1)+A050047(n+1)-A050043(n+1)`
-/

namespace A050035.P11948588398964682168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050047 (n + 1) - A050043 (n + 1))

end

end A050035.P11948588398964682168

/-! ## A050035.P7796930839999330696

`A050031(n+1)+A050051(n+1)-A050047(n+1)`
-/

namespace A050035.P7796930839999330696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050051 (n + 1) - A050047 (n + 1))

end

end A050035.P7796930839999330696

/-! ## A050035.P18334346306835508504

`A050031(n+1)+A050055(n+1)-A050051(n+1)`
-/

namespace A050035.P18334346306835508504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050055 (n + 1) - A050051 (n + 1))

end

end A050035.P18334346306835508504

/-! ## A050035.P17161499147303183614

`A050039(n+1)+A050043(n+1)-A050047(n+1)`
-/

namespace A050035.P17161499147303183614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050043 (n + 1) - A050047 (n + 1))

end

end A050035.P17161499147303183614

/-! ## A050035.P16169544848204156846

`A050039(n+1)+A050047(n+1)-A050051(n+1)`
-/

namespace A050035.P16169544848204156846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050047 (n + 1) - A050051 (n + 1))

end

end A050035.P16169544848204156846

/-! ## A050035.P7965994637820355835

`A050027(n+1)+A050071(n+1)-A050063(n+1)`
-/

namespace A050035.P7965994637820355835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050071 (n + 1) - A050063 (n + 1))

end

end A050035.P7965994637820355835

/-! ## A050035.P13108676831619212903

`A050031(n+1)+A050063(n+1)-A050059(n+1)`
-/

namespace A050035.P13108676831619212903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050063 (n + 1) - A050059 (n + 1))

end

end A050035.P13108676831619212903

/-! ## A050035.P6465096013905570962

`A050039(n+1)+A050051(n+1)-A050055(n+1)`
-/

namespace A050035.P6465096013905570962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050051 (n + 1) - A050055 (n + 1))

end

end A050035.P6465096013905570962

/-! ## A050035.P6727898881927492755

`A050043(n+1)+A050051(n+1)-A050059(n+1)`
-/

namespace A050035.P6727898881927492755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050051 (n + 1) - A050059 (n + 1))

end

end A050035.P6727898881927492755

/-! ## A050035.P16487839116166755475

`A050031(n+1)+A050071(n+1)-A050067(n+1)`
-/

namespace A050035.P16487839116166755475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050071 (n + 1) - A050067 (n + 1))

end

end A050035.P16487839116166755475

/-! ## A050035.P5790192131838645050

`A050043(n+1)+A050055(n+1)-A050063(n+1)`
-/

namespace A050035.P5790192131838645050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050055 (n + 1) - A050063 (n + 1))

end

end A050035.P5790192131838645050

/-! ## A050035.P3241438534644033649

`A050047(n+1)+A050051(n+1)-A050063(n+1)`
-/

namespace A050035.P3241438534644033649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050063 (n + 1))

end

end A050035.P3241438534644033649

/-! ## A050035.P8789265723336930319

`A050051(n+1)+A050055(n+1)-A050071(n+1)`
-/

namespace A050035.P8789265723336930319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050051 (n + 1) + (A050055 (n + 1) - A050071 (n + 1))

end

end A050035.P8789265723336930319

/-!
# A050036: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A050036, there is no canonical definition to state claims against.
-/

/-! ## A050036.P13681133771334378012

`A050068(n+1)-2*char[1]`
-/

namespace A050036.P13681133771334378012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050068 (n + 1) - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A050036.P13681133771334378012

/-! ## A050036.P1014113245210709850

`A050052(A159075(n)+1+n)`
-/

namespace A050036.P1014113245210709850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050052 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050036.P1014113245210709850

/-! ## A050036.P16649295067880405541

`A050068(A159075(n)+1+n)`
-/

namespace A050036.P16649295067880405541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050068 (A159075 n + 1 + (n : ℤ)).toNat

end

end A050036.P16649295067880405541

/-! ## A050036.P10545228437792256163

`A050052(1-A063524(n)+n)`
-/

namespace A050036.P10545228437792256163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050052 (1 - A063524 n + (n : ℤ)).toNat

end

end A050036.P10545228437792256163

/-! ## A050036.P6779093968100817309

`A050068(1-A063524(n)+n)`
-/

namespace A050036.P6779093968100817309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050068 (1 - A063524 n + (n : ℤ)).toNat

end

end A050036.P6779093968100817309

/-! ## A050036.P2604761790297490844

`A050052(1-(A063524(n)-n))`
-/

namespace A050036.P2604761790297490844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050052 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050036.P2604761790297490844

/-! ## A050036.P5234553432757918034

`A050068(1-(A063524(n)-n))`
-/

namespace A050036.P5234553432757918034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050068 (1 - (A063524 n - (n : ℤ))).toNat

end

end A050036.P5234553432757918034

/-! ## A050036.P8746789821290235368

`A050052(n+1)/A373565(n)`
-/

namespace A050036.P8746789821290235368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050052 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A050036.P8746789821290235368

/-! ## A050036.P17171333750779226733

`gcd(A050068(n+1), A130706(n))`
-/

namespace A050036.P17171333750779226733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050068 (n + 1)) (A130706 n)

end

end A050036.P17171333750779226733

/-! ## A050036.P9634106391814747222

`gcd(A050052(n+1), A169585(n))`
-/

namespace A050036.P9634106391814747222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050052 (n + 1)) (A169585 n)

end

end A050036.P9634106391814747222

/-! ## A050036.P5655619244637034750

`and(A050068(n+1), A260196(n))`
-/

namespace A050036.P5655619244637034750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050068 (n + 1)) (A260196 n)

end

end A050036.P5655619244637034750

/-! ## A050036.P7799270150606467354

`A050068(xor(1, A063524(n))+n)`
-/

namespace A050036.P7799270150606467354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050068 (Int.xor 1 (A063524 n) + (n : ℤ)).toNat

end

end A050036.P7799270150606467354

/-! ## A050036.P5855405212847171989

`A050052(n+1)/(A063524(n)+1)`
-/

namespace A050036.P5855405212847171989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050052 (n + 1) : ℚ) / (A063524 n + 1 : ℚ)

end

end A050036.P5855405212847171989

/-! ## A050036.P13410529730442046800

`2*A050032(n+1)-A050028(n+1)`
-/

namespace A050036.P13410529730442046800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050032 (n + 1) - A050028 (n + 1)

end

end A050036.P13410529730442046800

/-! ## A050036.P9993948523829014322

`2*A050048(n+1)-A050060(n+1)`
-/

namespace A050036.P9993948523829014322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050048 (n + 1) - A050060 (n + 1)

end

end A050036.P9993948523829014322

/-! ## A050036.P12074851215430125063

`A050028(n+1)+A050032(n+1)-A050024(n+1)`
-/

namespace A050036.P12074851215430125063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050032 (n + 1) - A050024 (n + 1))

end

end A050036.P12074851215430125063

/-! ## A050036.P10399086002922573083

`A050024(n+1)+A050052(n+1)-A050040(n+1)`
-/

namespace A050036.P10399086002922573083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050052 (n + 1) - A050040 (n + 1))

end

end A050036.P10399086002922573083

/-! ## A050036.P1949350418783189033

`A050028(n+1)+A050048(n+1)-A050040(n+1)`
-/

namespace A050036.P1949350418783189033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050048 (n + 1) - A050040 (n + 1))

end

end A050036.P1949350418783189033

/-! ## A050036.P10067179128553342555

`A050028(n+1)+A050052(n+1)-A050044(n+1)`
-/

namespace A050036.P10067179128553342555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050052 (n + 1) - A050044 (n + 1))

end

end A050036.P10067179128553342555

/-! ## A050036.P5355121539890182123

`A050032(n+1)+A050044(n+1)-A050040(n+1)`
-/

namespace A050036.P5355121539890182123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050044 (n + 1) - A050040 (n + 1))

end

end A050036.P5355121539890182123

/-!
# A050037: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A050037, there is no canonical definition to state claims against.
-/

/-! ## A050037.P12496076228668551450

`2*A050033(n+1)-A050029(n+1)`
-/

namespace A050037.P12496076228668551450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050033 (n + 1) - A050029 (n + 1)

end

end A050037.P12496076228668551450

/-! ## A050037.P9983435685477781055

`2*A050049(n+1)-A050061(n+1)`
-/

namespace A050037.P9983435685477781055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050061 (n + 1)

end

end A050037.P9983435685477781055

/-! ## A050037.P3710109576588477054

`2*A050053(n+1)-A050069(n+1)`
-/

namespace A050037.P3710109576588477054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050053 (n + 1) - A050069 (n + 1)

end

end A050037.P3710109576588477054

/-! ## A050037.P2506105983873281293

`A050029(n+1)+A050033(n+1)-A050025(n+1)`
-/

namespace A050037.P2506105983873281293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050033 (n + 1) - A050025 (n + 1))

end

end A050037.P2506105983873281293

/-! ## A050037.P15250925305594561935

`A050025(n+1)+A050053(n+1)-A050041(n+1)`
-/

namespace A050037.P15250925305594561935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050053 (n + 1) - A050041 (n + 1))

end

end A050037.P15250925305594561935

/-! ## A050037.P15836146053801322993

`A050029(n+1)+A050049(n+1)-A050041(n+1)`
-/

namespace A050037.P15836146053801322993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050049 (n + 1) - A050041 (n + 1))

end

end A050037.P15836146053801322993

/-! ## A050037.P1025447091481031600

`A050029(n+1)+A050053(n+1)-A050045(n+1)`
-/

namespace A050037.P1025447091481031600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050053 (n + 1) - A050045 (n + 1))

end

end A050037.P1025447091481031600

/-! ## A050037.P6185171017773175905

`A050033(n+1)+A050045(n+1)-A050041(n+1)`
-/

namespace A050037.P6185171017773175905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050045 (n + 1) - A050041 (n + 1))

end

end A050037.P6185171017773175905

/-! ## A050037.P3990815501918006164

`A050033(n+1)+A050049(n+1)-A050045(n+1)`
-/

namespace A050037.P3990815501918006164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050049 (n + 1) - A050045 (n + 1))

end

end A050037.P3990815501918006164

/-! ## A050037.P17712904839598242934

`A050033(n+1)+A050053(n+1)-A050049(n+1)`
-/

namespace A050037.P17712904839598242934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050053 (n + 1) - A050049 (n + 1))

end

end A050037.P17712904839598242934

/-! ## A050037.P5171435511038328495

`A050029(n+1)+A050065(n+1)-A050057(n+1)`
-/

namespace A050037.P5171435511038328495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050057 (n + 1))

end

end A050037.P5171435511038328495

/-! ## A050037.P6451973443446233605

`A050041(n+1)+A050053(n+1)-A050057(n+1)`
-/

namespace A050037.P6451973443446233605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050053 (n + 1) - A050057 (n + 1))

end

end A050037.P6451973443446233605

/-! ## A050037.P8444091164311622421

`A050045(n+1)+A050049(n+1)-A050057(n+1)`
-/

namespace A050037.P8444091164311622421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050057 (n + 1))

end

end A050037.P8444091164311622421

/-! ## A050037.P8829446680669217211

`A050033(n+1)+A050069(n+1)-A050065(n+1)`
-/

namespace A050037.P8829446680669217211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050069 (n + 1) - A050065 (n + 1))

end

end A050037.P8829446680669217211

/-! ## A050037.P8162099565445542699

`A050045(n+1)+A050053(n+1)-A050061(n+1)`
-/

namespace A050037.P8162099565445542699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050053 (n + 1) - A050061 (n + 1))

end

end A050037.P8162099565445542699

/-! ## A050037.P9817865799983916031

`A050049(n+1)+A050053(n+1)-A050065(n+1)`
-/

namespace A050037.P9817865799983916031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) + (A050053 (n + 1) - A050065 (n + 1))

end

end A050037.P9817865799983916031

/-!
# A050038: a(n) = a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A050038, there is no canonical definition to state claims against.
-/

/-! ## A050038.P4615150056990697746

`2*A050034(n+1)-A050030(n+1)`
-/

namespace A050038.P4615150056990697746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050034 (n + 1) - A050030 (n + 1)

end

end A050038.P4615150056990697746

/-! ## A050038.P16348398356518951728

`2*A050050(n+1)-A050062(n+1)`
-/

namespace A050038.P16348398356518951728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050062 (n + 1)

end

end A050038.P16348398356518951728

/-! ## A050038.P607308415808196975

`2*A050054(n+1)-A050070(n+1)`
-/

namespace A050038.P607308415808196975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050054 (n + 1) - A050070 (n + 1)

end

end A050038.P607308415808196975

/-! ## A050038.P18023807031818676277

`A050030(n+1)+A050034(n+1)-A050026(n+1)`
-/

namespace A050038.P18023807031818676277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050034 (n + 1) - A050026 (n + 1))

end

end A050038.P18023807031818676277

/-! ## A050038.P1152051068769830586

`A050026(n+1)+A050054(n+1)-A050042(n+1)`
-/

namespace A050038.P1152051068769830586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050054 (n + 1) - A050042 (n + 1))

end

end A050038.P1152051068769830586

/-! ## A050038.P18241796652434092852

`A050030(n+1)+A050050(n+1)-A050042(n+1)`
-/

namespace A050038.P18241796652434092852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050050 (n + 1) - A050042 (n + 1))

end

end A050038.P18241796652434092852

/-! ## A050038.P6643622143735530990

`A050030(n+1)+A050054(n+1)-A050046(n+1)`
-/

namespace A050038.P6643622143735530990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050054 (n + 1) - A050046 (n + 1))

end

end A050038.P6643622143735530990

/-! ## A050038.P13303557699918846568

`A050034(n+1)+A050046(n+1)-A050042(n+1)`
-/

namespace A050038.P13303557699918846568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050046 (n + 1) - A050042 (n + 1))

end

end A050038.P13303557699918846568

/-! ## A050038.P13264885108289816043

`A050034(n+1)+A050050(n+1)-A050046(n+1)`
-/

namespace A050038.P13264885108289816043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050050 (n + 1) - A050046 (n + 1))

end

end A050038.P13264885108289816043

/-! ## A050038.P7110774524214598516

`A050034(n+1)+A050054(n+1)-A050050(n+1)`
-/

namespace A050038.P7110774524214598516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050054 (n + 1) - A050050 (n + 1))

end

end A050038.P7110774524214598516

/-! ## A050038.P7441082394464100298

`A050034(n+1)+A050062(n+1)-A050058(n+1)`
-/

namespace A050038.P7441082394464100298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050058 (n + 1))

end

end A050038.P7441082394464100298

/-! ## A050038.P2758476533175209241

`A050034(n+1)+A050066(n+1)-A050062(n+1)`
-/

namespace A050038.P2758476533175209241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050066 (n + 1) - A050062 (n + 1))

end

end A050038.P2758476533175209241

/-! ## A050038.P16012106939684567660

`A050042(n+1)+A050054(n+1)-A050058(n+1)`
-/

namespace A050038.P16012106939684567660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050058 (n + 1))

end

end A050038.P16012106939684567660

/-! ## A050038.P3842010735070189412

`A050046(n+1)+A050050(n+1)-A050058(n+1)`
-/

namespace A050038.P3842010735070189412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050058 (n + 1))

end

end A050038.P3842010735070189412

/-! ## A050038.P417409518966686143

`A050046(n+1)+A050054(n+1)-A050062(n+1)`
-/

namespace A050038.P417409518966686143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050054 (n + 1) - A050062 (n + 1))

end

end A050038.P417409518966686143

/-! ## A050038.P13398965137137682402

`A050050(n+1)+A050054(n+1)-A050066(n+1)`
-/

namespace A050038.P13398965137137682402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050054 (n + 1) - A050066 (n + 1))

end

end A050038.P13398965137137682402

/-!
# A050039: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A050039, there is no canonical definition to state claims against.
-/

/-! ## A050039.P9891938986267607571

`2*A050035(n+1)-A050031(n+1)`
-/

namespace A050039.P9891938986267607571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050035 (n + 1) - A050031 (n + 1)

end

end A050039.P9891938986267607571

/-! ## A050039.P15152464111245124325

`2*A050051(n+1)-A050063(n+1)`
-/

namespace A050039.P15152464111245124325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050063 (n + 1)

end

end A050039.P15152464111245124325

/-! ## A050039.P13711644140485082976

`2*A050055(n+1)-A050071(n+1)`
-/

namespace A050039.P13711644140485082976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050055 (n + 1) - A050071 (n + 1)

end

end A050039.P13711644140485082976

/-! ## A050039.P3470770478149423121

`A050031(n+1)+A050035(n+1)-A050027(n+1)`
-/

namespace A050039.P3470770478149423121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050035 (n + 1) - A050027 (n + 1))

end

end A050039.P3470770478149423121

/-! ## A050039.P10188252368289255343

`A050027(n+1)+A050055(n+1)-A050043(n+1)`
-/

namespace A050039.P10188252368289255343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050055 (n + 1) - A050043 (n + 1))

end

end A050039.P10188252368289255343

/-! ## A050039.P6680497500637907100

`A050031(n+1)+A050051(n+1)-A050043(n+1)`
-/

namespace A050039.P6680497500637907100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050051 (n + 1) - A050043 (n + 1))

end

end A050039.P6680497500637907100

/-! ## A050039.P1864591371326732862

`A050031(n+1)+A050055(n+1)-A050047(n+1)`
-/

namespace A050039.P1864591371326732862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050055 (n + 1) - A050047 (n + 1))

end

end A050039.P1864591371326732862

/-! ## A050039.P13904388541996032162

`A050035(n+1)+A050047(n+1)-A050043(n+1)`
-/

namespace A050039.P13904388541996032162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050047 (n + 1) - A050043 (n + 1))

end

end A050039.P13904388541996032162

/-! ## A050039.P16509212823068302984

`A050035(n+1)+A050051(n+1)-A050047(n+1)`
-/

namespace A050039.P16509212823068302984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050051 (n + 1) - A050047 (n + 1))

end

end A050039.P16509212823068302984

/-! ## A050039.P2957445319024063810

`A050035(n+1)+A050055(n+1)-A050051(n+1)`
-/

namespace A050039.P2957445319024063810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050055 (n + 1) - A050051 (n + 1))

end

end A050039.P2957445319024063810

/-! ## A050039.P4990771399642282732

`A050031(n+1)+A050067(n+1)-A050059(n+1)`
-/

namespace A050039.P4990771399642282732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050059 (n + 1))

end

end A050039.P4990771399642282732

/-! ## A050039.P16834907225344302966

`A050031(n+1)+A050071(n+1)-A050063(n+1)`
-/

namespace A050039.P16834907225344302966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050071 (n + 1) - A050063 (n + 1))

end

end A050039.P16834907225344302966

/-! ## A050039.P2509929125642634952

`A050035(n+1)+A050063(n+1)-A050059(n+1)`
-/

namespace A050039.P2509929125642634952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050059 (n + 1))

end

end A050039.P2509929125642634952

/-! ## A050039.P15877810558919772513

`A050047(n+1)+A050051(n+1)-A050059(n+1)`
-/

namespace A050039.P15877810558919772513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050059 (n + 1))

end

end A050039.P15877810558919772513

/-! ## A050039.P13043229283757262297

`A050035(n+1)+A050071(n+1)-A050067(n+1)`
-/

namespace A050039.P13043229283757262297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050071 (n + 1) - A050067 (n + 1))

end

end A050039.P13043229283757262297

/-! ## A050039.P482518112220449093

`A050047(n+1)+A050055(n+1)-A050063(n+1)`
-/

namespace A050039.P482518112220449093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050055 (n + 1) - A050063 (n + 1))

end

end A050039.P482518112220449093

/-!
# A050040: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A050040, there is no canonical definition to state claims against.
-/

/-! ## A050040.P10458408086113556553

`A050024(n+1)+char[1]`
-/

namespace A050040.P10458408086113556553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050040.P10458408086113556553

/-! ## A050040.P4095217833641337987

`A063524(n)+A050024(n+1)`
-/

namespace A050040.P4095217833641337987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A050024 (n + 1)

end

end A050040.P4095217833641337987

/-! ## A050040.P13869585703814733195

`A159075(n)+A050056(n+1)`
-/

namespace A050040.P13869585703814733195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A050056 (n + 1)

end

end A050040.P13869585703814733195

/-! ## A050040.P10667757145176355765

`A050056(n+1)-A063524(n)`
-/

namespace A050040.P10667757145176355765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (n + 1) - A063524 n

end

end A050040.P10667757145176355765

/-! ## A050040.P3080445548837094684

`A050024(n+1)*A373565(n)`
-/

namespace A050040.P3080445548837094684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) * A373565 n

end

end A050040.P3080445548837094684

/-! ## A050040.P13027449717277886065

`A050056(1-n*A260196(n))`
-/

namespace A050040.P13027449717277886065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (1 - (n : ℤ) * A260196 n).toNat

end

end A050040.P13027449717277886065

/-! ## A050040.P7100908971815853810

`lcm(A000034(n), A050024(n+1))`
-/

namespace A050040.P7100908971815853810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A050024 (n + 1))

end

end A050040.P7100908971815853810

/-! ## A050040.P3420662244210248532

`(A050056(n+1)+A050024(n+1))/2`
-/

namespace A050040.P3420662244210248532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050056 (n + 1) + A050024 (n + 1) : ℚ) / 2

end

end A050040.P3420662244210248532

/-! ## A050040.P3696422321942177808

`2*A050044(n+1)-A050048(n+1)`
-/

namespace A050040.P3696422321942177808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050044 (n + 1) - A050048 (n + 1)

end

end A050040.P3696422321942177808

/-! ## A050040.P2106967880854032686

`A050056(n+1)-n*A033322(n+1)`
-/

namespace A050040.P2106967880854032686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (n + 1) - (n : ℤ) * A033322 (n + 1)

end

end A050040.P2106967880854032686

/-! ## A050040.P7501612703817617814

`A050056(and(n-A260196(n), A260196(n)))`
-/

namespace A050040.P7501612703817617814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (Int.land ((n : ℤ) - A260196 n) (A260196 n)).toNat

end

end A050040.P7501612703817617814

/-! ## A050040.P2893904933746022587

`A050024(A050060(n+1)/A050028(n+1)+n)`
-/

namespace A050040.P2893904933746022587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (SequenceMachineLib.roundAway ((A050060 (n + 1) : ℚ) / (A050028 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050040.P2893904933746022587

/-! ## A050040.P7304102500986961630

`A050024(A050064(n+1)/A050032(n+1)+n)`
-/

namespace A050040.P7304102500986961630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (SequenceMachineLib.roundAway ((A050064 (n + 1) : ℚ) / (A050032 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050040.P7304102500986961630

/-! ## A050040.P2494029090872122541

`A050024(A050068(n+1)/A050036(n+1)+n)`
-/

namespace A050040.P2494029090872122541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (SequenceMachineLib.roundAway ((A050068 (n + 1) : ℚ) / (A050036 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050040.P2494029090872122541

/-! ## A050040.P2565811422091335049

`A050028(n+1)+A050044(n+1)-A050032(n+1)`
-/

namespace A050040.P2565811422091335049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050044 (n + 1) - A050032 (n + 1))

end

end A050040.P2565811422091335049

/-! ## A050040.P13990255133156124834

`A050028(n+1)+A050048(n+1)-A050036(n+1)`
-/

namespace A050040.P13990255133156124834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050048 (n + 1) - A050036 (n + 1))

end

end A050040.P13990255133156124834

/-! ## A050040.P7112342107300473176

`A050032(n+1)+A050044(n+1)-A050036(n+1)`
-/

namespace A050040.P7112342107300473176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050044 (n + 1) - A050036 (n + 1))

end

end A050040.P7112342107300473176

/-! ## A050040.P7171748072801421030

`A050048(n+1)+A050024(n+1)-A050032(n+1)`
-/

namespace A050040.P7171748072801421030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (n + 1) + (A050024 (n + 1) - A050032 (n + 1))

end

end A050040.P7171748072801421030

/-! ## A050040.P15179124509092157686

`A050028(n+1)+A050056(n+1)-A050044(n+1)`
-/

namespace A050040.P15179124509092157686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050056 (n + 1) - A050044 (n + 1))

end

end A050040.P15179124509092157686

/-! ## A050040.P14998286962970059147

`A050028(n+1)+A050060(n+1)-A050048(n+1)`
-/

namespace A050040.P14998286962970059147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050060 (n + 1) - A050048 (n + 1))

end

end A050040.P14998286962970059147

/-!
# A050041: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A050041, there is no canonical definition to state claims against.
-/

/-! ## A050041.P11460933100928971033

`A050061(n+1)-A329474(n+1)`
-/

namespace A050041.P11460933100928971033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050061 (n + 1) - A329474 (n + 1)

end

end A050041.P11460933100928971033

/-! ## A050041.P14996219754996004266

`(A050057(n+1)+A050025(n+1))/2`
-/

namespace A050041.P14996219754996004266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050057 (n + 1) + A050025 (n + 1) : ℚ) / 2

end

end A050041.P14996219754996004266

/-! ## A050041.P997411736161829857

`2*A050045(n+1)-A050049(n+1)`
-/

namespace A050041.P997411736161829857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050049 (n + 1)

end

end A050041.P997411736161829857

/-! ## A050041.P12271232097592824055

`A050025(n+1)+A050045(n+1)-A050029(n+1)`
-/

namespace A050041.P12271232097592824055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050045 (n + 1) - A050029 (n + 1))

end

end A050041.P12271232097592824055

/-! ## A050041.P8510784744428055485

`A050025(n+1)+A050049(n+1)-A050033(n+1)`
-/

namespace A050041.P8510784744428055485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050049 (n + 1) - A050033 (n + 1))

end

end A050041.P8510784744428055485

/-! ## A050041.P6247892065321803512

`A050025(n+1)+A050053(n+1)-A050037(n+1)`
-/

namespace A050041.P6247892065321803512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050053 (n + 1) - A050037 (n + 1))

end

end A050041.P6247892065321803512

/-! ## A050041.P9134545938456259988

`A050029(n+1)+A050045(n+1)-A050033(n+1)`
-/

namespace A050041.P9134545938456259988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050045 (n + 1) - A050033 (n + 1))

end

end A050041.P9134545938456259988

/-! ## A050041.P3236613710877461156

`A050029(n+1)+A050049(n+1)-A050037(n+1)`
-/

namespace A050041.P3236613710877461156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050049 (n + 1) - A050037 (n + 1))

end

end A050041.P3236613710877461156

/-! ## A050041.P12070326556647477749

`A050033(n+1)+A050045(n+1)-A050037(n+1)`
-/

namespace A050041.P12070326556647477749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050045 (n + 1) - A050037 (n + 1))

end

end A050041.P12070326556647477749

/-! ## A050041.P17403932541368628846

`A050025(n+1)+A050061(n+1)-A050045(n+1)`
-/

namespace A050041.P17403932541368628846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050061 (n + 1) - A050045 (n + 1))

end

end A050041.P17403932541368628846

/-! ## A050041.P5787652296753005088

`A050029(n+1)+A050057(n+1)-A050045(n+1)`
-/

namespace A050041.P5787652296753005088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050057 (n + 1) - A050045 (n + 1))

end

end A050041.P5787652296753005088

/-! ## A050041.P7626258830551028982

`A050025(n+1)+A050069(n+1)-A050053(n+1)`
-/

namespace A050041.P7626258830551028982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050053 (n + 1))

end

end A050041.P7626258830551028982

/-! ## A050041.P9395614412109191718

`A050033(n+1)+A050057(n+1)-A050049(n+1)`
-/

namespace A050041.P9395614412109191718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050057 (n + 1) - A050049 (n + 1))

end

end A050041.P9395614412109191718

/-! ## A050041.P2207714234573391982

`A050033(n+1)+A050061(n+1)-A050053(n+1)`
-/

namespace A050041.P2207714234573391982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050061 (n + 1) - A050053 (n + 1))

end

end A050041.P2207714234573391982

/-! ## A050041.P6991611685039922085

`A050037(n+1)+A050057(n+1)-A050053(n+1)`
-/

namespace A050041.P6991611685039922085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050057 (n + 1) - A050053 (n + 1))

end

end A050041.P6991611685039922085

/-! ## A050041.P9745461120286721889

`A050045(n+1)+A050065(n+1)-A050069(n+1)`
-/

namespace A050041.P9745461120286721889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050065 (n + 1) - A050069 (n + 1))

end

end A050041.P9745461120286721889

/-! ## A050041.P8323765063009893737

`A050049(n+1)+A050061(n+1)-A050069(n+1)`
-/

namespace A050041.P8323765063009893737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) + (A050061 (n + 1) - A050069 (n + 1))

end

end A050041.P8323765063009893737

/-! ## A050041.P15293650472547646652

`A050053(n+1)+A050057(n+1)-A050069(n+1)`
-/

namespace A050041.P15293650472547646652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050053 (n + 1) + (A050057 (n + 1) - A050069 (n + 1))

end

end A050041.P15293650472547646652

/-!
# A050042: a(n) = a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A050042, there is no canonical definition to state claims against.
-/

/-! ## A050042.P13495449700822695249

`(A050058(n+1)+A050026(n+1))/2`
-/

namespace A050042.P13495449700822695249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050058 (n + 1) + A050026 (n + 1) : ℚ) / 2

end

end A050042.P13495449700822695249

/-! ## A050042.P1040389662212722585

`2*A050046(n+1)-A050050(n+1)`
-/

namespace A050042.P1040389662212722585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050050 (n + 1)

end

end A050042.P1040389662212722585

/-! ## A050042.P15598778931488226296

`A050026(n+1)+A050046(n+1)-A050030(n+1)`
-/

namespace A050042.P15598778931488226296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050046 (n + 1) - A050030 (n + 1))

end

end A050042.P15598778931488226296

/-! ## A050042.P4431368866322697032

`A050026(n+1)+A050050(n+1)-A050034(n+1)`
-/

namespace A050042.P4431368866322697032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050050 (n + 1) - A050034 (n + 1))

end

end A050042.P4431368866322697032

/-! ## A050042.P16670485449698029938

`A050026(n+1)+A050054(n+1)-A050038(n+1)`
-/

namespace A050042.P16670485449698029938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050054 (n + 1) - A050038 (n + 1))

end

end A050042.P16670485449698029938

/-! ## A050042.P18321337258888038907

`A050030(n+1)+A050046(n+1)-A050034(n+1)`
-/

namespace A050042.P18321337258888038907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050046 (n + 1) - A050034 (n + 1))

end

end A050042.P18321337258888038907

/-! ## A050042.P16602211618763778092

`A050030(n+1)+A050050(n+1)-A050038(n+1)`
-/

namespace A050042.P16602211618763778092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050050 (n + 1) - A050038 (n + 1))

end

end A050042.P16602211618763778092

/-! ## A050042.P8642665156328608709

`A050034(n+1)+A050046(n+1)-A050038(n+1)`
-/

namespace A050042.P8642665156328608709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050046 (n + 1) - A050038 (n + 1))

end

end A050042.P8642665156328608709

/-! ## A050042.P5661615188093587136

`A050026(n+1)+A050062(n+1)-A050046(n+1)`
-/

namespace A050042.P5661615188093587136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050062 (n + 1) - A050046 (n + 1))

end

end A050042.P5661615188093587136

/-! ## A050042.P6284481935817452442

`A050030(n+1)+A050058(n+1)-A050046(n+1)`
-/

namespace A050042.P6284481935817452442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050058 (n + 1) - A050046 (n + 1))

end

end A050042.P6284481935817452442

/-! ## A050042.P16528995465723919194

`A050034(n+1)+A050058(n+1)-A050050(n+1)`
-/

namespace A050042.P16528995465723919194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050058 (n + 1) - A050050 (n + 1))

end

end A050042.P16528995465723919194

/-! ## A050042.P8240598624928389454

`A050034(n+1)+A050062(n+1)-A050054(n+1)`
-/

namespace A050042.P8240598624928389454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050054 (n + 1))

end

end A050042.P8240598624928389454

/-! ## A050042.P499226320604236249

`A050038(n+1)+A050058(n+1)-A050054(n+1)`
-/

namespace A050042.P499226320604236249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050054 (n + 1))

end

end A050042.P499226320604236249

/-! ## A050042.P4198217782390147325

`A050046(n+1)+A050058(n+1)-A050062(n+1)`
-/

namespace A050042.P4198217782390147325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050058 (n + 1) - A050062 (n + 1))

end

end A050042.P4198217782390147325

/-! ## A050042.P4954877499593188376

`A050050(n+1)+A050058(n+1)-A050066(n+1)`
-/

namespace A050042.P4954877499593188376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050058 (n + 1) - A050066 (n + 1))

end

end A050042.P4954877499593188376

/-! ## A050042.P13602204407581848887

`A050050(n+1)+A050062(n+1)-A050070(n+1)`
-/

namespace A050042.P13602204407581848887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050062 (n + 1) - A050070 (n + 1))

end

end A050042.P13602204407581848887

/-! ## A050042.P12810632065157027206

`A050054(n+1)+A050058(n+1)-A050070(n+1)`
-/

namespace A050042.P12810632065157027206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050054 (n + 1) + (A050058 (n + 1) - A050070 (n + 1))

end

end A050042.P12810632065157027206

/-!
# A050043: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A050043, there is no canonical definition to state claims against.
-/

/-! ## A050043.P13304453788474307295

`(A050059(n+1)+A050027(n+1))/2`
-/

namespace A050043.P13304453788474307295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050059 (n + 1) + A050027 (n + 1) : ℚ) / 2

end

end A050043.P13304453788474307295

/-! ## A050043.P14582856523978682727

`2*A050047(n+1)-A050051(n+1)`
-/

namespace A050043.P14582856523978682727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050047 (n + 1) - A050051 (n + 1)

end

end A050043.P14582856523978682727

/-! ## A050043.P11544445290647374709

`A050027(n+1)+A050047(n+1)-A050031(n+1)`
-/

namespace A050043.P11544445290647374709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050047 (n + 1) - A050031 (n + 1))

end

end A050043.P11544445290647374709

/-! ## A050043.P6092208864920150595

`A050027(n+1)+A050051(n+1)-A050035(n+1)`
-/

namespace A050043.P6092208864920150595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050051 (n + 1) - A050035 (n + 1))

end

end A050043.P6092208864920150595

/-! ## A050043.P4805492885064233410

`A050027(n+1)+A050055(n+1)-A050039(n+1)`
-/

namespace A050043.P4805492885064233410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050055 (n + 1) - A050039 (n + 1))

end

end A050043.P4805492885064233410

/-! ## A050043.P15058157245247108838

`A050031(n+1)+A050047(n+1)-A050035(n+1)`
-/

namespace A050043.P15058157245247108838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050047 (n + 1) - A050035 (n + 1))

end

end A050043.P15058157245247108838

/-! ## A050043.P4707452559403230887

`A050031(n+1)+A050051(n+1)-A050039(n+1)`
-/

namespace A050043.P4707452559403230887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050051 (n + 1) - A050039 (n + 1))

end

end A050043.P4707452559403230887

/-! ## A050043.P10093529776536894248

`A050035(n+1)+A050047(n+1)-A050039(n+1)`
-/

namespace A050043.P10093529776536894248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050047 (n + 1) - A050039 (n + 1))

end

end A050043.P10093529776536894248

/-! ## A050043.P16996280864737238616

`A050027(n+1)+A050063(n+1)-A050047(n+1)`
-/

namespace A050043.P16996280864737238616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050063 (n + 1) - A050047 (n + 1))

end

end A050043.P16996280864737238616

/-! ## A050043.P4886845136304252461

`A050031(n+1)+A050059(n+1)-A050047(n+1)`
-/

namespace A050043.P4886845136304252461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050059 (n + 1) - A050047 (n + 1))

end

end A050043.P4886845136304252461

/-! ## A050043.P15194039984511959981

`A050031(n+1)+A050063(n+1)-A050051(n+1)`
-/

namespace A050043.P15194039984511959981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050063 (n + 1) - A050051 (n + 1))

end

end A050043.P15194039984511959981

/-! ## A050043.P11022833385920553944

`A050035(n+1)+A050059(n+1)-A050051(n+1)`
-/

namespace A050043.P11022833385920553944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050059 (n + 1) - A050051 (n + 1))

end

end A050043.P11022833385920553944

/-! ## A050043.P4835512263280563769

`A050035(n+1)+A050063(n+1)-A050055(n+1)`
-/

namespace A050043.P4835512263280563769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050055 (n + 1))

end

end A050043.P4835512263280563769

/-! ## A050043.P13005417564472188550

`A050047(n+1)+A050059(n+1)-A050063(n+1)`
-/

namespace A050043.P13005417564472188550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050059 (n + 1) - A050063 (n + 1))

end

end A050043.P13005417564472188550

/-! ## A050043.P5013431577801353918

`A050047(n+1)+A050067(n+1)-A050071(n+1)`
-/

namespace A050043.P5013431577801353918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050067 (n + 1) - A050071 (n + 1))

end

end A050043.P5013431577801353918

/-! ## A050043.P15338134943700127767

`A050051(n+1)+A050063(n+1)-A050071(n+1)`
-/

namespace A050043.P15338134943700127767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050051 (n + 1) + (A050063 (n + 1) - A050071 (n + 1))

end

end A050043.P15338134943700127767

/-!
# A050044: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A050044, there is no canonical definition to state claims against.
-/

/-! ## A050044.P10983236518081888081

`A050028(n+1)+char[1]`
-/

namespace A050044.P10983236518081888081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050044.P10983236518081888081

/-! ## A050044.P11017331754738571330

`A050028(A348776(n+1))`
-/

namespace A050044.P11017331754738571330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (A348776 (n + 1)).toNat

end

end A050044.P11017331754738571330

/-! ## A050044.P3074588248450154242

`A050028(A373565(n)+n)`
-/

namespace A050044.P3074588248450154242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (A373565 n + (n : ℤ)).toNat

end

end A050044.P3074588248450154242

/-! ## A050044.P1575880363537124721

`A050028(A063524(n)+1+n)`
-/

namespace A050044.P1575880363537124721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (A063524 n + 1 + (n : ℤ)).toNat

end

end A050044.P1575880363537124721

/-! ## A050044.P12242577748669902773

`A050060(A063524(n)+1+n)`
-/

namespace A050044.P12242577748669902773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (A063524 n + 1 + (n : ℤ)).toNat

end

end A050044.P12242577748669902773

/-! ## A050044.P1705798199326749570

`A159075(n)+A050060(n+1)`
-/

namespace A050044.P1705798199326749570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A050060 (n + 1)

end

end A050044.P1705798199326749570

/-! ## A050044.P16297017214612355070

`A050028(1-A159075(n)+n)`
-/

namespace A050044.P16297017214612355070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (1 - A159075 n + (n : ℤ)).toNat

end

end A050044.P16297017214612355070

/-! ## A050044.P2867811577947512041

`A050028(1-(A159075(n)-n))`
-/

namespace A050044.P2867811577947512041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (1 - (A159075 n - (n : ℤ))).toNat

end

end A050044.P2867811577947512041

/-! ## A050044.P7930778398371483914

`A050060(1-(A159075(n)-n))`
-/

namespace A050044.P7930778398371483914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (1 - (A159075 n - (n : ℤ))).toNat

end

end A050044.P7930778398371483914

/-! ## A050044.P10560154638503794550

`lcm(A014695(n), A050028(n+1))`
-/

namespace A050044.P10560154638503794550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014695 n) (A050028 (n + 1))

end

end A050044.P10560154638503794550

/-! ## A050044.P4166214579732584850

`(A050048(n+1)+A050040(n+1))/2`
-/

namespace A050044.P4166214579732584850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050048 (n + 1) + A050040 (n + 1) : ℚ) / 2

end

end A050044.P4166214579732584850

/-! ## A050044.P15508793997776061118

`(A050056(n+1)+A050032(n+1))/2`
-/

namespace A050044.P15508793997776061118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050056 (n + 1) + A050032 (n + 1) : ℚ) / 2

end

end A050044.P15508793997776061118

/-! ## A050044.P14199060512845608521

`(A050060(n+1)+A050028(n+1))/2`
-/

namespace A050044.P14199060512845608521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050060 (n + 1) + A050028 (n + 1) : ℚ) / 2

end

end A050044.P14199060512845608521

/-! ## A050044.P16617699103255135342

`(A050064(n+1)+A050024(n+1))/2`
-/

namespace A050044.P16617699103255135342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050064 (n + 1) + A050024 (n + 1) : ℚ) / 2

end

end A050044.P16617699103255135342

/-! ## A050044.P8305301492795838109

`2*A050048(n+1)-A050052(n+1)`
-/

namespace A050044.P8305301492795838109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050048 (n + 1) - A050052 (n + 1)

end

end A050044.P8305301492795838109

/-! ## A050044.P3599452727630740124

`A050028(A050040(n+1)/A050024(n+1)+n)`
-/

namespace A050044.P3599452727630740124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (SequenceMachineLib.roundAway ((A050040 (n + 1) : ℚ) / (A050024 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050044.P3599452727630740124

/-! ## A050044.P15261796535725104954

`A050028(A050048(n+1)/A050032(n+1)+n)`
-/

namespace A050044.P15261796535725104954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (SequenceMachineLib.roundAway ((A050048 (n + 1) : ℚ) / (A050032 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050044.P15261796535725104954

/-! ## A050044.P10224022882369760075

`A050060(A050040(n+1)/A050024(n+1)+n)`
-/

namespace A050044.P10224022882369760075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (SequenceMachineLib.roundAway ((A050040 (n + 1) : ℚ) / (A050024 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050044.P10224022882369760075

/-! ## A050044.P10696031049601070507

`A050028(A050052(n+1)/A050036(n+1)+n)`
-/

namespace A050044.P10696031049601070507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (SequenceMachineLib.roundAway ((A050052 (n + 1) : ℚ) / (A050036 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050044.P10696031049601070507

/-! ## A050044.P15275429051380971867

`A050060(A050048(n+1)/A050032(n+1)+n)`
-/

namespace A050044.P15275429051380971867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (SequenceMachineLib.roundAway ((A050048 (n + 1) : ℚ) / (A050032 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050044.P15275429051380971867

/-!
# A050045: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A050045, there is no canonical definition to state claims against.
-/

/-! ## A050045.P13949328337630586780

`A329474(n+1)+A050025(n+1)`
-/

namespace A050045.P13949328337630586780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329474 (n + 1) + A050025 (n + 1)

end

end A050045.P13949328337630586780

/-! ## A050045.P3647746962676180850

`A050065(n+1)-A329474(n+1)`
-/

namespace A050045.P3647746962676180850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050065 (n + 1) - A329474 (n + 1)

end

end A050045.P3647746962676180850

/-! ## A050045.P14120794749405817492

`(A050049(n+1)+A050041(n+1))/2`
-/

namespace A050045.P14120794749405817492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050049 (n + 1) + A050041 (n + 1) : ℚ) / 2

end

end A050045.P14120794749405817492

/-! ## A050045.P15439729915004491668

`(A050057(n+1)+A050033(n+1))/2`
-/

namespace A050045.P15439729915004491668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050057 (n + 1) + A050033 (n + 1) : ℚ) / 2

end

end A050045.P15439729915004491668

/-! ## A050045.P16386788467771322299

`(A050061(n+1)+A050029(n+1))/2`
-/

namespace A050045.P16386788467771322299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050061 (n + 1) + A050029 (n + 1) : ℚ) / 2

end

end A050045.P16386788467771322299

/-! ## A050045.P14962105958181353009

`(A050065(n+1)+A050025(n+1))/2`
-/

namespace A050045.P14962105958181353009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050065 (n + 1) + A050025 (n + 1) : ℚ) / 2

end

end A050045.P14962105958181353009

/-! ## A050045.P13802249121320579224

`2*A050049(n+1)-A050053(n+1)`
-/

namespace A050045.P13802249121320579224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050053 (n + 1)

end

end A050045.P13802249121320579224

/-! ## A050045.P7406544919411159036

`A050025(n+1)+A050049(n+1)-A050029(n+1)`
-/

namespace A050045.P7406544919411159036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050049 (n + 1) - A050029 (n + 1))

end

end A050045.P7406544919411159036

/-! ## A050045.P465600053570561194

`A050029(n+1)+A050041(n+1)-A050025(n+1)`
-/

namespace A050045.P465600053570561194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050041 (n + 1) - A050025 (n + 1))

end

end A050045.P465600053570561194

/-! ## A050045.P5779138579470856319

`A050025(n+1)+A050053(n+1)-A050033(n+1)`
-/

namespace A050045.P5779138579470856319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050053 (n + 1) - A050033 (n + 1))

end

end A050045.P5779138579470856319

/-! ## A050045.P9510154598115194387

`A050029(n+1)+A050049(n+1)-A050033(n+1)`
-/

namespace A050045.P9510154598115194387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050049 (n + 1) - A050033 (n + 1))

end

end A050045.P9510154598115194387

/-! ## A050045.P7710140571793001144

`A050033(n+1)+A050041(n+1)-A050029(n+1)`
-/

namespace A050045.P7710140571793001144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050041 (n + 1) - A050029 (n + 1))

end

end A050045.P7710140571793001144

/-! ## A050045.P201417013650508330

`A050037(n+1)+A050041(n+1)-A050033(n+1)`
-/

namespace A050045.P201417013650508330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050041 (n + 1) - A050033 (n + 1))

end

end A050045.P201417013650508330

/-! ## A050045.P3068576879849317821

`A050025(n+1)+A050061(n+1)-A050041(n+1)`
-/

namespace A050045.P3068576879849317821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050061 (n + 1) - A050041 (n + 1))

end

end A050045.P3068576879849317821

/-! ## A050045.P4507237696425289552

`A050029(n+1)+A050053(n+1)-A050037(n+1)`
-/

namespace A050045.P4507237696425289552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050053 (n + 1) - A050037 (n + 1))

end

end A050045.P4507237696425289552

/-! ## A050045.P14348728065118600783

`A050029(n+1)+A050057(n+1)-A050041(n+1)`
-/

namespace A050045.P14348728065118600783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050057 (n + 1) - A050041 (n + 1))

end

end A050045.P14348728065118600783

/-! ## A050045.P248648569299127232

`A050033(n+1)+A050049(n+1)-A050037(n+1)`
-/

namespace A050045.P248648569299127232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050049 (n + 1) - A050037 (n + 1))

end

end A050045.P248648569299127232

/-! ## A050045.P16492207760926892701

`A050025(n+1)+A050069(n+1)-A050049(n+1)`
-/

namespace A050045.P16492207760926892701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050049 (n + 1))

end

end A050045.P16492207760926892701

/-! ## A050045.P13021712071467414916

`A050029(n+1)+A050065(n+1)-A050049(n+1)`
-/

namespace A050045.P13021712071467414916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050049 (n + 1))

end

end A050045.P13021712071467414916

/-! ## A050045.P7796924556924225358

`A050033(n+1)+A050061(n+1)-A050049(n+1)`
-/

namespace A050045.P7796924556924225358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050061 (n + 1) - A050049 (n + 1))

end

end A050045.P7796924556924225358

/-!
# A050046: a(n) = a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A050046, there is no canonical definition to state claims against.
-/

/-! ## A050046.P6209300170912479317

`(A050050(n+1)+A050042(n+1))/2`
-/

namespace A050046.P6209300170912479317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050050 (n + 1) + A050042 (n + 1) : ℚ) / 2

end

end A050046.P6209300170912479317

/-! ## A050046.P15928937557013568458

`(A050058(n+1)+A050034(n+1))/2`
-/

namespace A050046.P15928937557013568458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050058 (n + 1) + A050034 (n + 1) : ℚ) / 2

end

end A050046.P15928937557013568458

/-! ## A050046.P12637887510549651531

`(A050062(n+1)+A050030(n+1))/2`
-/

namespace A050046.P12637887510549651531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050062 (n + 1) + A050030 (n + 1) : ℚ) / 2

end

end A050046.P12637887510549651531

/-! ## A050046.P9919996871351015585

`(A050066(n+1)+A050026(n+1))/2`
-/

namespace A050046.P9919996871351015585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050066 (n + 1) + A050026 (n + 1) : ℚ) / 2

end

end A050046.P9919996871351015585

/-! ## A050046.P4517242671145459729

`2*A050050(n+1)-A050054(n+1)`
-/

namespace A050046.P4517242671145459729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050054 (n + 1)

end

end A050046.P4517242671145459729

/-! ## A050046.P1570698288333274476

`A050026(n+1)+A050050(n+1)-A050030(n+1)`
-/

namespace A050046.P1570698288333274476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050050 (n + 1) - A050030 (n + 1))

end

end A050046.P1570698288333274476

/-! ## A050046.P6612348288416920596

`A050030(n+1)+A050042(n+1)-A050026(n+1)`
-/

namespace A050046.P6612348288416920596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050042 (n + 1) - A050026 (n + 1))

end

end A050046.P6612348288416920596

/-! ## A050046.P11641403047849121790

`A050026(n+1)+A050054(n+1)-A050034(n+1)`
-/

namespace A050046.P11641403047849121790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050054 (n + 1) - A050034 (n + 1))

end

end A050046.P11641403047849121790

/-! ## A050046.P12606254794467141539

`A050030(n+1)+A050050(n+1)-A050034(n+1)`
-/

namespace A050046.P12606254794467141539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050050 (n + 1) - A050034 (n + 1))

end

end A050046.P12606254794467141539

/-! ## A050046.P1649149299198949656

`A050034(n+1)+A050042(n+1)-A050030(n+1)`
-/

namespace A050046.P1649149299198949656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050042 (n + 1) - A050030 (n + 1))

end

end A050046.P1649149299198949656

/-! ## A050046.P10370690364373371434

`A050030(n+1)+A050054(n+1)-A050038(n+1)`
-/

namespace A050046.P10370690364373371434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050054 (n + 1) - A050038 (n + 1))

end

end A050046.P10370690364373371434

/-! ## A050046.P4792836210663201991

`A050034(n+1)+A050050(n+1)-A050038(n+1)`
-/

namespace A050046.P4792836210663201991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050050 (n + 1) - A050038 (n + 1))

end

end A050046.P4792836210663201991

/-! ## A050046.P2167995588596251021

`A050038(n+1)+A050042(n+1)-A050034(n+1)`
-/

namespace A050046.P2167995588596251021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050042 (n + 1) - A050034 (n + 1))

end

end A050046.P2167995588596251021

/-! ## A050046.P10248996534956791236

`A050026(n+1)+A050062(n+1)-A050042(n+1)`
-/

namespace A050046.P10248996534956791236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050062 (n + 1) - A050042 (n + 1))

end

end A050046.P10248996534956791236

/-! ## A050046.P377656700866954373

`A050030(n+1)+A050058(n+1)-A050042(n+1)`
-/

namespace A050046.P377656700866954373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050058 (n + 1) - A050042 (n + 1))

end

end A050046.P377656700866954373

/-! ## A050046.P1852854346627800092

`A050034(n+1)+A050062(n+1)-A050050(n+1)`
-/

namespace A050046.P1852854346627800092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050050 (n + 1))

end

end A050046.P1852854346627800092

/-! ## A050046.P12163949287185236465

`A050034(n+1)+A050066(n+1)-A050054(n+1)`
-/

namespace A050046.P12163949287185236465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050066 (n + 1) - A050054 (n + 1))

end

end A050046.P12163949287185236465

/-! ## A050046.P700049535956435066

`A050038(n+1)+A050058(n+1)-A050050(n+1)`
-/

namespace A050046.P700049535956435066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050050 (n + 1))

end

end A050046.P700049535956435066

/-! ## A050046.P15334551961710061858

`A050038(n+1)+A050062(n+1)-A050054(n+1)`
-/

namespace A050046.P15334551961710061858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050062 (n + 1) - A050054 (n + 1))

end

end A050046.P15334551961710061858

/-! ## A050046.P1830861557702407413

`A050042(n+1)+A050054(n+1)-A050050(n+1)`
-/

namespace A050046.P1830861557702407413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050050 (n + 1))

end

end A050046.P1830861557702407413

/-!
# A050047: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A050047, there is no canonical definition to state claims against.
-/

/-! ## A050047.P4582169487247910296

`(A050051(n+1)+A050043(n+1))/2`
-/

namespace A050047.P4582169487247910296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050051 (n + 1) + A050043 (n + 1) : ℚ) / 2

end

end A050047.P4582169487247910296

/-! ## A050047.P11498237859611648964

`(A050059(n+1)+A050035(n+1))/2`
-/

namespace A050047.P11498237859611648964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050059 (n + 1) + A050035 (n + 1) : ℚ) / 2

end

end A050047.P11498237859611648964

/-! ## A050047.P13634623627463930235

`(A050063(n+1)+A050031(n+1))/2`
-/

namespace A050047.P13634623627463930235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050063 (n + 1) + A050031 (n + 1) : ℚ) / 2

end

end A050047.P13634623627463930235

/-! ## A050047.P8880160300260339396

`(A050067(n+1)+A050027(n+1))/2`
-/

namespace A050047.P8880160300260339396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050067 (n + 1) + A050027 (n + 1) : ℚ) / 2

end

end A050047.P8880160300260339396

/-! ## A050047.P13523561220898297908

`2*A050051(n+1)-A050055(n+1)`
-/

namespace A050047.P13523561220898297908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050055 (n + 1)

end

end A050047.P13523561220898297908

/-! ## A050047.P3877899672063106257

`A050027(n+1)+A050051(n+1)-A050031(n+1)`
-/

namespace A050047.P3877899672063106257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050051 (n + 1) - A050031 (n + 1))

end

end A050047.P3877899672063106257

/-! ## A050047.P2147955246917882924

`A050031(n+1)+A050043(n+1)-A050027(n+1)`
-/

namespace A050047.P2147955246917882924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050043 (n + 1) - A050027 (n + 1))

end

end A050047.P2147955246917882924

/-! ## A050047.P5114228480367695635

`A050027(n+1)+A050055(n+1)-A050035(n+1)`
-/

namespace A050047.P5114228480367695635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050055 (n + 1) - A050035 (n + 1))

end

end A050047.P5114228480367695635

/-! ## A050047.P13226550708607011512

`A050031(n+1)+A050051(n+1)-A050035(n+1)`
-/

namespace A050047.P13226550708607011512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050051 (n + 1) - A050035 (n + 1))

end

end A050047.P13226550708607011512

/-! ## A050047.P6831711217189863940

`A050035(n+1)+A050043(n+1)-A050031(n+1)`
-/

namespace A050047.P6831711217189863940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050043 (n + 1) - A050031 (n + 1))

end

end A050047.P6831711217189863940

/-! ## A050047.P14182579746953179949

`A050039(n+1)+A050043(n+1)-A050035(n+1)`
-/

namespace A050047.P14182579746953179949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050043 (n + 1) - A050035 (n + 1))

end

end A050047.P14182579746953179949

/-! ## A050047.P2983712461987338039

`A050027(n+1)+A050063(n+1)-A050043(n+1)`
-/

namespace A050047.P2983712461987338039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050063 (n + 1) - A050043 (n + 1))

end

end A050047.P2983712461987338039

/-! ## A050047.P14860038959869345081

`A050031(n+1)+A050055(n+1)-A050039(n+1)`
-/

namespace A050047.P14860038959869345081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050055 (n + 1) - A050039 (n + 1))

end

end A050047.P14860038959869345081

/-! ## A050047.P176338665723672193

`A050031(n+1)+A050059(n+1)-A050043(n+1)`
-/

namespace A050047.P176338665723672193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050059 (n + 1) - A050043 (n + 1))

end

end A050047.P176338665723672193

/-! ## A050047.P11452506848485626236

`A050035(n+1)+A050051(n+1)-A050039(n+1)`
-/

namespace A050047.P11452506848485626236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050051 (n + 1) - A050039 (n + 1))

end

end A050047.P11452506848485626236

/-! ## A050047.P3940841491609299336

`A050027(n+1)+A050071(n+1)-A050051(n+1)`
-/

namespace A050047.P3940841491609299336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050071 (n + 1) - A050051 (n + 1))

end

end A050047.P3940841491609299336

/-! ## A050047.P5708277211336900758

`A050031(n+1)+A050067(n+1)-A050051(n+1)`
-/

namespace A050047.P5708277211336900758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050051 (n + 1))

end

end A050047.P5708277211336900758

/-! ## A050047.P15858570956544414576

`A050031(n+1)+A050071(n+1)-A050055(n+1)`
-/

namespace A050047.P15858570956544414576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050071 (n + 1) - A050055 (n + 1))

end

end A050047.P15858570956544414576

/-! ## A050047.P8643965703966623686

`A050035(n+1)+A050063(n+1)-A050051(n+1)`
-/

namespace A050047.P8643965703966623686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050051 (n + 1))

end

end A050047.P8643965703966623686

/-!
# A050048: a(n) = a(n-1) + a(m) for n >= 3, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 2.

The programs for A050048, there is no canonical definition to state claims against.
-/

/-! ## A050048.P18285804768547964812

`A050032(n+1)+char[1]`
-/

namespace A050048.P18285804768547964812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050048.P18285804768547964812

/-! ## A050048.P17691526132743407276

`A063524(n)+A050032(n+1)`
-/

namespace A050048.P17691526132743407276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A050032 (n + 1)

end

end A050048.P17691526132743407276

/-! ## A050048.P914543566252064852

`A159075(n)+A050064(n+1)`
-/

namespace A050048.P914543566252064852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A050064 (n + 1)

end

end A050048.P914543566252064852

/-! ## A050048.P1779894576387284943

`A050064(n+1)-A063524(n)`
-/

namespace A050048.P1779894576387284943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050064 (n + 1) - A063524 n

end

end A050048.P1779894576387284943

/-! ## A050048.P10328369910410171193

`A050032(n+1)*A373565(n)`
-/

namespace A050048.P10328369910410171193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) * A373565 n

end

end A050048.P10328369910410171193

/-! ## A050048.P975266390252507318

`lcm(A000034(n), A050032(n+1))`
-/

namespace A050048.P975266390252507318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A050032 (n + 1))

end

end A050048.P975266390252507318

/-! ## A050048.P4190062965535885700

`2*A050044(n+1)-A050040(n+1)`
-/

namespace A050048.P4190062965535885700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050044 (n + 1) - A050040 (n + 1)

end

end A050048.P4190062965535885700

/-! ## A050048.P13823865560409624317

`(A050052(n+1)+A050044(n+1))/2`
-/

namespace A050048.P13823865560409624317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050052 (n + 1) + A050044 (n + 1) : ℚ) / 2

end

end A050048.P13823865560409624317

/-! ## A050048.P15801103873938714239

`(A050060(n+1)+A050036(n+1))/2`
-/

namespace A050048.P15801103873938714239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050060 (n + 1) + A050036 (n + 1) : ℚ) / 2

end

end A050048.P15801103873938714239

/-! ## A050048.P968668936482954523

`(A050064(n+1)+A050032(n+1))/2`
-/

namespace A050048.P968668936482954523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050064 (n + 1) + A050032 (n + 1) : ℚ) / 2

end

end A050048.P968668936482954523

/-! ## A050048.P4568047123422886148

`(A050068(n+1)+A050028(n+1))/2`
-/

namespace A050048.P4568047123422886148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050068 (n + 1) + A050028 (n + 1) : ℚ) / 2

end

end A050048.P4568047123422886148

/-! ## A050048.P11424236241471079083

`(A050032(n+1)+A050032(A348776(n+1)))/2`
-/

namespace A050048.P11424236241471079083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050032 (n + 1) + A050032 (A348776 (n + 1)).toNat : ℚ) / 2

end

end A050048.P11424236241471079083

/-! ## A050048.P15426070127556344114

`A050024(n+1)+A050052(n+1)-A050028(n+1)`
-/

namespace A050048.P15426070127556344114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050052 (n + 1) - A050028 (n + 1))

end

end A050048.P15426070127556344114

/-! ## A050048.P13020046651334477386

`A050028(n+1)+A050044(n+1)-A050024(n+1)`
-/

namespace A050048.P13020046651334477386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050044 (n + 1) - A050024 (n + 1))

end

end A050048.P13020046651334477386

/-! ## A050048.P13581499840025788131

`A050028(n+1)+A050052(n+1)-A050032(n+1)`
-/

namespace A050048.P13581499840025788131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050052 (n + 1) - A050032 (n + 1))

end

end A050048.P13581499840025788131

/-! ## A050048.P12051691396652589739

`A050036(n+1)+A050040(n+1)-A050028(n+1)`
-/

namespace A050048.P12051691396652589739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) + (A050040 (n + 1) - A050028 (n + 1))

end

end A050048.P12051691396652589739

/-! ## A050048.P15984147501636215435

`A050036(n+1)+A050044(n+1)-A050032(n+1)`
-/

namespace A050048.P15984147501636215435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) + (A050044 (n + 1) - A050032 (n + 1))

end

end A050048.P15984147501636215435

/-! ## A050048.P5890844765980506481

`A050044(n+1)+A050032(n+1)-A050028(n+1)`
-/

namespace A050048.P5890844765980506481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050032 (n + 1) - A050028 (n + 1))

end

end A050048.P5890844765980506481

/-! ## A050048.P11858512923747169554

`A050024(n+1)+A050064(n+1)-A050040(n+1)`
-/

namespace A050048.P11858512923747169554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050064 (n + 1) - A050040 (n + 1))

end

end A050048.P11858512923747169554

/-! ## A050048.P131105576255081603

`A050024(n+1)+A050068(n+1)-A050044(n+1)`
-/

namespace A050048.P131105576255081603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050068 (n + 1) - A050044 (n + 1))

end

end A050048.P131105576255081603

/-!
# A050049: a(n) = a(n-1) + a(m) for n >= 3, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 2.

The programs for A050049, there is no canonical definition to state claims against.
-/

/-! ## A050049.P6121736722517162140

`A329474(n+1)+A050029(n+1)`
-/

namespace A050049.P6121736722517162140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329474 (n + 1) + A050029 (n + 1)

end

end A050049.P6121736722517162140

/-! ## A050049.P6587192791867671663

`A050069(n+1)-A329474(n+1)`
-/

namespace A050049.P6587192791867671663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050069 (n + 1) - A329474 (n + 1)

end

end A050049.P6587192791867671663

/-! ## A050049.P2643795562896548448

`2*A050045(n+1)-A050041(n+1)`
-/

namespace A050049.P2643795562896548448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050041 (n + 1)

end

end A050049.P2643795562896548448

/-! ## A050049.P10496150789548388163

`(A050053(n+1)+A050045(n+1))/2`
-/

namespace A050049.P10496150789548388163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050053 (n + 1) + A050045 (n + 1) : ℚ) / 2

end

end A050049.P10496150789548388163

/-! ## A050049.P7768329395808561249

`(A050061(n+1)+A050037(n+1))/2`
-/

namespace A050049.P7768329395808561249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050061 (n + 1) + A050037 (n + 1) : ℚ) / 2

end

end A050049.P7768329395808561249

/-! ## A050049.P6805662220115980497

`(A050065(n+1)+A050033(n+1))/2`
-/

namespace A050049.P6805662220115980497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050065 (n + 1) + A050033 (n + 1) : ℚ) / 2

end

end A050049.P6805662220115980497

/-! ## A050049.P1153552968034834322

`(A050069(n+1)+A050029(n+1))/2`
-/

namespace A050049.P1153552968034834322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050069 (n + 1) + A050029 (n + 1) : ℚ) / 2

end

end A050049.P1153552968034834322

/-! ## A050049.P17831413419801012390

`A050025(n+1)+A050053(n+1)-A050029(n+1)`
-/

namespace A050049.P17831413419801012390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050053 (n + 1) - A050029 (n + 1))

end

end A050049.P17831413419801012390

/-! ## A050049.P639224426364624195

`A050029(n+1)+A050045(n+1)-A050025(n+1)`
-/

namespace A050049.P639224426364624195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050045 (n + 1) - A050025 (n + 1))

end

end A050049.P639224426364624195

/-! ## A050049.P2389693158431485808

`A050033(n+1)+A050041(n+1)-A050025(n+1)`
-/

namespace A050049.P2389693158431485808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050041 (n + 1) - A050025 (n + 1))

end

end A050049.P2389693158431485808

/-! ## A050049.P6667044051263970448

`A050029(n+1)+A050053(n+1)-A050033(n+1)`
-/

namespace A050049.P6667044051263970448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050053 (n + 1) - A050033 (n + 1))

end

end A050049.P6667044051263970448

/-! ## A050049.P5147027238722252951

`A050033(n+1)+A050045(n+1)-A050029(n+1)`
-/

namespace A050049.P5147027238722252951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050045 (n + 1) - A050029 (n + 1))

end

end A050049.P5147027238722252951

/-! ## A050049.P6138688449287345866

`A050037(n+1)+A050041(n+1)-A050029(n+1)`
-/

namespace A050049.P6138688449287345866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050041 (n + 1) - A050029 (n + 1))

end

end A050049.P6138688449287345866

/-! ## A050049.P6429550476139080867

`A050037(n+1)+A050045(n+1)-A050033(n+1)`
-/

namespace A050049.P6429550476139080867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050045 (n + 1) - A050033 (n + 1))

end

end A050049.P6429550476139080867

/-! ## A050049.P6304174399278513482

`A050025(n+1)+A050065(n+1)-A050041(n+1)`
-/

namespace A050049.P6304174399278513482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050065 (n + 1) - A050041 (n + 1))

end

end A050049.P6304174399278513482

/-! ## A050049.P2380047346663129574

`A050029(n+1)+A050061(n+1)-A050041(n+1)`
-/

namespace A050049.P2380047346663129574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050061 (n + 1) - A050041 (n + 1))

end

end A050049.P2380047346663129574

/-! ## A050049.P16602799307434826519

`A050033(n+1)+A050053(n+1)-A050037(n+1)`
-/

namespace A050049.P16602799307434826519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050053 (n + 1) - A050037 (n + 1))

end

end A050049.P16602799307434826519

/-! ## A050049.P12704373552005548809

`A050025(n+1)+A050069(n+1)-A050045(n+1)`
-/

namespace A050049.P12704373552005548809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050045 (n + 1))

end

end A050049.P12704373552005548809

/-! ## A050049.P15420988942924283393

`A050029(n+1)+A050065(n+1)-A050045(n+1)`
-/

namespace A050049.P15420988942924283393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050045 (n + 1))

end

end A050049.P15420988942924283393

/-!
# A050050: a(n) = a(n-1)+a(m), where m=n-1-2^p and 2^p= 4.

The programs for A050050, there is no canonical definition to state claims against.
-/

/-! ## A050050.P12432069539863437707

`2*A050046(n+1)-A050042(n+1)`
-/

namespace A050050.P12432069539863437707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050042 (n + 1)

end

end A050050.P12432069539863437707

/-! ## A050050.P15475766457102756189

`(A050054(n+1)+A050046(n+1))/2`
-/

namespace A050050.P15475766457102756189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050054 (n + 1) + A050046 (n + 1) : ℚ) / 2

end

end A050050.P15475766457102756189

/-! ## A050050.P16851858907797630590

`(A050062(n+1)+A050038(n+1))/2`
-/

namespace A050050.P16851858907797630590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050062 (n + 1) + A050038 (n + 1) : ℚ) / 2

end

end A050050.P16851858907797630590

/-! ## A050050.P17391804263600911466

`(A050066(n+1)+A050034(n+1))/2`
-/

namespace A050050.P17391804263600911466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050066 (n + 1) + A050034 (n + 1) : ℚ) / 2

end

end A050050.P17391804263600911466

/-! ## A050050.P12311425359502275751

`(A050070(n+1)+A050030(n+1))/2`
-/

namespace A050050.P12311425359502275751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050070 (n + 1) + A050030 (n + 1) : ℚ) / 2

end

end A050050.P12311425359502275751

/-! ## A050050.P2300264299186154793

`A050026(n+1)+A050054(n+1)-A050030(n+1)`
-/

namespace A050050.P2300264299186154793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050054 (n + 1) - A050030 (n + 1))

end

end A050050.P2300264299186154793

/-! ## A050050.P11687621344403421799

`A050030(n+1)+A050046(n+1)-A050026(n+1)`
-/

namespace A050050.P11687621344403421799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050046 (n + 1) - A050026 (n + 1))

end

end A050050.P11687621344403421799

/-! ## A050050.P8683996096812077520

`A050034(n+1)+A050042(n+1)-A050026(n+1)`
-/

namespace A050050.P8683996096812077520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050042 (n + 1) - A050026 (n + 1))

end

end A050050.P8683996096812077520

/-! ## A050050.P12144601523551206706

`A050030(n+1)+A050054(n+1)-A050034(n+1)`
-/

namespace A050050.P12144601523551206706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050054 (n + 1) - A050034 (n + 1))

end

end A050050.P12144601523551206706

/-! ## A050050.P18045137607346477365

`A050034(n+1)+A050046(n+1)-A050030(n+1)`
-/

namespace A050050.P18045137607346477365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050046 (n + 1) - A050030 (n + 1))

end

end A050050.P18045137607346477365

/-! ## A050050.P13700411595497615482

`A050038(n+1)+A050042(n+1)-A050030(n+1)`
-/

namespace A050050.P13700411595497615482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050042 (n + 1) - A050030 (n + 1))

end

end A050050.P13700411595497615482

/-! ## A050050.P10951587587881869817

`A050038(n+1)+A050046(n+1)-A050034(n+1)`
-/

namespace A050050.P10951587587881869817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050046 (n + 1) - A050034 (n + 1))

end

end A050050.P10951587587881869817

/-! ## A050050.P12540999504361663698

`A050026(n+1)+A050066(n+1)-A050042(n+1)`
-/

namespace A050050.P12540999504361663698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050066 (n + 1) - A050042 (n + 1))

end

end A050050.P12540999504361663698

/-! ## A050050.P3978886741577866536

`A050030(n+1)+A050062(n+1)-A050042(n+1)`
-/

namespace A050050.P3978886741577866536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050062 (n + 1) - A050042 (n + 1))

end

end A050050.P3978886741577866536

/-! ## A050050.P8670842500481729541

`A050034(n+1)+A050054(n+1)-A050038(n+1)`
-/

namespace A050050.P8670842500481729541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050054 (n + 1) - A050038 (n + 1))

end

end A050050.P8670842500481729541

/-! ## A050050.P7450684352798686554

`A050026(n+1)+A050070(n+1)-A050046(n+1)`
-/

namespace A050050.P7450684352798686554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050070 (n + 1) - A050046 (n + 1))

end

end A050050.P7450684352798686554

/-! ## A050050.P641537090013289126

`A050030(n+1)+A050066(n+1)-A050046(n+1)`
-/

namespace A050050.P641537090013289126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050066 (n + 1) - A050046 (n + 1))

end

end A050050.P641537090013289126

/-! ## A050050.P8764726292441182447

`A050034(n+1)+A050058(n+1)-A050042(n+1)`
-/

namespace A050050.P8764726292441182447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050058 (n + 1) - A050042 (n + 1))

end

end A050050.P8764726292441182447

/-! ## A050050.P14311344502098503713

`A050034(n+1)+A050062(n+1)-A050046(n+1)`
-/

namespace A050050.P14311344502098503713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050046 (n + 1))

end

end A050050.P14311344502098503713

/-! ## A050050.P12236437105925538193

`A050038(n+1)+A050058(n+1)-A050046(n+1)`
-/

namespace A050050.P12236437105925538193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050046 (n + 1))

end

end A050050.P12236437105925538193

/-!
# A050051: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A050051, there is no canonical definition to state claims against.
-/

/-! ## A050051.P15701594163125499245

`2*A050047(n+1)-A050043(n+1)`
-/

namespace A050051.P15701594163125499245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050047 (n + 1) - A050043 (n + 1)

end

end A050051.P15701594163125499245

/-! ## A050051.P865146753303383410

`(A050055(n+1)+A050047(n+1))/2`
-/

namespace A050051.P865146753303383410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050055 (n + 1) + A050047 (n + 1) : ℚ) / 2

end

end A050051.P865146753303383410

/-! ## A050051.P12140537170314598448

`(A050063(n+1)+A050039(n+1))/2`
-/

namespace A050051.P12140537170314598448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050063 (n + 1) + A050039 (n + 1) : ℚ) / 2

end

end A050051.P12140537170314598448

/-! ## A050051.P13029890380652478881

`(A050067(n+1)+A050035(n+1))/2`
-/

namespace A050051.P13029890380652478881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050067 (n + 1) + A050035 (n + 1) : ℚ) / 2

end

end A050051.P13029890380652478881

/-! ## A050051.P16994652643974133830

`(A050071(n+1)+A050031(n+1))/2`
-/

namespace A050051.P16994652643974133830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050071 (n + 1) + A050031 (n + 1) : ℚ) / 2

end

end A050051.P16994652643974133830

/-! ## A050051.P1546384702275498662

`A050027(n+1)+A050055(n+1)-A050031(n+1)`
-/

namespace A050051.P1546384702275498662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050055 (n + 1) - A050031 (n + 1))

end

end A050051.P1546384702275498662

/-! ## A050051.P1947292264812280710

`A050031(n+1)+A050047(n+1)-A050027(n+1)`
-/

namespace A050051.P1947292264812280710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050047 (n + 1) - A050027 (n + 1))

end

end A050051.P1947292264812280710

/-! ## A050051.P17244012236622288419

`A050035(n+1)+A050043(n+1)-A050027(n+1)`
-/

namespace A050051.P17244012236622288419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050043 (n + 1) - A050027 (n + 1))

end

end A050051.P17244012236622288419

/-! ## A050051.P9474243016755995125

`A050031(n+1)+A050055(n+1)-A050035(n+1)`
-/

namespace A050051.P9474243016755995125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050055 (n + 1) - A050035 (n + 1))

end

end A050051.P9474243016755995125

/-! ## A050051.P9590087923612246556

`A050035(n+1)+A050047(n+1)-A050031(n+1)`
-/

namespace A050051.P9590087923612246556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050047 (n + 1) - A050031 (n + 1))

end

end A050051.P9590087923612246556

/-! ## A050051.P16940308023822956204

`A050039(n+1)+A050043(n+1)-A050031(n+1)`
-/

namespace A050051.P16940308023822956204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050043 (n + 1) - A050031 (n + 1))

end

end A050051.P16940308023822956204

/-! ## A050051.P2913323686893864586

`A050039(n+1)+A050047(n+1)-A050035(n+1)`
-/

namespace A050051.P2913323686893864586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050047 (n + 1) - A050035 (n + 1))

end

end A050051.P2913323686893864586

/-! ## A050051.P8774380957519941819

`A050027(n+1)+A050067(n+1)-A050043(n+1)`
-/

namespace A050051.P8774380957519941819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050067 (n + 1) - A050043 (n + 1))

end

end A050051.P8774380957519941819

/-! ## A050051.P7157730527617604960

`A050031(n+1)+A050063(n+1)-A050043(n+1)`
-/

namespace A050051.P7157730527617604960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050063 (n + 1) - A050043 (n + 1))

end

end A050051.P7157730527617604960

/-! ## A050051.P11789551034872713957

`A050035(n+1)+A050055(n+1)-A050039(n+1)`
-/

namespace A050051.P11789551034872713957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050055 (n + 1) - A050039 (n + 1))

end

end A050051.P11789551034872713957

/-! ## A050051.P3901788659355646500

`A050027(n+1)+A050071(n+1)-A050047(n+1)`
-/

namespace A050051.P3901788659355646500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050071 (n + 1) - A050047 (n + 1))

end

end A050051.P3901788659355646500

/-! ## A050051.P11478981520555929704

`A050031(n+1)+A050067(n+1)-A050047(n+1)`
-/

namespace A050051.P11478981520555929704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050047 (n + 1))

end

end A050051.P11478981520555929704

/-! ## A050051.P5648192782804305998

`A050035(n+1)+A050059(n+1)-A050043(n+1)`
-/

namespace A050051.P5648192782804305998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050059 (n + 1) - A050043 (n + 1))

end

end A050051.P5648192782804305998

/-! ## A050051.P7098389856095798088

`A050035(n+1)+A050063(n+1)-A050047(n+1)`
-/

namespace A050051.P7098389856095798088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050047 (n + 1))

end

end A050051.P7098389856095798088

/-! ## A050051.P13093298341049284917

`A050043(n+1)+A050055(n+1)-A050047(n+1)`
-/

namespace A050051.P13093298341049284917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050055 (n + 1) - A050047 (n + 1))

end

end A050051.P13093298341049284917

/-!
# A050052: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A050052, there is no canonical definition to state claims against.
-/

/-! ## A050052.P6243008401302750024

`A050036(n+1)+char[1]`
-/

namespace A050052.P6243008401302750024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050052.P6243008401302750024

/-! ## A050052.P4022949743839275601

`A050068(n+1)-char[1]`
-/

namespace A050052.P4022949743839275601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050068 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050052.P4022949743839275601

/-! ## A050052.P13357929726422418368

`A063524(n)+A050036(n+1)`
-/

namespace A050052.P13357929726422418368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A050036 (n + 1)

end

end A050052.P13357929726422418368

/-! ## A050052.P4251978230935997610

`A159075(n)+A050068(n+1)`
-/

namespace A050052.P4251978230935997610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A050068 (n + 1)

end

end A050052.P4251978230935997610

/-! ## A050052.P13924068784252704011

`A050036(n+1)*A373565(n)`
-/

namespace A050052.P13924068784252704011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) * A373565 n

end

end A050052.P13924068784252704011

/-! ## A050052.P4053420925419465557

`lcm(A014695(n), A050036(n+1))`
-/

namespace A050052.P4053420925419465557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014695 n) (A050036 (n + 1))

end

end A050052.P4053420925419465557

/-! ## A050052.P4846206753253053962

`xor(A050068(n+1), A063524(n))`
-/

namespace A050052.P4846206753253053962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A050068 (n + 1)) (A063524 n)

end

end A050052.P4846206753253053962

/-! ## A050052.P17473645284921948997

`2*A050048(n+1)-A050044(n+1)`
-/

namespace A050052.P17473645284921948997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050048 (n + 1) - A050044 (n + 1)

end

end A050052.P17473645284921948997

/-! ## A050052.P12245815987627335519

`(A050068(n+1)+A050036(n+1))/2`
-/

namespace A050052.P12245815987627335519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050068 (n + 1) + A050036 (n + 1) : ℚ) / 2

end

end A050052.P12245815987627335519

/-! ## A050052.P1011580721815703058

`A050028(n+1)+A050048(n+1)-A050024(n+1)`
-/

namespace A050052.P1011580721815703058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050048 (n + 1) - A050024 (n + 1))

end

end A050052.P1011580721815703058

/-! ## A050052.P2434747532436245354

`A050032(n+1)+A050044(n+1)-A050024(n+1)`
-/

namespace A050052.P2434747532436245354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050044 (n + 1) - A050024 (n + 1))

end

end A050052.P2434747532436245354

/-! ## A050052.P3412284155694814346

`A050032(n+1)+A050048(n+1)-A050028(n+1)`
-/

namespace A050052.P3412284155694814346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050048 (n + 1) - A050028 (n + 1))

end

end A050052.P3412284155694814346

/-! ## A050052.P4725702268021285931

`A050044(n+1)+A050036(n+1)-A050028(n+1)`
-/

namespace A050052.P4725702268021285931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050036 (n + 1) - A050028 (n + 1))

end

end A050052.P4725702268021285931

/-! ## A050052.P3757991907564571187

`A050024(n+1)+A050068(n+1)-A050040(n+1)`
-/

namespace A050052.P3757991907564571187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050068 (n + 1) - A050040 (n + 1))

end

end A050052.P3757991907564571187

/-! ## A050052.P10798982619938557395

`A050028(n+1)+A050064(n+1)-A050040(n+1)`
-/

namespace A050052.P10798982619938557395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050064 (n + 1) - A050040 (n + 1))

end

end A050052.P10798982619938557395

/-! ## A050052.P14947506074065370592

`A050028(n+1)+A050068(n+1)-A050044(n+1)`
-/

namespace A050052.P14947506074065370592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050068 (n + 1) - A050044 (n + 1))

end

end A050052.P14947506074065370592

/-! ## A050052.P12169826336728103952

`A050032(n+1)+A050060(n+1)-A050040(n+1)`
-/

namespace A050052.P12169826336728103952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050060 (n + 1) - A050040 (n + 1))

end

end A050052.P12169826336728103952

/-! ## A050052.P8578934735536582514

`A050032(n+1)+A050064(n+1)-A050044(n+1)`
-/

namespace A050052.P8578934735536582514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050064 (n + 1) - A050044 (n + 1))

end

end A050052.P8578934735536582514

/-! ## A050052.P8141880060093971753

`A050032(n+1)+A050068(n+1)-A050048(n+1)`
-/

namespace A050052.P8141880060093971753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050068 (n + 1) - A050048 (n + 1))

end

end A050052.P8141880060093971753

/-! ## A050052.P4687118895027700912

`A050040(n+1)+A050068(n+1)-A050056(n+1)`
-/

namespace A050052.P4687118895027700912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (n + 1) + (A050068 (n + 1) - A050056 (n + 1))

end

end A050052.P4687118895027700912

/-!
# A050053: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A050053, there is no canonical definition to state claims against.
-/

/-! ## A050053.P12400007422157991714

`A329474(n+1)+A050033(n+1)`
-/

namespace A050053.P12400007422157991714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329474 (n + 1) + A050033 (n + 1)

end

end A050053.P12400007422157991714

/-! ## A050053.P4733784043162499603

`2*A050049(n+1)-A050045(n+1)`
-/

namespace A050053.P4733784043162499603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050045 (n + 1)

end

end A050053.P4733784043162499603

/-! ## A050053.P9903760780094981818

`(A050069(n+1)+A050037(n+1))/2`
-/

namespace A050053.P9903760780094981818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050069 (n + 1) + A050037 (n + 1) : ℚ) / 2

end

end A050053.P9903760780094981818

/-! ## A050053.P17868911053594556402

`A050029(n+1)+A050049(n+1)-A050025(n+1)`
-/

namespace A050053.P17868911053594556402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050049 (n + 1) - A050025 (n + 1))

end

end A050053.P17868911053594556402

/-! ## A050053.P5547191142341230753

`A050033(n+1)+A050045(n+1)-A050025(n+1)`
-/

namespace A050053.P5547191142341230753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050045 (n + 1) - A050025 (n + 1))

end

end A050053.P5547191142341230753

/-! ## A050053.P3612929746189421085

`A050033(n+1)+A050049(n+1)-A050029(n+1)`
-/

namespace A050053.P3612929746189421085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050049 (n + 1) - A050029 (n + 1))

end

end A050053.P3612929746189421085

/-! ## A050053.P7612303117446654244

`A050037(n+1)+A050041(n+1)-A050025(n+1)`
-/

namespace A050053.P7612303117446654244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050041 (n + 1) - A050025 (n + 1))

end

end A050053.P7612303117446654244

/-! ## A050053.P10167708392977342979

`A050037(n+1)+A050045(n+1)-A050029(n+1)`
-/

namespace A050053.P10167708392977342979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050045 (n + 1) - A050029 (n + 1))

end

end A050053.P10167708392977342979

/-! ## A050053.P732657441122504037

`A050037(n+1)+A050049(n+1)-A050033(n+1)`
-/

namespace A050053.P732657441122504037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050049 (n + 1) - A050033 (n + 1))

end

end A050053.P732657441122504037

/-! ## A050053.P8862480231197258419

`A050025(n+1)+A050069(n+1)-A050041(n+1)`
-/

namespace A050053.P8862480231197258419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050041 (n + 1))

end

end A050053.P8862480231197258419

/-! ## A050053.P10017782414975397554

`A050029(n+1)+A050065(n+1)-A050041(n+1)`
-/

namespace A050053.P10017782414975397554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050041 (n + 1))

end

end A050053.P10017782414975397554

/-! ## A050053.P6596575352776679057

`A050029(n+1)+A050069(n+1)-A050045(n+1)`
-/

namespace A050053.P6596575352776679057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050069 (n + 1) - A050045 (n + 1))

end

end A050053.P6596575352776679057

/-! ## A050053.P8767815992796783064

`A050033(n+1)+A050061(n+1)-A050041(n+1)`
-/

namespace A050053.P8767815992796783064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050061 (n + 1) - A050041 (n + 1))

end

end A050053.P8767815992796783064

/-! ## A050053.P64643948742403528

`A050033(n+1)+A050065(n+1)-A050045(n+1)`
-/

namespace A050053.P64643948742403528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050065 (n + 1) - A050045 (n + 1))

end

end A050053.P64643948742403528

/-! ## A050053.P5029058243395671296

`A050037(n+1)+A050057(n+1)-A050041(n+1)`
-/

namespace A050053.P5029058243395671296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050057 (n + 1) - A050041 (n + 1))

end

end A050053.P5029058243395671296

/-! ## A050053.P950086352712412771

`A050045(n+1)+A050049(n+1)-A050041(n+1)`
-/

namespace A050053.P950086352712412771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050041 (n + 1))

end

end A050053.P950086352712412771

/-! ## A050053.P17343151902628527722

`A050033(n+1)+A050069(n+1)-A050049(n+1)`
-/

namespace A050053.P17343151902628527722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050069 (n + 1) - A050049 (n + 1))

end

end A050053.P17343151902628527722

/-! ## A050053.P2253429895736606345

`A050037(n+1)+A050061(n+1)-A050045(n+1)`
-/

namespace A050053.P2253429895736606345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050061 (n + 1) - A050045 (n + 1))

end

end A050053.P2253429895736606345

/-! ## A050053.P14949740431248384061

`A050037(n+1)+A050065(n+1)-A050049(n+1)`
-/

namespace A050053.P14949740431248384061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050065 (n + 1) - A050049 (n + 1))

end

end A050053.P14949740431248384061

/-! ## A050053.P16574763603889599805

`A050041(n+1)+A050069(n+1)-A050057(n+1)`
-/

namespace A050053.P16574763603889599805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050069 (n + 1) - A050057 (n + 1))

end

end A050053.P16574763603889599805

/-!
# A050054: a(n) = a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A050054, there is no canonical definition to state claims against.
-/

/-! ## A050054.P4585959485975561985

`2*A050050(n+1)-A050046(n+1)`
-/

namespace A050054.P4585959485975561985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050046 (n + 1)

end

end A050054.P4585959485975561985

/-! ## A050054.P2112858751446793290

`(A050070(n+1)+A050038(n+1))/2`
-/

namespace A050054.P2112858751446793290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050070 (n + 1) + A050038 (n + 1) : ℚ) / 2

end

end A050054.P2112858751446793290

/-! ## A050054.P16066129196658622229

`A050030(n+1)+A050050(n+1)-A050026(n+1)`
-/

namespace A050054.P16066129196658622229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050050 (n + 1) - A050026 (n + 1))

end

end A050054.P16066129196658622229

/-! ## A050054.P11022596313801460718

`A050034(n+1)+A050046(n+1)-A050026(n+1)`
-/

namespace A050054.P11022596313801460718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050046 (n + 1) - A050026 (n + 1))

end

end A050054.P11022596313801460718

/-! ## A050054.P12323019098891561290

`A050034(n+1)+A050050(n+1)-A050030(n+1)`
-/

namespace A050054.P12323019098891561290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050050 (n + 1) - A050030 (n + 1))

end

end A050054.P12323019098891561290

/-! ## A050054.P12820325195396210221

`A050038(n+1)+A050042(n+1)-A050026(n+1)`
-/

namespace A050054.P12820325195396210221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050042 (n + 1) - A050026 (n + 1))

end

end A050054.P12820325195396210221

/-! ## A050054.P10080886844730675455

`A050038(n+1)+A050046(n+1)-A050030(n+1)`
-/

namespace A050054.P10080886844730675455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050046 (n + 1) - A050030 (n + 1))

end

end A050054.P10080886844730675455

/-! ## A050054.P7629972041568057297

`A050038(n+1)+A050050(n+1)-A050034(n+1)`
-/

namespace A050054.P7629972041568057297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050050 (n + 1) - A050034 (n + 1))

end

end A050054.P7629972041568057297

/-! ## A050054.P5950499956473093262

`A050026(n+1)+A050070(n+1)-A050042(n+1)`
-/

namespace A050054.P5950499956473093262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050070 (n + 1) - A050042 (n + 1))

end

end A050054.P5950499956473093262

/-! ## A050054.P6191423267542646734

`A050030(n+1)+A050066(n+1)-A050042(n+1)`
-/

namespace A050054.P6191423267542646734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050066 (n + 1) - A050042 (n + 1))

end

end A050054.P6191423267542646734

/-! ## A050054.P3197825365627627880

`A050030(n+1)+A050070(n+1)-A050046(n+1)`
-/

namespace A050054.P3197825365627627880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050070 (n + 1) - A050046 (n + 1))

end

end A050054.P3197825365627627880

/-! ## A050054.P12720351476850511160

`A050034(n+1)+A050062(n+1)-A050042(n+1)`
-/

namespace A050054.P12720351476850511160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050042 (n + 1))

end

end A050054.P12720351476850511160

/-! ## A050054.P10867855581607003216

`A050034(n+1)+A050066(n+1)-A050046(n+1)`
-/

namespace A050054.P10867855581607003216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050066 (n + 1) - A050046 (n + 1))

end

end A050054.P10867855581607003216

/-! ## A050054.P11731130837180155941

`A050038(n+1)+A050058(n+1)-A050042(n+1)`
-/

namespace A050054.P11731130837180155941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050042 (n + 1))

end

end A050054.P11731130837180155941

/-! ## A050054.P715483267814070253

`A050046(n+1)+A050050(n+1)-A050042(n+1)`
-/

namespace A050054.P715483267814070253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050042 (n + 1))

end

end A050054.P715483267814070253

/-! ## A050054.P2487462112319545839

`A050034(n+1)+A050070(n+1)-A050050(n+1)`
-/

namespace A050054.P2487462112319545839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050070 (n + 1) - A050050 (n + 1))

end

end A050054.P2487462112319545839

/-! ## A050054.P9483513798394729559

`A050038(n+1)+A050062(n+1)-A050046(n+1)`
-/

namespace A050054.P9483513798394729559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050062 (n + 1) - A050046 (n + 1))

end

end A050054.P9483513798394729559

/-! ## A050054.P13889514773435557298

`A050038(n+1)+A050066(n+1)-A050050(n+1)`
-/

namespace A050054.P13889514773435557298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050066 (n + 1) - A050050 (n + 1))

end

end A050054.P13889514773435557298

/-! ## A050054.P12402133130314227099

`A050042(n+1)+A050070(n+1)-A050058(n+1)`
-/

namespace A050054.P12402133130314227099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050070 (n + 1) - A050058 (n + 1))

end

end A050054.P12402133130314227099

/-! ## A050054.P13649805800998520750

`A050050(n+1)+A050062(n+1)-A050058(n+1)`
-/

namespace A050054.P13649805800998520750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050062 (n + 1) - A050058 (n + 1))

end

end A050054.P13649805800998520750

/-!
# A050055: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A050055, there is no canonical definition to state claims against.
-/

/-! ## A050055.P14262316332794260292

`2*A050051(n+1)-A050047(n+1)`
-/

namespace A050055.P14262316332794260292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050047 (n + 1)

end

end A050055.P14262316332794260292

/-! ## A050055.P11632490333470424298

`(A050071(n+1)+A050039(n+1))/2`
-/

namespace A050055.P11632490333470424298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050071 (n + 1) + A050039 (n + 1) : ℚ) / 2

end

end A050055.P11632490333470424298

/-! ## A050055.P9920287519214961706

`A050031(n+1)+A050051(n+1)-A050027(n+1)`
-/

namespace A050055.P9920287519214961706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050051 (n + 1) - A050027 (n + 1))

end

end A050055.P9920287519214961706

/-! ## A050055.P17869793564214384720

`A050035(n+1)+A050047(n+1)-A050027(n+1)`
-/

namespace A050055.P17869793564214384720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050047 (n + 1) - A050027 (n + 1))

end

end A050055.P17869793564214384720

/-! ## A050055.P7496706246309156966

`A050035(n+1)+A050051(n+1)-A050031(n+1)`
-/

namespace A050055.P7496706246309156966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050051 (n + 1) - A050031 (n + 1))

end

end A050055.P7496706246309156966

/-! ## A050055.P18090145945430986868

`A050039(n+1)+A050043(n+1)-A050027(n+1)`
-/

namespace A050055.P18090145945430986868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050043 (n + 1) - A050027 (n + 1))

end

end A050055.P18090145945430986868

/-! ## A050055.P749661236240391649

`A050039(n+1)+A050047(n+1)-A050031(n+1)`
-/

namespace A050055.P749661236240391649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050047 (n + 1) - A050031 (n + 1))

end

end A050055.P749661236240391649

/-! ## A050055.P9515197772013792106

`A050039(n+1)+A050051(n+1)-A050035(n+1)`
-/

namespace A050055.P9515197772013792106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050051 (n + 1) - A050035 (n + 1))

end

end A050055.P9515197772013792106

/-! ## A050055.P9768926304607621235

`A050027(n+1)+A050071(n+1)-A050043(n+1)`
-/

namespace A050055.P9768926304607621235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050071 (n + 1) - A050043 (n + 1))

end

end A050055.P9768926304607621235

/-! ## A050055.P16291258590019797234

`A050031(n+1)+A050067(n+1)-A050043(n+1)`
-/

namespace A050055.P16291258590019797234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050043 (n + 1))

end

end A050055.P16291258590019797234

/-! ## A050055.P10155198510893371958

`A050031(n+1)+A050071(n+1)-A050047(n+1)`
-/

namespace A050055.P10155198510893371958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050071 (n + 1) - A050047 (n + 1))

end

end A050055.P10155198510893371958

/-! ## A050055.P17148388637331705457

`A050035(n+1)+A050063(n+1)-A050043(n+1)`
-/

namespace A050055.P17148388637331705457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050043 (n + 1))

end

end A050055.P17148388637331705457

/-! ## A050055.P1071451412792332022

`A050035(n+1)+A050067(n+1)-A050047(n+1)`
-/

namespace A050055.P1071451412792332022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050067 (n + 1) - A050047 (n + 1))

end

end A050055.P1071451412792332022

/-! ## A050055.P2191383418161515690

`A050039(n+1)+A050059(n+1)-A050043(n+1)`
-/

namespace A050055.P2191383418161515690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050059 (n + 1) - A050043 (n + 1))

end

end A050055.P2191383418161515690

/-! ## A050055.P3104584755158034370

`A050047(n+1)+A050051(n+1)-A050043(n+1)`
-/

namespace A050055.P3104584755158034370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050043 (n + 1))

end

end A050055.P3104584755158034370

/-! ## A050055.P9576637988451297910

`A050035(n+1)+A050071(n+1)-A050051(n+1)`
-/

namespace A050055.P9576637988451297910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050071 (n + 1) - A050051 (n + 1))

end

end A050055.P9576637988451297910

/-! ## A050055.P4794160955842201938

`A050039(n+1)+A050063(n+1)-A050047(n+1)`
-/

namespace A050055.P4794160955842201938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050063 (n + 1) - A050047 (n + 1))

end

end A050055.P4794160955842201938

/-! ## A050055.P556668842218510674

`A050039(n+1)+A050067(n+1)-A050051(n+1)`
-/

namespace A050055.P556668842218510674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050067 (n + 1) - A050051 (n + 1))

end

end A050055.P556668842218510674

/-! ## A050055.P14139256579163410227

`A050043(n+1)+A050071(n+1)-A050059(n+1)`
-/

namespace A050055.P14139256579163410227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050071 (n + 1) - A050059 (n + 1))

end

end A050055.P14139256579163410227

/-!
# A050056: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A050056, there is no canonical definition to state claims against.
-/

/-! ## A050056.P16629891327173005724

`A050040(n+1)+char[1]`
-/

namespace A050056.P16629891327173005724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050056.P16629891327173005724

/-! ## A050056.P12925586462339412849

`A050024(n+1)+2*char[1]`
-/

namespace A050056.P12925586462339412849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A050056.P12925586462339412849

/-! ## A050056.P11054425852034798472

`A050024(A373565(n)²+n)`
-/

namespace A050056.P11054425852034798472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (A373565 n ^ 2 + (n : ℤ)).toNat

end

end A050056.P11054425852034798472

/-! ## A050056.P11437022290306818904

`A050040(A373565(n)²+n)`
-/

namespace A050056.P11437022290306818904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (A373565 n ^ 2 + (n : ℤ)).toNat

end

end A050056.P11437022290306818904

/-! ## A050056.P7476635535332489822

`A063524(n)+A050040(n+1)`
-/

namespace A050056.P7476635535332489822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A050040 (n + 1)

end

end A050056.P7476635535332489822

/-! ## A050056.P11765364961247749838

`lcm(A050024(n+1), A084642(n))`
-/

namespace A050056.P11765364961247749838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050024 (n + 1)) (A084642 n)

end

end A050056.P11765364961247749838

/-! ## A050056.P14535201092756388719

`or(A050024(n+1), A050040(n+1))`
-/

namespace A050056.P14535201092756388719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050024 (n + 1)) (A050040 (n + 1))

end

end A050056.P14535201092756388719

/-! ## A050056.P9497897657019414604

`2*A050044(n+1)-A050032(n+1)`
-/

namespace A050056.P9497897657019414604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050044 (n + 1) - A050032 (n + 1)

end

end A050056.P9497897657019414604

/-! ## A050056.P2608869575667080756

`A050028(n+1)+A050060(n+1)-A050032(n+1)`
-/

namespace A050056.P2608869575667080756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050060 (n + 1) - A050032 (n + 1))

end

end A050056.P2608869575667080756

/-! ## A050056.P15723648221995585761

`A050044(n+1)+A050040(n+1)-A050028(n+1)`
-/

namespace A050056.P15723648221995585761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050040 (n + 1) - A050028 (n + 1))

end

end A050056.P15723648221995585761

/-! ## A050056.P10683339511841738067

`A050028(n+1)+A050064(n+1)-A050036(n+1)`
-/

namespace A050056.P10683339511841738067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050064 (n + 1) - A050036 (n + 1))

end

end A050056.P10683339511841738067

/-! ## A050056.P7313604493211973758

`A050032(n+1)+A050060(n+1)-A050036(n+1)`
-/

namespace A050056.P7313604493211973758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050060 (n + 1) - A050036 (n + 1))

end

end A050056.P7313604493211973758

/-! ## A050056.P13561377258872026998

`A050044(n+1)+A050048(n+1)-A050036(n+1)`
-/

namespace A050056.P13561377258872026998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050048 (n + 1) - A050036 (n + 1))

end

end A050056.P13561377258872026998

/-! ## A050056.P1175088463251891959

`A050048(n+1)+A050040(n+1)-A050032(n+1)`
-/

namespace A050056.P1175088463251891959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (n + 1) + (A050040 (n + 1) - A050032 (n + 1))

end

end A050056.P1175088463251891959

/-! ## A050056.P5765057347704878322

`A050052(n+1)+A050040(n+1)-A050036(n+1)`
-/

namespace A050056.P5765057347704878322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050052 (n + 1) + (A050040 (n + 1) - A050036 (n + 1))

end

end A050056.P5765057347704878322

/-! ## A050056.P4506142784134562624

`A050068(n+1)+A050024(n+1)-A050036(n+1)`
-/

namespace A050056.P4506142784134562624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050068 (n + 1) + (A050024 (n + 1) - A050036 (n + 1))

end

end A050056.P4506142784134562624

/-! ## A050056.P14378301660878567517

`A050044(n+1)+A050060(n+1)-A050048(n+1)`
-/

namespace A050056.P14378301660878567517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050060 (n + 1) - A050048 (n + 1))

end

end A050056.P14378301660878567517

/-! ## A050056.P10395573511632279459

`A050044(n+1)+A050064(n+1)-A050052(n+1)`
-/

namespace A050056.P10395573511632279459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050064 (n + 1) - A050052 (n + 1))

end

end A050056.P10395573511632279459

/-! ## A050056.P8640079982509963400

`A050048(n+1)+A050060(n+1)-A050052(n+1)`
-/

namespace A050056.P8640079982509963400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (n + 1) + (A050060 (n + 1) - A050052 (n + 1))

end

end A050056.P8640079982509963400

/-!
# A050057: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A050057, there is no canonical definition to state claims against.
-/

/-! ## A050057.P15108833308852163445

`2*A050041(n+1)-A050025(n+1)`
-/

namespace A050057.P15108833308852163445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050041 (n + 1) - A050025 (n + 1)

end

end A050057.P15108833308852163445

/-! ## A050057.P4938656855372760461

`2*A050045(n+1)-A050033(n+1)`
-/

namespace A050057.P4938656855372760461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050033 (n + 1)

end

end A050057.P4938656855372760461

/-! ## A050057.P6267487023314381146

`A050025(n+1)+A050061(n+1)-A050029(n+1)`
-/

namespace A050057.P6267487023314381146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050061 (n + 1) - A050029 (n + 1))

end

end A050057.P6267487023314381146

/-! ## A050057.P14001875335985288168

`A050025(n+1)+A050065(n+1)-A050033(n+1)`
-/

namespace A050057.P14001875335985288168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050065 (n + 1) - A050033 (n + 1))

end

end A050057.P14001875335985288168

/-! ## A050057.P10437565986267123428

`A050029(n+1)+A050061(n+1)-A050033(n+1)`
-/

namespace A050057.P10437565986267123428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050061 (n + 1) - A050033 (n + 1))

end

end A050057.P10437565986267123428

/-! ## A050057.P15874436902531432297

`A050041(n+1)+A050045(n+1)-A050029(n+1)`
-/

namespace A050057.P15874436902531432297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050045 (n + 1) - A050029 (n + 1))

end

end A050057.P15874436902531432297

/-! ## A050057.P276753860266487063

`A050025(n+1)+A050069(n+1)-A050037(n+1)`
-/

namespace A050057.P276753860266487063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050037 (n + 1))

end

end A050057.P276753860266487063

/-! ## A050057.P4554569951499946346

`A050029(n+1)+A050065(n+1)-A050037(n+1)`
-/

namespace A050057.P4554569951499946346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050037 (n + 1))

end

end A050057.P4554569951499946346

/-! ## A050057.P7320407520835121376

`A050033(n+1)+A050061(n+1)-A050037(n+1)`
-/

namespace A050057.P7320407520835121376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050061 (n + 1) - A050037 (n + 1))

end

end A050057.P7320407520835121376

/-! ## A050057.P6534078781431023852

`A050041(n+1)+A050049(n+1)-A050033(n+1)`
-/

namespace A050057.P6534078781431023852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050049 (n + 1) - A050033 (n + 1))

end

end A050057.P6534078781431023852

/-! ## A050057.P11902134950098054747

`A050041(n+1)+A050053(n+1)-A050037(n+1)`
-/

namespace A050057.P11902134950098054747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050053 (n + 1) - A050037 (n + 1))

end

end A050057.P11902134950098054747

/-! ## A050057.P15062348176845839705

`A050045(n+1)+A050049(n+1)-A050037(n+1)`
-/

namespace A050057.P15062348176845839705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050037 (n + 1))

end

end A050057.P15062348176845839705

/-! ## A050057.P2875144067661634258

`A050041(n+1)+A050061(n+1)-A050045(n+1)`
-/

namespace A050057.P2875144067661634258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050061 (n + 1) - A050045 (n + 1))

end

end A050057.P2875144067661634258

/-! ## A050057.P7172989480266950825

`A050041(n+1)+A050065(n+1)-A050049(n+1)`
-/

namespace A050057.P7172989480266950825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050065 (n + 1) - A050049 (n + 1))

end

end A050057.P7172989480266950825

/-! ## A050057.P10357434123893825700

`A050041(n+1)+A050069(n+1)-A050053(n+1)`
-/

namespace A050057.P10357434123893825700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050069 (n + 1) - A050053 (n + 1))

end

end A050057.P10357434123893825700

/-! ## A050057.P16465092239951452740

`A050045(n+1)+A050061(n+1)-A050049(n+1)`
-/

namespace A050057.P16465092239951452740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050061 (n + 1) - A050049 (n + 1))

end

end A050057.P16465092239951452740

/-! ## A050057.P18166288117983524151

`A050045(n+1)+A050065(n+1)-A050053(n+1)`
-/

namespace A050057.P18166288117983524151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050065 (n + 1) - A050053 (n + 1))

end

end A050057.P18166288117983524151

/-! ## A050057.P11952841163274010096

`A050049(n+1)+A050061(n+1)-A050053(n+1)`
-/

namespace A050057.P11952841163274010096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) + (A050061 (n + 1) - A050053 (n + 1))

end

end A050057.P11952841163274010096

/-!
# A050058: a(n) = a(n-1)+a(m), where m=n-1-2^p and 2^p= 4.

The programs for A050058, there is no canonical definition to state claims against.
-/

/-! ## A050058.P6961269454912997986

`2*A050042(n+1)-A050026(n+1)`
-/

namespace A050058.P6961269454912997986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050042 (n + 1) - A050026 (n + 1)

end

end A050058.P6961269454912997986

/-! ## A050058.P11546107406495425878

`2*A050046(n+1)-A050034(n+1)`
-/

namespace A050058.P11546107406495425878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050034 (n + 1)

end

end A050058.P11546107406495425878

/-! ## A050058.P455276352818268273

`2*A050062(n+1)-A050066(n+1)`
-/

namespace A050058.P455276352818268273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050062 (n + 1) - A050066 (n + 1)

end

end A050058.P455276352818268273

/-! ## A050058.P11151350136086515510

`A050026(n+1)+A050062(n+1)-A050030(n+1)`
-/

namespace A050058.P11151350136086515510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050062 (n + 1) - A050030 (n + 1))

end

end A050058.P11151350136086515510

/-! ## A050058.P16699812629976413

`A050026(n+1)+A050066(n+1)-A050034(n+1)`
-/

namespace A050058.P16699812629976413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050066 (n + 1) - A050034 (n + 1))

end

end A050058.P16699812629976413

/-! ## A050058.P15727690099857282899

`A050042(n+1)+A050046(n+1)-A050030(n+1)`
-/

namespace A050058.P15727690099857282899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050046 (n + 1) - A050030 (n + 1))

end

end A050058.P15727690099857282899

/-! ## A050058.P14053955117226554295

`A050026(n+1)+A050070(n+1)-A050038(n+1)`
-/

namespace A050058.P14053955117226554295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050070 (n + 1) - A050038 (n + 1))

end

end A050058.P14053955117226554295

/-! ## A050058.P15926032034977421115

`A050030(n+1)+A050062(n+1)-A050034(n+1)`
-/

namespace A050058.P15926032034977421115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050062 (n + 1) - A050034 (n + 1))

end

end A050058.P15926032034977421115

/-! ## A050058.P12492745576730298276

`A050030(n+1)+A050066(n+1)-A050038(n+1)`
-/

namespace A050058.P12492745576730298276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050066 (n + 1) - A050038 (n + 1))

end

end A050058.P12492745576730298276

/-! ## A050058.P12885089310262562624

`A050034(n+1)+A050062(n+1)-A050038(n+1)`
-/

namespace A050058.P12885089310262562624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050038 (n + 1))

end

end A050058.P12885089310262562624

/-! ## A050058.P13120374888067101474

`A050042(n+1)+A050050(n+1)-A050034(n+1)`
-/

namespace A050058.P13120374888067101474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050050 (n + 1) - A050034 (n + 1))

end

end A050058.P13120374888067101474

/-! ## A050058.P9650040406501964267

`A050042(n+1)+A050054(n+1)-A050038(n+1)`
-/

namespace A050058.P9650040406501964267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050038 (n + 1))

end

end A050058.P9650040406501964267

/-! ## A050058.P9040850295099006117

`A050046(n+1)+A050050(n+1)-A050038(n+1)`
-/

namespace A050058.P9040850295099006117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050038 (n + 1))

end

end A050058.P9040850295099006117

/-! ## A050058.P16429216367467361759

`A050042(n+1)+A050062(n+1)-A050046(n+1)`
-/

namespace A050058.P16429216367467361759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050062 (n + 1) - A050046 (n + 1))

end

end A050058.P16429216367467361759

/-! ## A050058.P8793473373526988508

`A050042(n+1)+A050066(n+1)-A050050(n+1)`
-/

namespace A050058.P8793473373526988508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050066 (n + 1) - A050050 (n + 1))

end

end A050058.P8793473373526988508

/-! ## A050058.P11306051702984858730

`A050042(n+1)+A050070(n+1)-A050054(n+1)`
-/

namespace A050058.P11306051702984858730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050070 (n + 1) - A050054 (n + 1))

end

end A050058.P11306051702984858730

/-! ## A050058.P7411401490276189058

`A050046(n+1)+A050062(n+1)-A050050(n+1)`
-/

namespace A050058.P7411401490276189058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050062 (n + 1) - A050050 (n + 1))

end

end A050058.P7411401490276189058

/-! ## A050058.P15312656140779923264

`A050046(n+1)+A050066(n+1)-A050054(n+1)`
-/

namespace A050058.P15312656140779923264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050066 (n + 1) - A050054 (n + 1))

end

end A050058.P15312656140779923264

/-! ## A050058.P6601658739249636926

`A050050(n+1)+A050062(n+1)-A050054(n+1)`
-/

namespace A050058.P6601658739249636926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050062 (n + 1) - A050054 (n + 1))

end

end A050058.P6601658739249636926

/-!
# A050059: a(n)=a(n-1)+a(m), where m=2n-2-2^(p+1) and 2^p= 4.

The programs for A050059, there is no canonical definition to state claims against.
-/

/-! ## A050059.P6077944781474984689

`2*A050043(n+1)-A050027(n+1)`
-/

namespace A050059.P6077944781474984689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050043 (n + 1) - A050027 (n + 1)

end

end A050059.P6077944781474984689

/-! ## A050059.P18352642592961708704

`2*A050047(n+1)-A050035(n+1)`
-/

namespace A050059.P18352642592961708704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050047 (n + 1) - A050035 (n + 1)

end

end A050059.P18352642592961708704

/-! ## A050059.P12133369621549230065

`A050027(n+1)+A050063(n+1)-A050031(n+1)`
-/

namespace A050059.P12133369621549230065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050063 (n + 1) - A050031 (n + 1))

end

end A050059.P12133369621549230065

/-! ## A050059.P10772642346896954686

`A050027(n+1)+A050067(n+1)-A050035(n+1)`
-/

namespace A050059.P10772642346896954686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050067 (n + 1) - A050035 (n + 1))

end

end A050059.P10772642346896954686

/-! ## A050059.P14600320137210261398

`A050027(n+1)+A050071(n+1)-A050039(n+1)`
-/

namespace A050059.P14600320137210261398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050071 (n + 1) - A050039 (n + 1))

end

end A050059.P14600320137210261398

/-! ## A050059.P4156633098629670512

`A050031(n+1)+A050063(n+1)-A050035(n+1)`
-/

namespace A050059.P4156633098629670512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050063 (n + 1) - A050035 (n + 1))

end

end A050059.P4156633098629670512

/-! ## A050059.P15244597207275645914

`A050043(n+1)+A050047(n+1)-A050031(n+1)`
-/

namespace A050059.P15244597207275645914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050047 (n + 1) - A050031 (n + 1))

end

end A050059.P15244597207275645914

/-! ## A050059.P8106854360114612799

`A050031(n+1)+A050067(n+1)-A050039(n+1)`
-/

namespace A050059.P8106854360114612799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050039 (n + 1))

end

end A050059.P8106854360114612799

/-! ## A050059.P3481650235738065916

`A050035(n+1)+A050063(n+1)-A050039(n+1)`
-/

namespace A050059.P3481650235738065916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050039 (n + 1))

end

end A050059.P3481650235738065916

/-! ## A050059.P8901959370563729830

`A050043(n+1)+A050051(n+1)-A050035(n+1)`
-/

namespace A050059.P8901959370563729830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050051 (n + 1) - A050035 (n + 1))

end

end A050059.P8901959370563729830

/-! ## A050059.P12093685468985184179

`A050043(n+1)+A050055(n+1)-A050039(n+1)`
-/

namespace A050059.P12093685468985184179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050055 (n + 1) - A050039 (n + 1))

end

end A050059.P12093685468985184179

/-! ## A050059.P6563000904825861845

`A050047(n+1)+A050051(n+1)-A050039(n+1)`
-/

namespace A050059.P6563000904825861845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050039 (n + 1))

end

end A050059.P6563000904825861845

/-! ## A050059.P7952926919220340418

`A050043(n+1)+A050063(n+1)-A050047(n+1)`
-/

namespace A050059.P7952926919220340418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050063 (n + 1) - A050047 (n + 1))

end

end A050059.P7952926919220340418

/-! ## A050059.P12350345227390054382

`A050043(n+1)+A050067(n+1)-A050051(n+1)`
-/

namespace A050059.P12350345227390054382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050067 (n + 1) - A050051 (n + 1))

end

end A050059.P12350345227390054382

/-! ## A050059.P16434818115222184471

`A050043(n+1)+A050071(n+1)-A050055(n+1)`
-/

namespace A050059.P16434818115222184471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050071 (n + 1) - A050055 (n + 1))

end

end A050059.P16434818115222184471

/-! ## A050059.P13089845646749665957

`A050047(n+1)+A050063(n+1)-A050051(n+1)`
-/

namespace A050059.P13089845646749665957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050063 (n + 1) - A050051 (n + 1))

end

end A050059.P13089845646749665957

/-!
# A050060: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A050060, there is no canonical definition to state claims against.
-/

/-! ## A050060.P8585838162234442087

`A050044(n+1)+char[1]`
-/

namespace A050060.P8585838162234442087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050060.P8585838162234442087

/-! ## A050060.P3860369074072035568

`A050028(n+1)+2*char[1]`
-/

namespace A050060.P3860369074072035568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A050060.P3860369074072035568

/-! ## A050060.P4739245113266361671

`A063524(n)+A050044(n+1)`
-/

namespace A050060.P4739245113266361671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A050044 (n + 1)

end

end A050060.P4739245113266361671

/-! ## A050060.P9178536037084462089

`A050028(1-n*A260196(n))`
-/

namespace A050060.P9178536037084462089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (1 - (n : ℤ) * A260196 n).toNat

end

end A050060.P9178536037084462089

/-! ## A050060.P12288203546205760200

`lcm(A050028(n+1), A260196(n))`
-/

namespace A050060.P12288203546205760200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050028 (n + 1)) (A260196 n)

end

end A050060.P12288203546205760200

/-! ## A050060.P17241500079318300321

`or(A050028(n+1), A050044(n+1))`
-/

namespace A050060.P17241500079318300321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050028 (n + 1)) (A050044 (n + 1))

end

end A050060.P17241500079318300321

/-! ## A050060.P4167094652644938432

`2*A050048(n+1)-A050036(n+1)`
-/

namespace A050060.P4167094652644938432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050048 (n + 1) - A050036 (n + 1)

end

end A050060.P4167094652644938432

/-! ## A050060.P14854457598506164232

`2*A050064(n+1)-A050068(n+1)`
-/

namespace A050060.P14854457598506164232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050064 (n + 1) - A050068 (n + 1)

end

end A050060.P14854457598506164232

/-! ## A050060.P8899908825870868774

`A063524(n)+A063524(n)+A050028(n+1)`
-/

namespace A050060.P8899908825870868774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (A063524 n + A050028 (n + 1))

end

end A050060.P8899908825870868774

/-! ## A050060.P4412194945634567094

`A050028(n+1)-A159075(n)-A159075(n)`
-/

namespace A050060.P4412194945634567094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) - A159075 n - A159075 n

end

end A050060.P4412194945634567094

/-! ## A050060.P10502219333506060487

`2*A050028(A348776(n+1))-A050028(n+1)`
-/

namespace A050060.P10502219333506060487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050028 (A348776 (n + 1)).toNat - A050028 (n + 1)

end

end A050060.P10502219333506060487

/-! ## A050060.P6459749841658907439

`A050028(A050056(n+1)/A050024(n+1)+n)`
-/

namespace A050060.P6459749841658907439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (SequenceMachineLib.roundAway ((A050056 (n + 1) : ℚ) / (A050024 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050060.P6459749841658907439

/-! ## A050060.P9145827364820112097

`A050028(A050064(n+1)/A050032(n+1)+n)`
-/

namespace A050060.P9145827364820112097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (SequenceMachineLib.roundAway ((A050064 (n + 1) : ℚ) / (A050032 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050060.P9145827364820112097

/-! ## A050060.P16444104380576835617

`A050044(A050064(n+1)/A050032(n+1)+n)`
-/

namespace A050060.P16444104380576835617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (SequenceMachineLib.roundAway ((A050064 (n + 1) : ℚ) / (A050032 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050060.P16444104380576835617

/-! ## A050060.P3549717529967564213

`A050028(A050068(n+1)/A050036(n+1)+n)`
-/

namespace A050060.P3549717529967564213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (SequenceMachineLib.roundAway ((A050068 (n + 1) : ℚ) / (A050036 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050060.P3549717529967564213

/-! ## A050060.P2565317745574662792

`A050024(n+1)+A050064(n+1)-A050028(n+1)`
-/

namespace A050060.P2565317745574662792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050064 (n + 1) - A050028 (n + 1))

end

end A050060.P2565317745574662792

/-! ## A050060.P13356117169122784416

`A050040(n+1)+A050044(n+1)-A050024(n+1)`
-/

namespace A050060.P13356117169122784416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (n + 1) + (A050044 (n + 1) - A050024 (n + 1))

end

end A050060.P13356117169122784416

/-! ## A050060.P6178083889842089261

`A050024(n+1)+A050068(n+1)-A050032(n+1)`
-/

namespace A050060.P6178083889842089261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050024 (n + 1) + (A050068 (n + 1) - A050032 (n + 1))

end

end A050060.P6178083889842089261

/-! ## A050060.P11198386683434589143

`A050032(n+1)+A050056(n+1)-A050028(n+1)`
-/

namespace A050060.P11198386683434589143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050056 (n + 1) - A050028 (n + 1))

end

end A050060.P11198386683434589143

/-! ## A050060.P5580023067208008961

`A050032(n+1)+A050064(n+1)-A050036(n+1)`
-/

namespace A050060.P5580023067208008961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050064 (n + 1) - A050036 (n + 1))

end

end A050060.P5580023067208008961

/-!
# A050061: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A050061, there is no canonical definition to state claims against.
-/

/-! ## A050061.P13350792414607587863

`A329474(n+1)+A050041(n+1)`
-/

namespace A050061.P13350792414607587863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329474 (n + 1) + A050041 (n + 1)

end

end A050061.P13350792414607587863

/-! ## A050061.P7093693227253801212

`2*A050045(n+1)-A050029(n+1)`
-/

namespace A050061.P7093693227253801212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050029 (n + 1)

end

end A050061.P7093693227253801212

/-! ## A050061.P10398565453097345456

`2*A050049(n+1)-A050037(n+1)`
-/

namespace A050061.P10398565453097345456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050037 (n + 1)

end

end A050061.P10398565453097345456

/-! ## A050061.P9663010883944344609

`(A050065(n+1)+A050057(n+1))/2`
-/

namespace A050061.P9663010883944344609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050065 (n + 1) + A050057 (n + 1) : ℚ) / 2

end

end A050061.P9663010883944344609

/-! ## A050061.P17550652745769654566

`2*A050065(n+1)-A050069(n+1)`
-/

namespace A050061.P17550652745769654566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050065 (n + 1) - A050069 (n + 1)

end

end A050061.P17550652745769654566

/-! ## A050061.P414850843831743691

`A050025(n+1)+A050065(n+1)-A050029(n+1)`
-/

namespace A050061.P414850843831743691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050065 (n + 1) - A050029 (n + 1))

end

end A050061.P414850843831743691

/-! ## A050061.P14102123662727659576

`A050029(n+1)+A050057(n+1)-A050025(n+1)`
-/

namespace A050061.P14102123662727659576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050057 (n + 1) - A050025 (n + 1))

end

end A050061.P14102123662727659576

/-! ## A050061.P6828066043820048159

`A050025(n+1)+A050069(n+1)-A050033(n+1)`
-/

namespace A050061.P6828066043820048159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050033 (n + 1))

end

end A050061.P6828066043820048159

/-! ## A050061.P7575165927025338384

`A050029(n+1)+A050065(n+1)-A050033(n+1)`
-/

namespace A050061.P7575165927025338384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050033 (n + 1))

end

end A050061.P7575165927025338384

/-! ## A050061.P7020323699138170842

`A050033(n+1)+A050057(n+1)-A050029(n+1)`
-/

namespace A050061.P7020323699138170842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050057 (n + 1) - A050029 (n + 1))

end

end A050061.P7020323699138170842

/-! ## A050061.P2872923626800149170

`A050041(n+1)+A050045(n+1)-A050025(n+1)`
-/

namespace A050061.P2872923626800149170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050045 (n + 1) - A050025 (n + 1))

end

end A050061.P2872923626800149170

/-! ## A050061.P13726701128053576303

`A050041(n+1)+A050049(n+1)-A050029(n+1)`
-/

namespace A050061.P13726701128053576303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050049 (n + 1) - A050029 (n + 1))

end

end A050061.P13726701128053576303

/-! ## A050061.P17592009948945733446

`A050029(n+1)+A050069(n+1)-A050037(n+1)`
-/

namespace A050061.P17592009948945733446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050069 (n + 1) - A050037 (n + 1))

end

end A050061.P17592009948945733446

/-! ## A050061.P8148388554026773647

`A050033(n+1)+A050065(n+1)-A050037(n+1)`
-/

namespace A050061.P8148388554026773647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050065 (n + 1) - A050037 (n + 1))

end

end A050061.P8148388554026773647

/-! ## A050061.P1608973207710350812

`A050037(n+1)+A050057(n+1)-A050033(n+1)`
-/

namespace A050061.P1608973207710350812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050057 (n + 1) - A050033 (n + 1))

end

end A050061.P1608973207710350812

/-! ## A050061.P2840116257853355171

`A050041(n+1)+A050053(n+1)-A050033(n+1)`
-/

namespace A050061.P2840116257853355171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050053 (n + 1) - A050033 (n + 1))

end

end A050061.P2840116257853355171

/-! ## A050061.P5051382352051845249

`A050045(n+1)+A050049(n+1)-A050033(n+1)`
-/

namespace A050061.P5051382352051845249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050033 (n + 1))

end

end A050061.P5051382352051845249

/-! ## A050061.P15943835131791632388

`A050045(n+1)+A050053(n+1)-A050037(n+1)`
-/

namespace A050061.P15943835131791632388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050053 (n + 1) - A050037 (n + 1))

end

end A050061.P15943835131791632388

/-! ## A050061.P2390623360914572921

`A050041(n+1)+A050065(n+1)-A050045(n+1)`
-/

namespace A050061.P2390623360914572921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050065 (n + 1) - A050045 (n + 1))

end

end A050061.P2390623360914572921

/-! ## A050061.P13148657405029037203

`A050045(n+1)+A050057(n+1)-A050041(n+1)`
-/

namespace A050061.P13148657405029037203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050057 (n + 1) - A050041 (n + 1))

end

end A050061.P13148657405029037203

/-!
# A050062: a(n) = a(n-1)+a(m), where m=n-1-2^p and 2^p= 4.

The programs for A050062, there is no canonical definition to state claims against.
-/

/-! ## A050062.P11641532578362448090

`2*A050046(n+1)-A050030(n+1)`
-/

namespace A050062.P11641532578362448090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050030 (n + 1)

end

end A050062.P11641532578362448090

/-! ## A050062.P954952511021799658

`2*A050050(n+1)-A050038(n+1)`
-/

namespace A050062.P954952511021799658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050038 (n + 1)

end

end A050062.P954952511021799658

/-! ## A050062.P3693727588261086786

`(A050066(n+1)+A050058(n+1))/2`
-/

namespace A050062.P3693727588261086786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050066 (n + 1) + A050058 (n + 1) : ℚ) / 2

end

end A050062.P3693727588261086786

/-! ## A050062.P12260798211716722301

`A050026(n+1)+A050066(n+1)-A050030(n+1)`
-/

namespace A050062.P12260798211716722301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050066 (n + 1) - A050030 (n + 1))

end

end A050062.P12260798211716722301

/-! ## A050062.P16838748353728656390

`A050030(n+1)+A050058(n+1)-A050026(n+1)`
-/

namespace A050062.P16838748353728656390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050058 (n + 1) - A050026 (n + 1))

end

end A050062.P16838748353728656390

/-! ## A050062.P12701175565501472013

`A050026(n+1)+A050070(n+1)-A050034(n+1)`
-/

namespace A050062.P12701175565501472013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050070 (n + 1) - A050034 (n + 1))

end

end A050062.P12701175565501472013

/-! ## A050062.P2037307336846912341

`A050030(n+1)+A050066(n+1)-A050034(n+1)`
-/

namespace A050062.P2037307336846912341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050066 (n + 1) - A050034 (n + 1))

end

end A050062.P2037307336846912341

/-! ## A050062.P14758634770367925198

`A050034(n+1)+A050058(n+1)-A050030(n+1)`
-/

namespace A050062.P14758634770367925198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050058 (n + 1) - A050030 (n + 1))

end

end A050062.P14758634770367925198

/-! ## A050062.P18177886599197176105

`A050042(n+1)+A050046(n+1)-A050026(n+1)`
-/

namespace A050062.P18177886599197176105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050046 (n + 1) - A050026 (n + 1))

end

end A050062.P18177886599197176105

/-! ## A050062.P11826485370085013654

`A050042(n+1)+A050050(n+1)-A050030(n+1)`
-/

namespace A050062.P11826485370085013654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050050 (n + 1) - A050030 (n + 1))

end

end A050062.P11826485370085013654

/-! ## A050062.P3855964103031660197

`A050030(n+1)+A050070(n+1)-A050038(n+1)`
-/

namespace A050062.P3855964103031660197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050070 (n + 1) - A050038 (n + 1))

end

end A050062.P3855964103031660197

/-! ## A050062.P2910156865988035940

`A050034(n+1)+A050066(n+1)-A050038(n+1)`
-/

namespace A050062.P2910156865988035940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050066 (n + 1) - A050038 (n + 1))

end

end A050062.P2910156865988035940

/-! ## A050062.P10453459263046583077

`A050038(n+1)+A050058(n+1)-A050034(n+1)`
-/

namespace A050062.P10453459263046583077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050034 (n + 1))

end

end A050062.P10453459263046583077

/-! ## A050062.P8797295964938343980

`A050042(n+1)+A050054(n+1)-A050034(n+1)`
-/

namespace A050062.P8797295964938343980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050034 (n + 1))

end

end A050062.P8797295964938343980

/-! ## A050062.P13059113449534079316

`A050046(n+1)+A050050(n+1)-A050034(n+1)`
-/

namespace A050062.P13059113449534079316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050034 (n + 1))

end

end A050062.P13059113449534079316

/-! ## A050062.P10312486659226908037

`A050046(n+1)+A050054(n+1)-A050038(n+1)`
-/

namespace A050062.P10312486659226908037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050054 (n + 1) - A050038 (n + 1))

end

end A050062.P10312486659226908037

/-! ## A050062.P17294973135408168597

`A050042(n+1)+A050066(n+1)-A050046(n+1)`
-/

namespace A050062.P17294973135408168597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050066 (n + 1) - A050046 (n + 1))

end

end A050062.P17294973135408168597

/-! ## A050062.P17919239075417037353

`A050046(n+1)+A050058(n+1)-A050042(n+1)`
-/

namespace A050062.P17919239075417037353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050058 (n + 1) - A050042 (n + 1))

end

end A050062.P17919239075417037353

/-! ## A050062.P12859067180532989453

`A050042(n+1)+A050070(n+1)-A050050(n+1)`
-/

namespace A050062.P12859067180532989453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050070 (n + 1) - A050050 (n + 1))

end

end A050062.P12859067180532989453

/-! ## A050062.P2636729144379708169

`A050046(n+1)+A050066(n+1)-A050050(n+1)`
-/

namespace A050062.P2636729144379708169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050066 (n + 1) - A050050 (n + 1))

end

end A050062.P2636729144379708169

/-!
# A050063: a(n)=a(n-1)+a(m), where m=2n-2-2^(p+1) and 2^p= 4.

The programs for A050063, there is no canonical definition to state claims against.
-/

/-! ## A050063.P2671315158814723149

`2*A050047(n+1)-A050031(n+1)`
-/

namespace A050063.P2671315158814723149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050047 (n + 1) - A050031 (n + 1)

end

end A050063.P2671315158814723149

/-! ## A050063.P15351674975728860723

`2*A050051(n+1)-A050039(n+1)`
-/

namespace A050063.P15351674975728860723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050039 (n + 1)

end

end A050063.P15351674975728860723

/-! ## A050063.P10968753817516062451

`(A050067(n+1)+A050059(n+1))/2`
-/

namespace A050063.P10968753817516062451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050067 (n + 1) + A050059 (n + 1) : ℚ) / 2

end

end A050063.P10968753817516062451

/-! ## A050063.P16683705513397809795

`2*A050067(n+1)-A050071(n+1)`
-/

namespace A050063.P16683705513397809795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050067 (n + 1) - A050071 (n + 1)

end

end A050063.P16683705513397809795

/-! ## A050063.P3724477303614761065

`A050027(n+1)+A050067(n+1)-A050031(n+1)`
-/

namespace A050063.P3724477303614761065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050067 (n + 1) - A050031 (n + 1))

end

end A050063.P3724477303614761065

/-! ## A050063.P1557547144893974981

`A050031(n+1)+A050059(n+1)-A050027(n+1)`
-/

namespace A050063.P1557547144893974981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050059 (n + 1) - A050027 (n + 1))

end

end A050063.P1557547144893974981

/-! ## A050063.P9228625306161519018

`A050035(n+1)+A050059(n+1)-A050031(n+1)`
-/

namespace A050063.P9228625306161519018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050059 (n + 1) - A050031 (n + 1))

end

end A050063.P9228625306161519018

/-! ## A050063.P15790311023612053069

`A050043(n+1)+A050047(n+1)-A050027(n+1)`
-/

namespace A050063.P15790311023612053069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050047 (n + 1) - A050027 (n + 1))

end

end A050063.P15790311023612053069

/-! ## A050063.P10398944943710868013

`A050027(n+1)+A050071(n+1)-A050035(n+1)`
-/

namespace A050063.P10398944943710868013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050071 (n + 1) - A050035 (n + 1))

end

end A050063.P10398944943710868013

/-! ## A050063.P7498978298930229470

`A050031(n+1)+A050067(n+1)-A050035(n+1)`
-/

namespace A050063.P7498978298930229470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050035 (n + 1))

end

end A050063.P7498978298930229470

/-! ## A050063.P9445274799712575614

`A050031(n+1)+A050071(n+1)-A050039(n+1)`
-/

namespace A050063.P9445274799712575614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050071 (n + 1) - A050039 (n + 1))

end

end A050063.P9445274799712575614

/-! ## A050063.P2191629013839219026

`A050035(n+1)+A050067(n+1)-A050039(n+1)`
-/

namespace A050063.P2191629013839219026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050067 (n + 1) - A050039 (n + 1))

end

end A050063.P2191629013839219026

/-! ## A050063.P5546623783126899401

`A050039(n+1)+A050059(n+1)-A050035(n+1)`
-/

namespace A050063.P5546623783126899401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050059 (n + 1) - A050035 (n + 1))

end

end A050063.P5546623783126899401

/-! ## A050063.P14494411404515336376

`A050043(n+1)+A050051(n+1)-A050031(n+1)`
-/

namespace A050063.P14494411404515336376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050051 (n + 1) - A050031 (n + 1))

end

end A050063.P14494411404515336376

/-! ## A050063.P8075301663864806339

`A050043(n+1)+A050055(n+1)-A050035(n+1)`
-/

namespace A050063.P8075301663864806339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050055 (n + 1) - A050035 (n + 1))

end

end A050063.P8075301663864806339

/-! ## A050063.P1372002502490887764

`A050047(n+1)+A050051(n+1)-A050035(n+1)`
-/

namespace A050063.P1372002502490887764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050035 (n + 1))

end

end A050063.P1372002502490887764

/-! ## A050063.P17342142365870628339

`A050047(n+1)+A050055(n+1)-A050039(n+1)`
-/

namespace A050063.P17342142365870628339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050055 (n + 1) - A050039 (n + 1))

end

end A050063.P17342142365870628339

/-! ## A050063.P15712442963295492372

`A050043(n+1)+A050067(n+1)-A050047(n+1)`
-/

namespace A050063.P15712442963295492372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050067 (n + 1) - A050047 (n + 1))

end

end A050063.P15712442963295492372

/-! ## A050063.P16119387407262790668

`A050047(n+1)+A050059(n+1)-A050043(n+1)`
-/

namespace A050063.P16119387407262790668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050059 (n + 1) - A050043 (n + 1))

end

end A050063.P16119387407262790668

/-! ## A050063.P10951628534539373794

`A050043(n+1)+A050071(n+1)-A050051(n+1)`
-/

namespace A050063.P10951628534539373794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050071 (n + 1) - A050051 (n + 1))

end

end A050063.P10951628534539373794

/-!
# A050064: a(n) = a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A050064, there is no canonical definition to state claims against.
-/

/-! ## A050064.P10185201412098741587

`A050048(n+1)+char[1]`
-/

namespace A050064.P10185201412098741587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050064.P10185201412098741587

/-! ## A050064.P5968992968266839903

`A050032(n+1)+2*char[1]`
-/

namespace A050064.P5968992968266839903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A050064.P5968992968266839903

/-! ## A050064.P16951493262026817200

`A050032(A348776(n+1))`
-/

namespace A050064.P16951493262026817200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (A348776 (n + 1)).toNat

end

end A050064.P16951493262026817200

/-! ## A050064.P15519407367371356941

`A050032(A373565(n)+n)`
-/

namespace A050064.P15519407367371356941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (A373565 n + (n : ℤ)).toNat

end

end A050064.P15519407367371356941

/-! ## A050064.P17106410046780263131

`A050048(A373565(n)+n)`
-/

namespace A050064.P17106410046780263131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (A373565 n + (n : ℤ)).toNat

end

end A050064.P17106410046780263131

/-! ## A050064.P11418012276158788741

`A050032(A063524(n)+1+n)`
-/

namespace A050064.P11418012276158788741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (A063524 n + 1 + (n : ℤ)).toNat

end

end A050064.P11418012276158788741

/-! ## A050064.P10512051513336805740

`A050048(A063524(n)+1+n)`
-/

namespace A050064.P10512051513336805740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (A063524 n + 1 + (n : ℤ)).toNat

end

end A050064.P10512051513336805740

/-! ## A050064.P11346153682212594032

`A050032(1-A159075(n)+n)`
-/

namespace A050064.P11346153682212594032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (1 - A159075 n + (n : ℤ)).toNat

end

end A050064.P11346153682212594032

/-! ## A050064.P3260744117903234288

`A050048(1-A159075(n)+n)`
-/

namespace A050064.P3260744117903234288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (1 - A159075 n + (n : ℤ)).toNat

end

end A050064.P3260744117903234288

/-! ## A050064.P15755600296878782926

`A050032(1-(A159075(n)-n))`
-/

namespace A050064.P15755600296878782926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (1 - (A159075 n - (n : ℤ))).toNat

end

end A050064.P15755600296878782926

/-! ## A050064.P13681764030068241063

`A050048(1-(A159075(n)-n))`
-/

namespace A050064.P13681764030068241063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (1 - (A159075 n - (n : ℤ))).toNat

end

end A050064.P13681764030068241063

/-! ## A050064.P7704937664645226075

`lcm(A050032(n+1), A084642(n))`
-/

namespace A050064.P7704937664645226075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050032 (n + 1)) (A084642 n)

end

end A050064.P7704937664645226075

/-! ## A050064.P7393730419911331782

`or(A050032(n+1), A050048(n+1))`
-/

namespace A050064.P7393730419911331782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050032 (n + 1)) (A050048 (n + 1))

end

end A050064.P7393730419911331782

/-! ## A050064.P27184244211271329

`2*A050044(n+1)-A050024(n+1)`
-/

namespace A050064.P27184244211271329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050044 (n + 1) - A050024 (n + 1)

end

end A050064.P27184244211271329

/-! ## A050064.P1257068666835268776

`(A050068(n+1)+A050060(n+1))/2`
-/

namespace A050064.P1257068666835268776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050068 (n + 1) + A050060 (n + 1) : ℚ) / 2

end

end A050064.P1257068666835268776

/-! ## A050064.P16080242429072000423

`A050032(A050040(n+1)/A050024(n+1)+n)`
-/

namespace A050064.P16080242429072000423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (SequenceMachineLib.roundAway ((A050040 (n + 1) : ℚ) / (A050024 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050064.P16080242429072000423

/-! ## A050064.P318176263755003450

`A050048(A050040(n+1)/A050024(n+1)+n)`
-/

namespace A050064.P318176263755003450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (SequenceMachineLib.roundAway ((A050040 (n + 1) : ℚ) / (A050024 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050064.P318176263755003450

/-! ## A050064.P12470796658950156161

`A050032(A050044(n+1)/A050028(n+1)+n)`
-/

namespace A050064.P12470796658950156161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (SequenceMachineLib.roundAway ((A050044 (n + 1) : ℚ) / (A050028 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050064.P12470796658950156161

/-! ## A050064.P778443290269001334

`A050048(A050044(n+1)/A050028(n+1)+n)`
-/

namespace A050064.P778443290269001334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (SequenceMachineLib.roundAway ((A050044 (n + 1) : ℚ) / (A050028 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050064.P778443290269001334

/-! ## A050064.P11473014598432519389

`A050032(A050048(n+1)/A050032(n+1)+n)`
-/

namespace A050064.P11473014598432519389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (SequenceMachineLib.roundAway ((A050048 (n + 1) : ℚ) / (A050032 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A050064.P11473014598432519389

/-!
# A050065: a(n) = a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A050065, there is no canonical definition to state claims against.
-/

/-! ## A050065.P4379157068235937210

`A329474(n+1)+A050045(n+1)`
-/

namespace A050065.P4379157068235937210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329474 (n + 1) + A050045 (n + 1)

end

end A050065.P4379157068235937210

/-! ## A050065.P12357906503772949627

`A050025(n+1)+2*A329474(n+1)`
-/

namespace A050065.P12357906503772949627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + 2 * A329474 (n + 1)

end

end A050065.P12357906503772949627

/-! ## A050065.P3353426403414662121

`2*A050045(n+1)-A050025(n+1)`
-/

namespace A050065.P3353426403414662121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050045 (n + 1) - A050025 (n + 1)

end

end A050065.P3353426403414662121

/-! ## A050065.P7123365714249450281

`2*A050049(n+1)-A050033(n+1)`
-/

namespace A050065.P7123365714249450281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050033 (n + 1)

end

end A050065.P7123365714249450281

/-! ## A050065.P11710972596211658409

`(A050069(n+1)+A050061(n+1))/2`
-/

namespace A050065.P11710972596211658409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050069 (n + 1) + A050061 (n + 1) : ℚ) / 2

end

end A050065.P11710972596211658409

/-! ## A050065.P15676163543866538976

`A050025(n+1)+A050069(n+1)-A050029(n+1)`
-/

namespace A050065.P15676163543866538976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + (A050069 (n + 1) - A050029 (n + 1))

end

end A050065.P15676163543866538976

/-! ## A050065.P4328822872755814950

`A050029(n+1)+A050061(n+1)-A050025(n+1)`
-/

namespace A050065.P4328822872755814950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050061 (n + 1) - A050025 (n + 1))

end

end A050065.P4328822872755814950

/-! ## A050065.P1433704910198902228

`A050033(n+1)+A050057(n+1)-A050025(n+1)`
-/

namespace A050065.P1433704910198902228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050057 (n + 1) - A050025 (n + 1))

end

end A050065.P1433704910198902228

/-! ## A050065.P600318352571575989

`A050029(n+1)+A050069(n+1)-A050033(n+1)`
-/

namespace A050065.P600318352571575989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050069 (n + 1) - A050033 (n + 1))

end

end A050065.P600318352571575989

/-! ## A050065.P8118605384999972145

`A050033(n+1)+A050061(n+1)-A050029(n+1)`
-/

namespace A050065.P8118605384999972145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050061 (n + 1) - A050029 (n + 1))

end

end A050065.P8118605384999972145

/-! ## A050065.P12172022200741654901

`A050037(n+1)+A050057(n+1)-A050029(n+1)`
-/

namespace A050065.P12172022200741654901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050057 (n + 1) - A050029 (n + 1))

end

end A050065.P12172022200741654901

/-! ## A050065.P1662807090736092455

`A050041(n+1)+A050049(n+1)-A050025(n+1)`
-/

namespace A050065.P1662807090736092455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050049 (n + 1) - A050025 (n + 1))

end

end A050065.P1662807090736092455

/-! ## A050065.P4752823818549651969

`A050037(n+1)+A050061(n+1)-A050033(n+1)`
-/

namespace A050065.P4752823818549651969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050061 (n + 1) - A050033 (n + 1))

end

end A050065.P4752823818549651969

/-! ## A050065.P7103487297642323902

`A050041(n+1)+A050053(n+1)-A050029(n+1)`
-/

namespace A050065.P7103487297642323902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050053 (n + 1) - A050029 (n + 1))

end

end A050065.P7103487297642323902

/-! ## A050065.P4395368440392757181

`A050045(n+1)+A050049(n+1)-A050029(n+1)`
-/

namespace A050065.P4395368440392757181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050029 (n + 1))

end

end A050065.P4395368440392757181

/-! ## A050065.P13322019610225405904

`A050033(n+1)+A050069(n+1)-A050037(n+1)`
-/

namespace A050065.P13322019610225405904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050069 (n + 1) - A050037 (n + 1))

end

end A050065.P13322019610225405904

/-! ## A050065.P1338275123993242903

`A050045(n+1)+A050053(n+1)-A050033(n+1)`
-/

namespace A050065.P1338275123993242903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050053 (n + 1) - A050033 (n + 1))

end

end A050065.P1338275123993242903

/-! ## A050065.P12732826600244188488

`A050049(n+1)+A050053(n+1)-A050037(n+1)`
-/

namespace A050065.P12732826600244188488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) + (A050053 (n + 1) - A050037 (n + 1))

end

end A050065.P12732826600244188488

/-! ## A050065.P11102322931901268879

`A050041(n+1)+A050069(n+1)-A050045(n+1)`
-/

namespace A050065.P11102322931901268879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050069 (n + 1) - A050045 (n + 1))

end

end A050065.P11102322931901268879

/-! ## A050065.P880873605477271490

`A050045(n+1)+A050061(n+1)-A050041(n+1)`
-/

namespace A050065.P880873605477271490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050061 (n + 1) - A050041 (n + 1))

end

end A050065.P880873605477271490

/-!
# A050066: a(n) = a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A050066, there is no canonical definition to state claims against.
-/

/-! ## A050066.P16646767802014570873

`2*A050046(n+1)-A050026(n+1)`
-/

namespace A050066.P16646767802014570873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050046 (n + 1) - A050026 (n + 1)

end

end A050066.P16646767802014570873

/-! ## A050066.P17454104957148449216

`2*A050050(n+1)-A050034(n+1)`
-/

namespace A050066.P17454104957148449216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050034 (n + 1)

end

end A050066.P17454104957148449216

/-! ## A050066.P7458238319333026753

`2*A050062(n+1)-A050058(n+1)`
-/

namespace A050066.P7458238319333026753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050062 (n + 1) - A050058 (n + 1)

end

end A050066.P7458238319333026753

/-! ## A050066.P17060673349021980546

`(A050070(n+1)+A050062(n+1))/2`
-/

namespace A050066.P17060673349021980546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050070 (n + 1) + A050062 (n + 1) : ℚ) / 2

end

end A050066.P17060673349021980546

/-! ## A050066.P16072763982858048809

`A050026(n+1)+A050070(n+1)-A050030(n+1)`
-/

namespace A050066.P16072763982858048809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (n + 1) + (A050070 (n + 1) - A050030 (n + 1))

end

end A050066.P16072763982858048809

/-! ## A050066.P6291303195983010647

`A050030(n+1)+A050062(n+1)-A050026(n+1)`
-/

namespace A050066.P6291303195983010647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050062 (n + 1) - A050026 (n + 1))

end

end A050066.P6291303195983010647

/-! ## A050066.P8238034526537240045

`A050034(n+1)+A050058(n+1)-A050026(n+1)`
-/

namespace A050066.P8238034526537240045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050058 (n + 1) - A050026 (n + 1))

end

end A050066.P8238034526537240045

/-! ## A050066.P15694169650010174619

`A050034(n+1)+A050062(n+1)-A050030(n+1)`
-/

namespace A050066.P15694169650010174619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050030 (n + 1))

end

end A050066.P15694169650010174619

/-! ## A050066.P9781352169635942784

`A050038(n+1)+A050058(n+1)-A050030(n+1)`
-/

namespace A050066.P9781352169635942784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050030 (n + 1))

end

end A050066.P9781352169635942784

/-! ## A050066.P12627394282938238409

`A050042(n+1)+A050050(n+1)-A050026(n+1)`
-/

namespace A050066.P12627394282938238409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050050 (n + 1) - A050026 (n + 1))

end

end A050066.P12627394282938238409

/-! ## A050066.P8171678260893377537

`A050030(n+1)+A050070(n+1)-A050034(n+1)`
-/

namespace A050066.P8171678260893377537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050070 (n + 1) - A050034 (n + 1))

end

end A050066.P8171678260893377537

/-! ## A050066.P11653014804441391922

`A050038(n+1)+A050062(n+1)-A050034(n+1)`
-/

namespace A050066.P11653014804441391922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050062 (n + 1) - A050034 (n + 1))

end

end A050066.P11653014804441391922

/-! ## A050066.P1474849777918354482

`A050042(n+1)+A050054(n+1)-A050030(n+1)`
-/

namespace A050066.P1474849777918354482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050030 (n + 1))

end

end A050066.P1474849777918354482

/-! ## A050066.P3716762805655906149

`A050046(n+1)+A050050(n+1)-A050030(n+1)`
-/

namespace A050066.P3716762805655906149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050030 (n + 1))

end

end A050066.P3716762805655906149

/-! ## A050066.P5666466549673987167

`A050034(n+1)+A050070(n+1)-A050038(n+1)`
-/

namespace A050066.P5666466549673987167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050070 (n + 1) - A050038 (n + 1))

end

end A050066.P5666466549673987167

/-! ## A050066.P6910974537452999500

`A050046(n+1)+A050054(n+1)-A050034(n+1)`
-/

namespace A050066.P6910974537452999500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050054 (n + 1) - A050034 (n + 1))

end

end A050066.P6910974537452999500

/-! ## A050066.P12257278241113141031

`A050050(n+1)+A050054(n+1)-A050038(n+1)`
-/

namespace A050066.P12257278241113141031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050054 (n + 1) - A050038 (n + 1))

end

end A050066.P12257278241113141031

/-! ## A050066.P16595404398923703311

`A050042(n+1)+A050070(n+1)-A050046(n+1)`
-/

namespace A050066.P16595404398923703311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050070 (n + 1) - A050046 (n + 1))

end

end A050066.P16595404398923703311

/-! ## A050066.P9831316561367004041

`A050046(n+1)+A050062(n+1)-A050042(n+1)`
-/

namespace A050066.P9831316561367004041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050062 (n + 1) - A050042 (n + 1))

end

end A050066.P9831316561367004041

/-! ## A050066.P12649723657520544431

`A050050(n+1)+A050058(n+1)-A050042(n+1)`
-/

namespace A050066.P12649723657520544431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050058 (n + 1) - A050042 (n + 1))

end

end A050066.P12649723657520544431

/-!
# A050067: a(n)=a(n-1)+a(m), where m=2n-2-2^(p+1) and 2^p= 4.

The programs for A050067, there is no canonical definition to state claims against.
-/

/-! ## A050067.P10810775808912312617

`floor(3*A050047(n+1)/2)`
-/

namespace A050067.P10810775808912312617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A050047 (n + 1) : ℚ) / 2)⌋

end

end A050067.P10810775808912312617

/-! ## A050067.P1099075203036651709

`A050027(n+1)*A122553(n)`
-/

namespace A050067.P1099075203036651709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) * A122553 n

end

end A050067.P1099075203036651709

/-! ## A050067.P13660141305673653739

`2*A050047(n+1)-A050027(n+1)`
-/

namespace A050067.P13660141305673653739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050047 (n + 1) - A050027 (n + 1)

end

end A050067.P13660141305673653739

/-! ## A050067.P836372896128536565

`2*A050051(n+1)-A050035(n+1)`
-/

namespace A050067.P836372896128536565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050035 (n + 1)

end

end A050067.P836372896128536565

/-! ## A050067.P4553346771420408791

`2*A050063(n+1)-A050059(n+1)`
-/

namespace A050067.P4553346771420408791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050063 (n + 1) - A050059 (n + 1)

end

end A050067.P4553346771420408791

/-! ## A050067.P10238694794016232243

`(A050071(n+1)+A050063(n+1))/2`
-/

namespace A050067.P10238694794016232243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050071 (n + 1) + A050063 (n + 1) : ℚ) / 2

end

end A050067.P10238694794016232243

/-! ## A050067.P6810257368213032191

`A050027(n+1)+A050071(n+1)-A050031(n+1)`
-/

namespace A050067.P6810257368213032191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050027 (n + 1) + (A050071 (n + 1) - A050031 (n + 1))

end

end A050067.P6810257368213032191

/-! ## A050067.P5296892274369267829

`A050031(n+1)+A050063(n+1)-A050027(n+1)`
-/

namespace A050067.P5296892274369267829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050063 (n + 1) - A050027 (n + 1))

end

end A050067.P5296892274369267829

/-! ## A050067.P8935235202179712122

`A050035(n+1)+A050059(n+1)-A050027(n+1)`
-/

namespace A050067.P8935235202179712122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050059 (n + 1) - A050027 (n + 1))

end

end A050067.P8935235202179712122

/-! ## A050067.P928476925649817431

`A050031(n+1)+A050071(n+1)-A050035(n+1)`
-/

namespace A050067.P928476925649817431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050071 (n + 1) - A050035 (n + 1))

end

end A050067.P928476925649817431

/-! ## A050067.P12771306869270202423

`A050035(n+1)+A050063(n+1)-A050031(n+1)`
-/

namespace A050067.P12771306869270202423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050031 (n + 1))

end

end A050067.P12771306869270202423

/-! ## A050067.P15472822966790799210

`A050039(n+1)+A050059(n+1)-A050031(n+1)`
-/

namespace A050067.P15472822966790799210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050059 (n + 1) - A050031 (n + 1))

end

end A050067.P15472822966790799210

/-! ## A050067.P11106370086033126107

`A050043(n+1)+A050051(n+1)-A050027(n+1)`
-/

namespace A050067.P11106370086033126107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050051 (n + 1) - A050027 (n + 1))

end

end A050067.P11106370086033126107

/-! ## A050067.P2916084935113719176

`A050039(n+1)+A050063(n+1)-A050035(n+1)`
-/

namespace A050067.P2916084935113719176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050063 (n + 1) - A050035 (n + 1))

end

end A050067.P2916084935113719176

/-! ## A050067.P16428560552810836670

`A050043(n+1)+A050055(n+1)-A050031(n+1)`
-/

namespace A050067.P16428560552810836670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050055 (n + 1) - A050031 (n + 1))

end

end A050067.P16428560552810836670

/-! ## A050067.P6250857824765943061

`A050047(n+1)+A050051(n+1)-A050031(n+1)`
-/

namespace A050067.P6250857824765943061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050031 (n + 1))

end

end A050067.P6250857824765943061

/-! ## A050067.P10356681659908300725

`A050035(n+1)+A050071(n+1)-A050039(n+1)`
-/

namespace A050067.P10356681659908300725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050071 (n + 1) - A050039 (n + 1))

end

end A050067.P10356681659908300725

/-! ## A050067.P4290414198974607180

`A050047(n+1)+A050055(n+1)-A050035(n+1)`
-/

namespace A050067.P4290414198974607180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050055 (n + 1) - A050035 (n + 1))

end

end A050067.P4290414198974607180

/-! ## A050067.P2903570899098315670

`A050043(n+1)+A050071(n+1)-A050047(n+1)`
-/

namespace A050067.P2903570899098315670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050071 (n + 1) - A050047 (n + 1))

end

end A050067.P2903570899098315670

/-! ## A050067.P6537990609120076332

`A050047(n+1)+A050063(n+1)-A050043(n+1)`
-/

namespace A050067.P6537990609120076332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050063 (n + 1) - A050043 (n + 1))

end

end A050067.P6537990609120076332

/-!
# A050068: a(n) = a(n-1) + a(m) for n >= 3, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 3.

The programs for A050068, there is no canonical definition to state claims against.
-/

/-! ## A050068.P15071599231217796212

`A050036(n+1)+2*char[1]`
-/

namespace A050068.P15071599231217796212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A050068.P15071599231217796212

/-! ## A050068.P2213155527398365300

`A063524(n)+A050052(n+1)`
-/

namespace A050068.P2213155527398365300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A050052 (n + 1)

end

end A050068.P2213155527398365300

/-! ## A050068.P3948755421854791122

`A050052(n+1)-A159075(n)`
-/

namespace A050068.P3948755421854791122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050052 (n + 1) - A159075 n

end

end A050068.P3948755421854791122

/-! ## A050068.P16601877629760538885

`lcm(A050036(n+1), A260196(n))`
-/

namespace A050068.P16601877629760538885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050036 (n + 1)) (A260196 n)

end

end A050068.P16601877629760538885

/-! ## A050068.P2252297280044187230

`A050052(n+1)+A373565(n)-1`
-/

namespace A050068.P2252297280044187230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050052 (n + 1) + (A373565 n - 1)

end

end A050068.P2252297280044187230

/-! ## A050068.P3441376491163684028

`or(A050036(n+1), A050052(n+1))`
-/

namespace A050068.P3441376491163684028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050036 (n + 1)) (A050052 (n + 1))

end

end A050068.P3441376491163684028

/-! ## A050068.P8541847578605873345

`2*A050048(n+1)-A050028(n+1)`
-/

namespace A050068.P8541847578605873345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050048 (n + 1) - A050028 (n + 1)

end

end A050068.P8541847578605873345

/-! ## A050068.P2463388571607100502

`A063524(n)+A063524(n)+A050036(n+1)`
-/

namespace A050068.P2463388571607100502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (A063524 n + A050036 (n + 1))

end

end A050068.P2463388571607100502

/-! ## A050068.P17350553490507412703

`A050036(n+1)-A159075(n)-A159075(n)`
-/

namespace A050068.P17350553490507412703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050036 (n + 1) - A159075 n - A159075 n

end

end A050068.P17350553490507412703

/-! ## A050068.P9310641300092845387

`A050028(n+1)+A050064(n+1)-A050024(n+1)`
-/

namespace A050068.P9310641300092845387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050028 (n + 1) + (A050064 (n + 1) - A050024 (n + 1))

end

end A050068.P9310641300092845387

/-! ## A050068.P36986344260756622

`A050032(n+1)+A050060(n+1)-A050024(n+1)`
-/

namespace A050068.P36986344260756622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050060 (n + 1) - A050024 (n + 1))

end

end A050068.P36986344260756622

/-! ## A050068.P13571151937395238152

`A050032(n+1)+A050064(n+1)-A050028(n+1)`
-/

namespace A050068.P13571151937395238152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050032 (n + 1) + (A050064 (n + 1) - A050028 (n + 1))

end

end A050068.P13571151937395238152

/-! ## A050068.P781078659047227897

`A050040(n+1)+A050052(n+1)-A050024(n+1)`
-/

namespace A050068.P781078659047227897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (n + 1) + (A050052 (n + 1) - A050024 (n + 1))

end

end A050068.P781078659047227897

/-! ## A050068.P17726444593047049087

`A050044(n+1)+A050048(n+1)-A050024(n+1)`
-/

namespace A050068.P17726444593047049087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050048 (n + 1) - A050024 (n + 1))

end

end A050068.P17726444593047049087

/-! ## A050068.P8315410231418727858

`A050044(n+1)+A050052(n+1)-A050028(n+1)`
-/

namespace A050068.P8315410231418727858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050052 (n + 1) - A050028 (n + 1))

end

end A050068.P8315410231418727858

/-! ## A050068.P93811260193667886

`A050056(n+1)+A050036(n+1)-A050024(n+1)`
-/

namespace A050068.P93811260193667886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050056 (n + 1) + (A050036 (n + 1) - A050024 (n + 1))

end

end A050068.P93811260193667886

/-! ## A050068.P5552576172619365195

`A050048(n+1)+A050052(n+1)-A050032(n+1)`
-/

namespace A050068.P5552576172619365195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (n + 1) + (A050052 (n + 1) - A050032 (n + 1))

end

end A050068.P5552576172619365195

/-! ## A050068.P17570856927807476380

`A050060(n+1)+A050036(n+1)-A050028(n+1)`
-/

namespace A050068.P17570856927807476380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050060 (n + 1) + (A050036 (n + 1) - A050028 (n + 1))

end

end A050068.P17570856927807476380

/-! ## A050068.P17590688832978527564

`A050044(n+1)+A050064(n+1)-A050040(n+1)`
-/

namespace A050068.P17590688832978527564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050044 (n + 1) + (A050064 (n + 1) - A050040 (n + 1))

end

end A050068.P17590688832978527564

/-! ## A050068.P9156039242280404798

`A050048(n+1)+A050060(n+1)-A050040(n+1)`
-/

namespace A050068.P9156039242280404798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050048 (n + 1) + (A050060 (n + 1) - A050040 (n + 1))

end

end A050068.P9156039242280404798

/-!
# A050069: a(n) = a(n-1) + a(m) for n >= 3, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 3.

The programs for A050069, there is no canonical definition to state claims against.
-/

/-! ## A050069.P16461459347312472636

`A329474(n+1)+A050049(n+1)`
-/

namespace A050069.P16461459347312472636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329474 (n + 1) + A050049 (n + 1)

end

end A050069.P16461459347312472636

/-! ## A050069.P6352917234068081455

`A050029(n+1)+2*A329474(n+1)`
-/

namespace A050069.P6352917234068081455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + 2 * A329474 (n + 1)

end

end A050069.P6352917234068081455

/-! ## A050069.P2989734708879971640

`2*A050049(n+1)-A050029(n+1)`
-/

namespace A050069.P2989734708879971640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050049 (n + 1) - A050029 (n + 1)

end

end A050069.P2989734708879971640

/-! ## A050069.P1671884019061911796

`2*A050053(n+1)-A050037(n+1)`
-/

namespace A050069.P1671884019061911796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050053 (n + 1) - A050037 (n + 1)

end

end A050069.P1671884019061911796

/-! ## A050069.P12957906212261724506

`A050029(n+1)+A050065(n+1)-A050025(n+1)`
-/

namespace A050069.P12957906212261724506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1) + (A050065 (n + 1) - A050025 (n + 1))

end

end A050069.P12957906212261724506

/-! ## A050069.P13982501268237464347

`A050033(n+1)+A050061(n+1)-A050025(n+1)`
-/

namespace A050069.P13982501268237464347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050061 (n + 1) - A050025 (n + 1))

end

end A050069.P13982501268237464347

/-! ## A050069.P8972012125007839399

`A050033(n+1)+A050065(n+1)-A050029(n+1)`
-/

namespace A050069.P8972012125007839399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050033 (n + 1) + (A050065 (n + 1) - A050029 (n + 1))

end

end A050069.P8972012125007839399

/-! ## A050069.P3263959607033379100

`A050037(n+1)+A050057(n+1)-A050025(n+1)`
-/

namespace A050069.P3263959607033379100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050057 (n + 1) - A050025 (n + 1))

end

end A050069.P3263959607033379100

/-! ## A050069.P4984126829683894050

`A050037(n+1)+A050061(n+1)-A050029(n+1)`
-/

namespace A050069.P4984126829683894050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050061 (n + 1) - A050029 (n + 1))

end

end A050069.P4984126829683894050

/-! ## A050069.P11252527539083236900

`A050041(n+1)+A050053(n+1)-A050025(n+1)`
-/

namespace A050069.P11252527539083236900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050041 (n + 1) + (A050053 (n + 1) - A050025 (n + 1))

end

end A050069.P11252527539083236900

/-! ## A050069.P17208259345499015828

`A050045(n+1)+A050049(n+1)-A050025(n+1)`
-/

namespace A050069.P17208259345499015828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050049 (n + 1) - A050025 (n + 1))

end

end A050069.P17208259345499015828

/-! ## A050069.P12205160720821577702

`A050037(n+1)+A050065(n+1)-A050033(n+1)`
-/

namespace A050069.P12205160720821577702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050037 (n + 1) + (A050065 (n + 1) - A050033 (n + 1))

end

end A050069.P12205160720821577702

/-! ## A050069.P6872398011337505347

`A050045(n+1)+A050053(n+1)-A050029(n+1)`
-/

namespace A050069.P6872398011337505347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050053 (n + 1) - A050029 (n + 1))

end

end A050069.P6872398011337505347

/-! ## A050069.P14540631651043235124

`A050049(n+1)+A050053(n+1)-A050033(n+1)`
-/

namespace A050069.P14540631651043235124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) + (A050053 (n + 1) - A050033 (n + 1))

end

end A050069.P14540631651043235124

/-! ## A050069.P8827445769185898483

`A050045(n+1)+A050065(n+1)-A050041(n+1)`
-/

namespace A050069.P8827445769185898483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050045 (n + 1) + (A050065 (n + 1) - A050041 (n + 1))

end

end A050069.P8827445769185898483

/-! ## A050069.P7231529990325041297

`A050049(n+1)+A050061(n+1)-A050041(n+1)`
-/

namespace A050069.P7231529990325041297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) + (A050061 (n + 1) - A050041 (n + 1))

end

end A050069.P7231529990325041297

/-! ## A050069.P14054228403077806344

`A050049(n+1)+A050065(n+1)-A050045(n+1)`
-/

namespace A050069.P14054228403077806344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050049 (n + 1) + (A050065 (n + 1) - A050045 (n + 1))

end

end A050069.P14054228403077806344

/-! ## A050069.P2036953600386874052

`A050053(n+1)+A050057(n+1)-A050041(n+1)`
-/

namespace A050069.P2036953600386874052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050053 (n + 1) + (A050057 (n + 1) - A050041 (n + 1))

end

end A050069.P2036953600386874052

/-! ## A050069.P6489227602641854976

`A050053(n+1)+A050061(n+1)-A050045(n+1)`
-/

namespace A050069.P6489227602641854976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050053 (n + 1) + (A050061 (n + 1) - A050045 (n + 1))

end

end A050069.P6489227602641854976

/-! ## A050069.P9360833430916637852

`A050053(n+1)+A050065(n+1)-A050049(n+1)`
-/

namespace A050069.P9360833430916637852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050053 (n + 1) + (A050065 (n + 1) - A050049 (n + 1))

end

end A050069.P9360833430916637852

/-!
# A050070: a(n) = a(n-1)+a(m), where m=n-1-2^p and 2^p= 4.

The programs for A050070, there is no canonical definition to state claims against.
-/

/-! ## A050070.P1933118025914678768

`2*A050050(n+1)-A050030(n+1)`
-/

namespace A050070.P1933118025914678768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050050 (n + 1) - A050030 (n + 1)

end

end A050070.P1933118025914678768

/-! ## A050070.P17099697090537352984

`2*A050054(n+1)-A050038(n+1)`
-/

namespace A050070.P17099697090537352984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050054 (n + 1) - A050038 (n + 1)

end

end A050070.P17099697090537352984

/-! ## A050070.P9502075749723918623

`2*A050066(n+1)-A050062(n+1)`
-/

namespace A050070.P9502075749723918623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050066 (n + 1) - A050062 (n + 1)

end

end A050070.P9502075749723918623

/-! ## A050070.P18214905133535813494

`A050030(n+1)+A050066(n+1)-A050026(n+1)`
-/

namespace A050070.P18214905133535813494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) + (A050066 (n + 1) - A050026 (n + 1))

end

end A050070.P18214905133535813494

/-! ## A050070.P13087742564625903600

`A050034(n+1)+A050062(n+1)-A050026(n+1)`
-/

namespace A050070.P13087742564625903600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050062 (n + 1) - A050026 (n + 1))

end

end A050070.P13087742564625903600

/-! ## A050070.P8950169185654844101

`A050034(n+1)+A050066(n+1)-A050030(n+1)`
-/

namespace A050070.P8950169185654844101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050034 (n + 1) + (A050066 (n + 1) - A050030 (n + 1))

end

end A050070.P8950169185654844101

/-! ## A050070.P123643936466491499

`A050038(n+1)+A050058(n+1)-A050026(n+1)`
-/

namespace A050070.P123643936466491499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050058 (n + 1) - A050026 (n + 1))

end

end A050070.P123643936466491499

/-! ## A050070.P16335949906643252736

`A050038(n+1)+A050062(n+1)-A050030(n+1)`
-/

namespace A050070.P16335949906643252736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050062 (n + 1) - A050030 (n + 1))

end

end A050070.P16335949906643252736

/-! ## A050070.P15286713536719824273

`A050042(n+1)+A050054(n+1)-A050026(n+1)`
-/

namespace A050070.P15286713536719824273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050042 (n + 1) + (A050054 (n + 1) - A050026 (n + 1))

end

end A050070.P15286713536719824273

/-! ## A050070.P12798148121386930997

`A050046(n+1)+A050050(n+1)-A050026(n+1)`
-/

namespace A050070.P12798148121386930997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050050 (n + 1) - A050026 (n + 1))

end

end A050070.P12798148121386930997

/-! ## A050070.P4516988553787363432

`A050038(n+1)+A050066(n+1)-A050034(n+1)`
-/

namespace A050070.P4516988553787363432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050038 (n + 1) + (A050066 (n + 1) - A050034 (n + 1))

end

end A050070.P4516988553787363432

/-! ## A050070.P14032018451553306561

`A050046(n+1)+A050054(n+1)-A050030(n+1)`
-/

namespace A050070.P14032018451553306561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050054 (n + 1) - A050030 (n + 1))

end

end A050070.P14032018451553306561

/-! ## A050070.P10118045241566869341

`A050050(n+1)+A050054(n+1)-A050034(n+1)`
-/

namespace A050070.P10118045241566869341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050054 (n + 1) - A050034 (n + 1))

end

end A050070.P10118045241566869341

/-! ## A050070.P7955010909982395787

`A050046(n+1)+A050066(n+1)-A050042(n+1)`
-/

namespace A050070.P7955010909982395787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050046 (n + 1) + (A050066 (n + 1) - A050042 (n + 1))

end

end A050070.P7955010909982395787

/-! ## A050070.P4006266432155949413

`A050050(n+1)+A050062(n+1)-A050042(n+1)`
-/

namespace A050070.P4006266432155949413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050062 (n + 1) - A050042 (n + 1))

end

end A050070.P4006266432155949413

/-! ## A050070.P1354245690284910007

`A050050(n+1)+A050066(n+1)-A050046(n+1)`
-/

namespace A050070.P1354245690284910007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050050 (n + 1) + (A050066 (n + 1) - A050046 (n + 1))

end

end A050070.P1354245690284910007

/-! ## A050070.P11524129594472086572

`A050054(n+1)+A050058(n+1)-A050042(n+1)`
-/

namespace A050070.P11524129594472086572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050054 (n + 1) + (A050058 (n + 1) - A050042 (n + 1))

end

end A050070.P11524129594472086572

/-! ## A050070.P11693004877118310477

`A050054(n+1)+A050062(n+1)-A050046(n+1)`
-/

namespace A050070.P11693004877118310477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050054 (n + 1) + (A050062 (n + 1) - A050046 (n + 1))

end

end A050070.P11693004877118310477

/-! ## A050070.P14173293611559830693

`A050054(n+1)+A050066(n+1)-A050050(n+1)`
-/

namespace A050070.P14173293611559830693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050054 (n + 1) + (A050066 (n + 1) - A050050 (n + 1))

end

end A050070.P14173293611559830693

/-! ## A050070.P4205297951920238882

`A050062(n+1)+A050066(n+1)-A050058(n+1)`
-/

namespace A050070.P4205297951920238882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050062 (n + 1) + (A050066 (n + 1) - A050058 (n + 1))

end

end A050070.P4205297951920238882

/-!
# A050071: a(n) = a(n-1)+a(m), where m=2n-2-2^(p+1) and 2^p= 4.

The programs for A050071, there is no canonical definition to state claims against.
-/

/-! ## A050071.P2045453228192363852

`2*A050051(n+1)-A050031(n+1)`
-/

namespace A050071.P2045453228192363852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050051 (n + 1) - A050031 (n + 1)

end

end A050071.P2045453228192363852

/-! ## A050071.P8183623841898045240

`2*A050055(n+1)-A050039(n+1)`
-/

namespace A050071.P8183623841898045240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050055 (n + 1) - A050039 (n + 1)

end

end A050071.P8183623841898045240

/-! ## A050071.P7271045280112031427

`A050031(n+1)+A050067(n+1)-A050027(n+1)`
-/

namespace A050071.P7271045280112031427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050031 (n + 1) + (A050067 (n + 1) - A050027 (n + 1))

end

end A050071.P7271045280112031427

/-! ## A050071.P7103310312318496935

`A050035(n+1)+A050063(n+1)-A050027(n+1)`
-/

namespace A050071.P7103310312318496935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050063 (n + 1) - A050027 (n + 1))

end

end A050071.P7103310312318496935

/-! ## A050071.P15012229133409762656

`A050035(n+1)+A050067(n+1)-A050031(n+1)`
-/

namespace A050071.P15012229133409762656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050035 (n + 1) + (A050067 (n + 1) - A050031 (n + 1))

end

end A050071.P15012229133409762656

/-! ## A050071.P3337589321564763477

`A050039(n+1)+A050059(n+1)-A050027(n+1)`
-/

namespace A050071.P3337589321564763477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050059 (n + 1) - A050027 (n + 1))

end

end A050071.P3337589321564763477

/-! ## A050071.P14848064010699925484

`A050039(n+1)+A050063(n+1)-A050031(n+1)`
-/

namespace A050071.P14848064010699925484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050063 (n + 1) - A050031 (n + 1))

end

end A050071.P14848064010699925484

/-! ## A050071.P14392899591034816773

`A050043(n+1)+A050055(n+1)-A050027(n+1)`
-/

namespace A050071.P14392899591034816773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050043 (n + 1) + (A050055 (n + 1) - A050027 (n + 1))

end

end A050071.P14392899591034816773

/-! ## A050071.P2646744559931783730

`A050047(n+1)+A050051(n+1)-A050027(n+1)`
-/

namespace A050071.P2646744559931783730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050051 (n + 1) - A050027 (n + 1))

end

end A050071.P2646744559931783730

/-! ## A050071.P11399160258718426450

`A050039(n+1)+A050067(n+1)-A050035(n+1)`
-/

namespace A050071.P11399160258718426450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050039 (n + 1) + (A050067 (n + 1) - A050035 (n + 1))

end

end A050071.P11399160258718426450

/-! ## A050071.P4946591127330213485

`A050047(n+1)+A050055(n+1)-A050031(n+1)`
-/

namespace A050071.P4946591127330213485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050055 (n + 1) - A050031 (n + 1))

end

end A050071.P4946591127330213485

/-! ## A050071.P4713575393735710092

`A050051(n+1)+A050055(n+1)-A050035(n+1)`
-/

namespace A050071.P4713575393735710092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050051 (n + 1) + (A050055 (n + 1) - A050035 (n + 1))

end

end A050071.P4713575393735710092

/-! ## A050071.P8383001222261033335

`A050047(n+1)+A050067(n+1)-A050043(n+1)`
-/

namespace A050071.P8383001222261033335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050047 (n + 1) + (A050067 (n + 1) - A050043 (n + 1))

end

end A050071.P8383001222261033335

/-! ## A050071.P13188921432556691693

`A050051(n+1)+A050063(n+1)-A050043(n+1)`
-/

namespace A050071.P13188921432556691693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050051 (n + 1) + (A050063 (n + 1) - A050043 (n + 1))

end

end A050071.P13188921432556691693

/-! ## A050071.P6731630909661101535

`A050051(n+1)+A050067(n+1)-A050047(n+1)`
-/

namespace A050071.P6731630909661101535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050051 (n + 1) + (A050067 (n + 1) - A050047 (n + 1))

end

end A050071.P6731630909661101535

/-! ## A050071.P12986683910253873600

`A050055(n+1)+A050063(n+1)-A050047(n+1)`
-/

namespace A050071.P12986683910253873600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050055 (n + 1) + (A050063 (n + 1) - A050047 (n + 1))

end

end A050071.P12986683910253873600

/-!
# A050072: a(n) = |a(n-1) - a(m)| for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A050072, there is no canonical definition to state claims against.
-/

/-! ## A050072.P6907914146194809072

`A050025(n+1)%2`
-/

namespace A050072.P6907914146194809072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050025 (n + 1)) 2

end

end A050072.P6907914146194809072

/-! ## A050072.P11465013888970071924

`A050033(n+1)%2`
-/

namespace A050072.P11465013888970071924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050033 (n + 1)) 2

end

end A050072.P11465013888970071924

/-! ## A050072.P15857787942868361457

`A050057(n+1)%2`
-/

namespace A050072.P15857787942868361457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050057 (n + 1)) 2

end

end A050072.P15857787942868361457

/-! ## A050072.P5992344635040350766

`A050065(n+1)%2`
-/

namespace A050072.P5992344635040350766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050065 (n + 1)) 2

end

end A050072.P5992344635040350766

/-! ## A050072.P5535380369888903661

`and(1, A050025(A000027(n+1)))`
-/

namespace A050072.P5535380369888903661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A050025 (A000027 (n + 1)).toNat)

end

end A050072.P5535380369888903661

/-! ## A050072.P16525788066054406118

`and(A050025(n+1), A158388(n))`
-/

namespace A050072.P16525788066054406118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050025 (n + 1)) (A158388 n)

end

end A050072.P16525788066054406118

/-! ## A050072.P17584441517704256282

`and(A050033(n+1), A158388(n))`
-/

namespace A050072.P17584441517704256282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050033 (n + 1)) (A158388 n)

end

end A050072.P17584441517704256282

/-! ## A050072.P5188757314287585604

`and(A050057(n+1), A158388(n))`
-/

namespace A050072.P5188757314287585604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050057 (n + 1)) (A158388 n)

end

end A050072.P5188757314287585604

/-! ## A050072.P17851271264278360470

`and(A050065(n+1), A158388(n))`
-/

namespace A050072.P17851271264278360470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050065 (n + 1)) (A158388 n)

end

end A050072.P17851271264278360470

/-! ## A050072.P12844221894748315298

`and(A000041(a(n-1)), A050033(n+1))` with `a(0)=1`
-/

namespace A050072.P12844221894748315298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000041 (a (n - 1)).toNat) (A050033 (n + 1))

end

end A050072.P12844221894748315298

/-! ## A050072.P9214538785983802703

`and(A007318(a(n-1)), A050057(n+1))` with `a(0)=1`
-/

namespace A050072.P9214538785983802703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A007318 (a (n - 1)).toNat) (A050057 (n + 1))

end

end A050072.P9214538785983802703

/-! ## A050072.P4469144150520432169

`and(A050025(n+1), A176410(n))`
-/

namespace A050072.P4469144150520432169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050025 (n + 1)) (A176410 n)

end

end A050072.P4469144150520432169

/-! ## A050072.P15240572986008047639

`and(A050025(n+1), A077860(n))`
-/

namespace A050072.P15240572986008047639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050025 (n + 1)) (A077860 n)

end

end A050072.P15240572986008047639

/-! ## A050072.P11873814209604845110

`and(A050025(n+1), A083318(n))`
-/

namespace A050072.P11873814209604845110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050025 (n + 1)) (A083318 n)

end

end A050072.P11873814209604845110

/-! ## A050072.P2776296556877407888

`and(A050033(n+1), A083318(n))`
-/

namespace A050072.P2776296556877407888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050033 (n + 1)) (A083318 n)

end

end A050072.P2776296556877407888

/-! ## A050072.P13259661544072867060

`and(A048578(n), A050025(n+1))`
-/

namespace A050072.P13259661544072867060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A050025 (n + 1))

end

end A050072.P13259661544072867060

/-! ## A050072.P11085679189808447984

`and(A048578(n), A050033(n+1))`
-/

namespace A050072.P11085679189808447984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A050033 (n + 1))

end

end A050072.P11085679189808447984

/-! ## A050072.P12148162743907426995

`and(A048578(n), A050057(n+1))`
-/

namespace A050072.P12148162743907426995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A050057 (n + 1))

end

end A050072.P12148162743907426995

/-! ## A050072.P7649191857760555984

`and(A048578(n), A050065(n+1))`
-/

namespace A050072.P7649191857760555984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A050065 (n + 1))

end

end A050072.P7649191857760555984

/-! ## A050072.P7338867918271779997

`and(A050025(n+1), A114001(n))`
-/

namespace A050072.P7338867918271779997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050025 (n + 1)) (A114001 n)

end

end A050072.P7338867918271779997

/-!
# A050073: a(n) = |a(n-1) - a(m)| for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A050073, there is no canonical definition to state claims against.
-/

/-! ## A050073.P16201235204558735813

`A050026(n+1)%2`
-/

namespace A050073.P16201235204558735813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050026 (n + 1)) 2

end

end A050073.P16201235204558735813

/-! ## A050073.P1807469181117432504

`A050034(n+1)%2`
-/

namespace A050073.P1807469181117432504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050034 (n + 1)) 2

end

end A050073.P1807469181117432504

/-! ## A050073.P12336466774259213026

`A050058(n+1)%2`
-/

namespace A050073.P12336466774259213026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050058 (n + 1)) 2

end

end A050073.P12336466774259213026

/-! ## A050073.P10406525904720442937

`A050066(n+1)%2`
-/

namespace A050073.P10406525904720442937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050066 (n + 1)) 2

end

end A050073.P10406525904720442937

/-! ## A050073.P10464453341542052436

`and(1, A050058(Δ[n²]-n))`
-/

namespace A050073.P10464453341542052436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A050058 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A050073.P10464453341542052436

/-! ## A050073.P13914142700278432535

`A000007(val(A050026(n+1), 2))`
-/

namespace A050073.P13914142700278432535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A050026 (n + 1)).toNat 2)

end

end A050073.P13914142700278432535

/-! ## A050073.P2153940137196485956

`and(A007318(a(n-1)), A050026(n+1))` with `a(0)=1`
-/

namespace A050073.P2153940137196485956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A007318 (a (n - 1)).toNat) (A050026 (n + 1))

end

end A050073.P2153940137196485956

/-! ## A050073.P18255619905585536548

`A063524(gcd(A050058(n+1)+2, A050058(n+1)))`
-/

namespace A050073.P18255619905585536548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.gcd (A050058 (n + 1) + 2) (A050058 (n + 1)))

end

end A050073.P18255619905585536548

/-! ## A050073.P10492429475744995959

`and(A050026(n+1), A077860(n))`
-/

namespace A050073.P10492429475744995959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050026 (n + 1)) (A077860 n)

end

end A050073.P10492429475744995959

/-! ## A050073.P6451910917007562356

`and(A050026(n+1), A083318(n))`
-/

namespace A050073.P6451910917007562356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050026 (n + 1)) (A083318 n)

end

end A050073.P6451910917007562356

/-! ## A050073.P18044014507177123664

`and(A048578(n), A050026(n+1))`
-/

namespace A050073.P18044014507177123664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A050026 (n + 1))

end

end A050073.P18044014507177123664

/-! ## A050073.P8515164589790498784

`and(A048578(n), A050034(n+1))`
-/

namespace A050073.P8515164589790498784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A050034 (n + 1))

end

end A050073.P8515164589790498784

/-! ## A050073.P14199779508015433211

`and(A048578(n), A050066(n+1))`
-/

namespace A050073.P14199779508015433211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A050066 (n + 1))

end

end A050073.P14199779508015433211

/-! ## A050073.P11188108461595628336

`and(A050026(n+1), A066827(n+1))`
-/

namespace A050073.P11188108461595628336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050026 (n + 1)) (A066827 (n + 1))

end

end A050073.P11188108461595628336

/-! ## A050073.P16705326293832069742

`and(A020737(n), A050026(n+1))`
-/

namespace A050073.P16705326293832069742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A050026 (n + 1))

end

end A050073.P16705326293832069742

/-! ## A050073.P1530993654125666280

`and(A020737(n), A050034(n+1))`
-/

namespace A050073.P1530993654125666280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A050034 (n + 1))

end

end A050073.P1530993654125666280

/-! ## A050073.P4101625024719538262

`and(A020737(n), A050066(n+1))`
-/

namespace A050073.P4101625024719538262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A050066 (n + 1))

end

end A050073.P4101625024719538262

/-! ## A050073.P10745122864816277435

`and(A033622(n), A050026(n+1))`
-/

namespace A050073.P10745122864816277435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A050026 (n + 1))

end

end A050073.P10745122864816277435

/-! ## A050073.P13556932458795688594

`and(A050026(n+1), A195744(n))`
-/

namespace A050073.P13556932458795688594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050026 (n + 1)) (A195744 n)

end

end A050073.P13556932458795688594

/-! ## A050073.P1967346424286234945

`and(A050034(n+1), A195744(n))`
-/

namespace A050073.P1967346424286234945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050034 (n + 1)) (A195744 n)

end

end A050073.P1967346424286234945

/-!
# A050074: a(n) = |a(n-1) - a(m)| for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A050074, there is no canonical definition to state claims against.
-/

/-! ## A050074.P15339126773602443670

`val(A050289(n+1), A116667(A084321(n+1)))`
-/

namespace A050074.P15339126773602443670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050289 (n + 1)).toNat (A116667 (A084321 (n + 1)).toNat).toNat

end

end A050074.P15339126773602443670

/-!
# A050075: a(n) = |a(n-1) - a(m)| for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A050075, there is no canonical definition to state claims against.
-/

/-! ## A050075.P1545146921603109012

`A189463(n+1)+A002654(A005578(n))`
-/

namespace A050075.P1545146921603109012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (n + 1) + A002654 (A005578 n).toNat

end

end A050075.P1545146921603109012

/-! ## A050075.P11049848523640291636

`A189463(n+1)+A010052(A001045(n))`
-/

namespace A050075.P11049848523640291636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (n + 1) + A010052 (A001045 n).toNat

end

end A050075.P11049848523640291636

/-! ## A050075.P14238990673991366903

`A189463(n+1)+A000089(A011782(n))`
-/

namespace A050075.P14238990673991366903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (n + 1) + A000089 (A011782 n).toNat

end

end A050075.P14238990673991366903

/-! ## A050075.P6914649798929351899

`A189463(n+1)+A010052(A024493(n))`
-/

namespace A050075.P6914649798929351899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (n + 1) + A010052 (A024493 n).toNat

end

end A050075.P6914649798929351899

/-!
# A050076: a(n) = floor(a(n-1)/3) if this is not among 0, a(1), ..., a(n-2); otherwise a(n) = 2*a(n-1).

The programs for A050076, there is no canonical definition to state claims against.
-/

/-! ## A050076.P14927292024274107590

`A000188(A101229(n+4)²)`
-/

namespace A050076.P14927292024274107590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A101229 (n + 4) ^ 2).toNat

end

end A050076.P14927292024274107590

/-! ## A050076.P6930560053624635425

`A033676(A101229(n+4)²)`
-/

namespace A050076.P6930560053624635425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A101229 (n + 4) ^ 2).toNat

end

end A050076.P6930560053624635425

/-! ## A050076.P16115406834558090408

`A137735(A101229(n+4)²)`
-/

namespace A050076.P16115406834558090408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A101229 (n + 4) ^ 2).toNat

end

end A050076.P16115406834558090408

/-! ## A050076.P2684650094711924125

`A101229(A004896(n+1)+4)`
-/

namespace A050076.P2684650094711924125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101229 (A004896 (n + 1) + 4).toNat

end

end A050076.P2684650094711924125

/-! ## A050076.P7137392333079775313

`A101229(A004907(n+1)+4)`
-/

namespace A050076.P7137392333079775313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101229 (A004907 (n + 1) + 4).toNat

end

end A050076.P7137392333079775313

/-!
# A050077: a(n)=position of n in A050076.

The programs for A050077, there is no canonical definition to state claims against.
-/

/-! ## A050077.P15030981767298113916

`A316439(A321730(n))+A006577(n+1)`
-/

namespace A050077.P15030981767298113916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316439 (A321730 n).toNat + A006577 (n + 1)

end

end A050077.P15030981767298113916

/-! ## A050077.P2369295450235301857

`A335341(A058411(n+1))+A006577(n+1)`
-/

namespace A050077.P2369295450235301857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A058411 (n + 1)).toNat + A006577 (n + 1)

end

end A050077.P2369295450235301857

/-!
# A050078: Numbers k such that A050076(k) < A050076(k+1).

The programs for A050078, there is no canonical definition to state claims against.
-/

/-! ## A050078.P11988176915732228042

`1+comp[A050079(n+1)-1]`
-/

namespace A050078.P11988176915732228042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050079 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050078.P11988176915732228042

/-! ## A050078.P10082262001239624122

`eq[char[A050079(n+1)], A000007(n)]`
-/

namespace A050078.P10082262001239624122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050078.P10082262001239624122

/-! ## A050078.P2418820585782906787

`eq[char[A050079(n+1)], A000038(n)]`
-/

namespace A050078.P2418820585782906787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050078.P2418820585782906787

/-! ## A050078.P17066232999813614599

`eq[Δ[A050076(n+1)], A050076(n+1)]+1`
-/

namespace A050078.P17066232999813614599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A050078.P17066232999813614599

/-! ## A050078.P11063203371022468331

`record[n+1-A050076(n+2)%A050076(n+1)]`
-/

namespace A050078.P11063203371022468331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A050076 (n + 2)) (A050076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050078.P11063203371022468331

/-! ## A050078.P12978540985514888275

`lt[A050076(A028310(n)), A050076(n+1)]`
-/

namespace A050078.P12978540985514888275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050076 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050078.P12978540985514888275

/-! ## A050078.P10321275775956176282

`eq[char[A050079(n+1)], A151933(n)]`
-/

namespace A050078.P10321275775956176282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050078.P10321275775956176282

/-!
# A050079: Numbers k such that A050076(k) > A050076(k+1).

The programs for A050079, there is no canonical definition to state claims against.
-/

/-! ## A050079.P12754898255673758673

`eq[char[A050078(n+1)], A000007(n)]`
-/

namespace A050079.P12754898255673758673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050078 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050079.P12754898255673758673

/-! ## A050079.P696435720462640986

`eq[char[A050078(n+1)], A000038(n)]`
-/

namespace A050079.P696435720462640986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050078 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050079.P696435720462640986

/-! ## A050079.P2707054755621545867

`eq[char[A050078(n+1)], A130706(n)]`
-/

namespace A050079.P2707054755621545867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050078 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050079.P2707054755621545867

/-! ## A050079.P18061092313350645910

`lt[A050076(n+1), A050076(A028310(n))]`
-/

namespace A050079.P18061092313350645910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050079.P18061092313350645910

/-! ## A050079.P15358837237562566472

`eq[char[A050078(n+1)], A264782(2*n+1)]`
-/

namespace A050079.P15358837237562566472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050078 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264782 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050079.P15358837237562566472

/-!
# A050082: Numbers k such that A050080(k) < A050080(k+1).

The programs for A050082, there is no canonical definition to state claims against.
-/

/-! ## A050082.P14053354155103397284

`eq[char[A050083(n+1)], A000007(n)]`
-/

namespace A050082.P14053354155103397284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050083 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050082.P14053354155103397284

/-! ## A050082.P10482663940190768820

`eq[char[A050083(n+1)], A000038(n)]`
-/

namespace A050082.P10482663940190768820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050083 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050082.P10482663940190768820

/-! ## A050082.P11070810096704842339

`lt[A050080(n+1), A050080(n+2)]+1`
-/

namespace A050082.P11070810096704842339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050080 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050082.P11070810096704842339

/-! ## A050082.P7200192642216029021

`lt[A050080(A028310(n)), A050080(n+1)]`
-/

namespace A050082.P7200192642216029021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050080 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050082.P7200192642216029021

/-! ## A050082.P1143423905447678997

`eq[char[A050083(n+1)], A114811((n+2)²)]`
-/

namespace A050082.P1143423905447678997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050083 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050082.P1143423905447678997

/-!
# A050083: Numbers k such that A050080(k) > A050080(k+1).

The programs for A050083, there is no canonical definition to state claims against.
-/

/-! ## A050083.P15933253156489498874

`eq[char[A050082(n+1)], A000007(n)]`
-/

namespace A050083.P15933253156489498874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050082 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050083.P15933253156489498874

/-! ## A050083.P8132316452382108437

`eq[char[A050082(n+1)], A000038(n)]`
-/

namespace A050083.P8132316452382108437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050082 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050083.P8132316452382108437

/-! ## A050083.P923175854316633839

`eq[1, A057427(n)+char[A050082(n+1)]]`
-/

namespace A050083.P923175854316633839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050082 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050083.P923175854316633839

/-! ## A050083.P14350030600048448545

`eq[2*A019590(n+1), char[A050082(n+1)]]`
-/

namespace A050083.P14350030600048448545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019590 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050082 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050083.P14350030600048448545

/-! ## A050083.P11253651340729834518

`lt[A050080(n+1), A050080(A028310(n))]`
-/

namespace A050083.P11253651340729834518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050080 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050083.P11253651340729834518

/-! ## A050083.P15713383728430582548

`eq[char[A050082(n+1)], A019590(n+2)]`
-/

namespace A050083.P15713383728430582548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050082 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050083.P15713383728430582548

/-!
# A050086: Numbers k such that A050084(k) < A050084(k+1).

The programs for A050086, there is no canonical definition to state claims against.
-/

/-! ## A050086.P3151177737735789509

`lt[1, Δ[A050084(n+1)]]+1`
-/

namespace A050086.P3151177737735789509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050086.P3151177737735789509

/-! ## A050086.P8675848905796330610

`lt[0, Δ[A050084(A028310(n))]]`
-/

namespace A050086.P8675848905796330610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050086.P8675848905796330610

/-! ## A050086.P12862464736598125178

`eq[char[A050087(n+1)], A000007(n)]`
-/

namespace A050086.P12862464736598125178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050087 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050086.P12862464736598125178

/-! ## A050086.P9989051312420230383

`eq[char[A050087(n+1)], A000038(n)]`
-/

namespace A050086.P9989051312420230383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050087 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050086.P9989051312420230383

/-! ## A050086.P4047781503749737669

`lt[A050084(n+1), A050084(n+2)]+1`
-/

namespace A050086.P4047781503749737669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050086.P4047781503749737669

/-! ## A050086.P5311570079658138165

`lt[A050084(A028310(n)), A050084(n+1)]`
-/

namespace A050086.P5311570079658138165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050086.P5311570079658138165

/-!
# A050087: Numbers k such that A050084(k) > A050084(k+1).

The programs for A050087, there is no canonical definition to state claims against.
-/

/-! ## A050087.P5086522934151875793

`lt[Δ[A050084(n+1)], 1]+1`
-/

namespace A050087.P5086522934151875793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A050087.P5086522934151875793

/-! ## A050087.P9647166188539547024

`lt[Δ[A050084(A028310(n))²], n]`
-/

namespace A050087.P9647166188539547024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (A028310 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A050087.P9647166188539547024

/-! ## A050087.P1725531661107989846

`eq[char[A050086(n+1)], A000007(n)]`
-/

namespace A050087.P1725531661107989846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050087.P1725531661107989846

/-! ## A050087.P655498375873525838

`eq[char[A050086(n+1)], A000038(n)]`
-/

namespace A050087.P655498375873525838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050087.P655498375873525838

/-! ## A050087.P15816521747070967113

`eq[char[A050086(n+1)], A130706(n)]`
-/

namespace A050087.P15816521747070967113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050087.P15816521747070967113

/-! ## A050087.P17868906530313701104

`eq[char[A050086(n+1)], A166926(n)]`
-/

namespace A050087.P17868906530313701104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050087.P17868906530313701104

/-! ## A050087.P7771543353090341795

`eq[char[A050086(n+1)], A167891(n)]`
-/

namespace A050087.P7771543353090341795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050087.P7771543353090341795

/-! ## A050087.P6454497539378158500

`lt[A050084(n+1), A050084(A028310(n))]`
-/

namespace A050087.P6454497539378158500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050084 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050087.P6454497539378158500

/-!
# A050090: Numbers k such that b(k) < b(k+1), where b=A050088.

The programs for A050090, there is no canonical definition to state claims against.
-/

/-! ## A050090.P4529361877628907567

`eq[char[A050091(n+1)], A000007(n)]`
-/

namespace A050090.P4529361877628907567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050091 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050090.P4529361877628907567

/-! ## A050090.P14512606223564822906

`eq[char[A050091(n+1)], A000038(n)]`
-/

namespace A050090.P14512606223564822906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050091 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050090.P14512606223564822906

/-! ## A050090.P3048113029685633660

`lt[A050088(n+1), A050088(n+2)]+1`
-/

namespace A050090.P3048113029685633660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050090.P3048113029685633660

/-! ## A050090.P3885558078910102222

`eq[char[A050091(n+1)], A255738(2*(n+1))]`
-/

namespace A050090.P3885558078910102222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050091 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050090.P3885558078910102222

/-! ## A050090.P10356393217206388349

`lt[A050088(A028310(n)), A050088(n+1)]`
-/

namespace A050090.P10356393217206388349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050090.P10356393217206388349

/-! ## A050090.P46450242018495398

`eq[char[A050091(n+1)], A014197(2*n+1)]`
-/

namespace A050090.P46450242018495398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050091 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050090.P46450242018495398

/-!
# A050091: Numbers k such that A050088(k) > A050088(k+1).

The programs for A050091, there is no canonical definition to state claims against.
-/

/-! ## A050091.P12490129006996655976

`eq[char[A050090(n+1)], A000007(n)]`
-/

namespace A050091.P12490129006996655976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050091.P12490129006996655976

/-! ## A050091.P998363829528233689

`eq[char[A050090(n+1)], A000038(n)]`
-/

namespace A050091.P998363829528233689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050091.P998363829528233689

/-! ## A050091.P8772893530935235052

`lt[A050088(n+2), A050088(n+1)]+1`
-/

namespace A050091.P8772893530935235052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050091.P8772893530935235052

/-! ## A050091.P18430113795714148238

`lt[A050088(n+1), A050088(A028310(n))]`
-/

namespace A050091.P18430113795714148238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050088 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050091.P18430113795714148238

/-! ## A050091.P8083722644706177363

`eq[char[A050090(n+1)], A097331(2*n)]`
-/

namespace A050091.P8083722644706177363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050091.P8083722644706177363

/-! ## A050091.P9710914828854360610

`eq[char[A050090(n+1)], A151933(n)]`
-/

namespace A050091.P9710914828854360610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050091.P9710914828854360610

/-!
# A050094: Numbers k such that A050092(k) < A050092(k+1).

The programs for A050094, there is no canonical definition to state claims against.
-/

/-! ## A050094.P13960479232331960293

`eq[char[A050095(n+1)], A000007(n)]`
-/

namespace A050094.P13960479232331960293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050095 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050094.P13960479232331960293

/-! ## A050094.P3910505113434801347

`eq[char[A050095(n+1)], A000038(n)]`
-/

namespace A050094.P3910505113434801347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050095 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050094.P3910505113434801347

/-! ## A050094.P9383961842260112366

`lt[A050092(n+1), A050092(n+2)]+1`
-/

namespace A050094.P9383961842260112366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050094.P9383961842260112366

/-! ## A050094.P16286745730170233097

`eq[char[A050095(n+1)], A133943(2*n+1)]`
-/

namespace A050094.P16286745730170233097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050095 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133943 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050094.P16286745730170233097

/-! ## A050094.P13202630113630931850

`lt[A050092(A028310(n)), A050092(n+1)]`
-/

namespace A050094.P13202630113630931850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050094.P13202630113630931850

/-! ## A050094.P973846562588779117

`A008619(2*comp[A050095(n+1)-1])`
-/

namespace A050094.P973846562588779117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050095 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A050094.P973846562588779117

/-! ## A050094.P16682289165742651934

`eq[char[A050095(n+1)], A088917(n²)]`
-/

namespace A050094.P16682289165742651934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050095 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050094.P16682289165742651934

/-!
# A050095: Numbers k such that A050092(k) > A050092(k+1).

The programs for A050095, there is no canonical definition to state claims against.
-/

/-! ## A050095.P7311009798010578506

`eq[char[A050094(n+1)], A000007(n)]`
-/

namespace A050095.P7311009798010578506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050094 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050095.P7311009798010578506

/-! ## A050095.P9554551757006834946

`eq[char[A050094(n+1)], A000038(n)]`
-/

namespace A050095.P9554551757006834946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050094 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050095.P9554551757006834946

/-! ## A050095.P11066447854878715119

`lt[A050092(n+2), A050092(n+1)]+1`
-/

namespace A050095.P11066447854878715119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050095.P11066447854878715119

/-! ## A050095.P2186725122149447742

`eq[char[A050094(n+1)], A133943(2*n+1)]`
-/

namespace A050095.P2186725122149447742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050094 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133943 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050095.P2186725122149447742

/-! ## A050095.P381038336555490762

`eq[A071364(n+1)%2, char[A050094(n+1)]]`
-/

namespace A050095.P381038336555490762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050094 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050095.P381038336555490762

/-! ## A050095.P5655445031847462147

`lt[A050092(n+1), A050092(A028310(n))]`
-/

namespace A050095.P5655445031847462147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050092 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050095.P5655445031847462147

/-! ## A050095.P7429173803643358061

`eq[char[A050094(n+1)], A151933(n)]`
-/

namespace A050095.P7429173803643358061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050094 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050095.P7429173803643358061

/-!
# A050098: Numbers k such that A050096(k) < A050096(k+1).

The programs for A050098, there is no canonical definition to state claims against.
-/

/-! ## A050098.P5346782898617744118

`eq[char[A050099(n+1)], A000007(n)]`
-/

namespace A050098.P5346782898617744118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050099 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050098.P5346782898617744118

/-! ## A050098.P17265984916497737941

`eq[char[A050099(n+1)], A000038(n)]`
-/

namespace A050098.P17265984916497737941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050099 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050098.P17265984916497737941

/-! ## A050098.P13027415951904450198

`eq[char[A050099(n+1)], A020761(n)]`
-/

namespace A050098.P13027415951904450198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050099 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050098.P13027415951904450198

/-! ## A050098.P13116045121262899457

`lt[A050096(n+1), A050096(n+2)]+1`
-/

namespace A050098.P13116045121262899457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050096 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050098.P13116045121262899457

/-! ## A050098.P13269984283429807602

`eq[char[A050099(n+1)], A264739(2*n+1)]`
-/

namespace A050098.P13269984283429807602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050099 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050098.P13269984283429807602

/-!
# A050099: Numbers k such that A050096(k) > A050096(k+1).

The programs for A050099, there is no canonical definition to state claims against.
-/

/-! ## A050099.P14456576010106825770

`eq[char[A050098(n+1)], A000007(n)]`
-/

namespace A050099.P14456576010106825770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050099.P14456576010106825770

/-! ## A050099.P223897803912430440

`eq[char[A050098(n+1)], A000038(n)]`
-/

namespace A050099.P223897803912430440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050099.P223897803912430440

/-! ## A050099.P14097580109478045487

`eq[char[A050098(n+1)], A063524(n+1)]`
-/

namespace A050099.P14097580109478045487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050099.P14097580109478045487

/-! ## A050099.P11525368668052189754

`lt[A050096(n+2), A050096(n+1)]+1`
-/

namespace A050099.P11525368668052189754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050096 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050099.P11525368668052189754

/-! ## A050099.P12219300640816671545

`eq[char[A050098(n+1)], A285476(n)]`
-/

namespace A050099.P12219300640816671545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050099.P12219300640816671545

/-! ## A050099.P4889781355266082574

`eq[char[A050098(n+1)], A151933(n)]`
-/

namespace A050099.P4889781355266082574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050099.P4889781355266082574

