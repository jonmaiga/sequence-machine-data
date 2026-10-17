import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A050100: a(n) = floor(a(n-1)/3) if this is positive and not yet in the sequence, otherwise a(n) = 10*a(n-1).

The programs for A050100, there is no canonical definition to state claims against.
-/

/-! ## A050100.P10177366706850161421

`3*A341363(a(n-1))` with `a(0)=1, a(1)=10, a(2)=3`
-/

namespace A050100.P10177366706850161421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 3] fun n a =>
  3 * A341363 (a (n - 1)).toNat

end

end A050100.P10177366706850161421

/-!
# A050102: Numbers k such that A050100(k) < A050100(k+1).

The programs for A050102, there is no canonical definition to state claims against.
-/

/-! ## A050102.P5418321039591612701

`lt[n*char[A050103(n+1)], n]`
-/

namespace A050102.P5418321039591612701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050103 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050102.P5418321039591612701

/-! ## A050102.P6185448463216591554

`eq[char[A050103(n+1)], A000007(n)]`
-/

namespace A050102.P6185448463216591554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050103 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050102.P6185448463216591554

/-! ## A050102.P13321632268918368828

`eq[char[A050103(n+1)], A000038(n)]`
-/

namespace A050102.P13321632268918368828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050103 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050102.P13321632268918368828

/-! ## A050102.P2766614617735639238

`lt[char[A050103(n+1)], A057427(n)]`
-/

namespace A050102.P2766614617735639238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050103 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050102.P2766614617735639238

/-! ## A050102.P3643019348651796982

`eq[char[A050103(n+1)], A036987(2*n)]`
-/

namespace A050102.P3643019348651796982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050103 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050102.P3643019348651796982

/-! ## A050102.P1448240452476968341

`lt[A050100(n+1), A050100(n+2)]+1`
-/

namespace A050102.P1448240452476968341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050100 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050102.P1448240452476968341

/-!
# A050103: Numbers k such that A050100(k) > A050100(k+1).

The programs for A050103, there is no canonical definition to state claims against.
-/

/-! ## A050103.P9247042359681837371

`comp[A050102(n+1)-1]+1`
-/

namespace A050103.P9247042359681837371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050102 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050103.P9247042359681837371

/-! ## A050103.P10757969733184050781

`eq[char[A050102(n+1)], A000007(n)]`
-/

namespace A050103.P10757969733184050781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050103.P10757969733184050781

/-! ## A050103.P10233465107964492329

`eq[char[A050102(n+1)], A000038(n)]`
-/

namespace A050103.P10233465107964492329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050103.P10233465107964492329

/-! ## A050103.P13954509625010780340

`lt[char[A050102(n+1)], A000035(A117563(n+1))]`
-/

namespace A050103.P13954509625010780340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A117563 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050103.P13954509625010780340

/-! ## A050103.P16658651511900309237

`eq[char[A050102(n+1)], A000035(A008574(n))]`
-/

namespace A050103.P16658651511900309237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050103.P16658651511900309237

/-! ## A050103.P12607388751781253414

`eq[char[A050102(n+1)], A151933(n)]`
-/

namespace A050103.P12607388751781253414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050103.P12607388751781253414

/-!
# A050104: a(n) = floor(a(n-1)/4) if this is not among 0, a(1), ..., a(n-2); otherwise a(n) = 3*a(n-1).

The programs for A050104, there is no canonical definition to state claims against.
-/

/-! ## A050104.P12903508609425646753

`A326139((3*a(n-1)+1)²)-1` with `a(0)=1, a(1)=3, a(2)=9, a(3)=2`
-/

namespace A050104.P12903508609425646753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 2] fun n a =>
  A326139 ((3 * a (n - 1) + 1) ^ 2).toNat - 1

end

end A050104.P12903508609425646753

/-! ## A050104.P2207355322525543717

`A006047(A033139(n+1)-1)`
-/

namespace A050104.P2207355322525543717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A033139 (n + 1) - 1).toNat

end

end A050104.P2207355322525543717

/-! ## A050104.P13812627077498296000

`A007294(n)*A050985(3^n)`
-/

namespace A050104.P13812627077498296000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n * A050985 (3 ^ n)

end

end A050104.P13812627077498296000

/-!
# A050106: Numbers k such that A050104(k) < A050104(k+1).

The programs for A050106, there is no canonical definition to state claims against.
-/

/-! ## A050106.P13370601625464909329

`lt[n*char[A050107(n+1)], n]`
-/

namespace A050106.P13370601625464909329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050106.P13370601625464909329

/-! ## A050106.P2495310303060906974

`eq[char[A050107(n+1)], A000007(n)]`
-/

namespace A050106.P2495310303060906974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050106.P2495310303060906974

/-! ## A050106.P11272588431739300323

`eq[char[A050107(n+1)], A000038(n)]`
-/

namespace A050106.P11272588431739300323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050106.P11272588431739300323

/-! ## A050106.P13923942740170958972

`lt[char[A050107(n+1)], A057427(n)]`
-/

namespace A050106.P13923942740170958972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050106.P13923942740170958972

/-! ## A050106.P16511318407795174682

`lt[A050104(A028310(n)), A050104(n+1)]`
-/

namespace A050106.P16511318407795174682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050106.P16511318407795174682

/-! ## A050106.P14334403760563862480

`lt[A050104(A000007(n)+n), A050104(n+1)]`
-/

namespace A050106.P14334403760563862480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050106.P14334403760563862480

/-! ## A050106.P9107183305012557020

`eq[char[A050107(n+1)], A097331(2*n)]`
-/

namespace A050106.P9107183305012557020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050106.P9107183305012557020

/-! ## A050106.P14825834390645221533

`eq[char[A050107(n+1)], A187615(98*n)]`
-/

namespace A050106.P14825834390645221533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187615 (98 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050106.P14825834390645221533

/-!
# A050107: Numbers k such that A050104(k) > A050104(k+1).

The programs for A050107, there is no canonical definition to state claims against.
-/

/-! ## A050107.P6639848854624133907

`eq[char[A050106(n+1)], A000007(n)]`
-/

namespace A050107.P6639848854624133907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050106 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050107.P6639848854624133907

/-! ## A050107.P278650010944087418

`eq[char[A050106(n+1)], A000038(n)]`
-/

namespace A050107.P278650010944087418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050106 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050107.P278650010944087418

/-! ## A050107.P2969174558729875676

`eq[char[A050106(n+1)], A130706(n)]`
-/

namespace A050107.P2969174558729875676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050106 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050107.P2969174558729875676

/-! ## A050107.P3170585924296911986

`lt[A050104(n+1), A050104(A028310(n))]`
-/

namespace A050107.P3170585924296911986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050107.P3170585924296911986

/-! ## A050107.P12439814821613847108

`lt[A050104(n+1), A050104(A000007(n)+n)]`
-/

namespace A050107.P12439814821613847108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050104 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050107.P12439814821613847108

/-!
# A050110: Numbers k such that A050108(k) < A050108(k+1).

The programs for A050110, there is no canonical definition to state claims against.
-/

/-! ## A050110.P18204722022492326912

`eq[char[A050111(n+1)], A000007(n)]`
-/

namespace A050110.P18204722022492326912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050110.P18204722022492326912

/-! ## A050110.P2160824348312233880

`eq[char[A050111(n+1)], A000038(n)]`
-/

namespace A050110.P2160824348312233880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050110.P2160824348312233880

/-! ## A050110.P17453676921183317678

`eq[char[A050111(n+1)], A063524(n+1)]`
-/

namespace A050110.P17453676921183317678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050110.P17453676921183317678

/-! ## A050110.P17997320883349253574

`eq[char[A050111(n+1)], A036987(2*n)]`
-/

namespace A050110.P17997320883349253574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050110.P17997320883349253574

/-! ## A050110.P15384753882658570196

`lt[A050108(A028310(n)), A050108(n+1)]`
-/

namespace A050110.P15384753882658570196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050108 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050110.P15384753882658570196

/-! ## A050110.P15264335363007240134

`eq[char[A050111(n+1)], A135863(2*(n+1))]`
-/

namespace A050110.P15264335363007240134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135863 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050110.P15264335363007240134

/-!
# A050111: Numbers k such that A050108(k) > A050108(k+1).

The programs for A050111, there is no canonical definition to state claims against.
-/

/-! ## A050111.P7565061422160716321

`eq[char[A050110(n+1)], A000007(n)]`
-/

namespace A050111.P7565061422160716321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050110 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050111.P7565061422160716321

/-! ## A050111.P5101228839335719172

`eq[char[A050110(n+1)], A000038(n)]`
-/

namespace A050111.P5101228839335719172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050110 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050111.P5101228839335719172

/-! ## A050111.P14960438475125783812

`eq[char[A050110(n+1)], A130706(n)]`
-/

namespace A050111.P14960438475125783812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050110 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050111.P14960438475125783812

/-! ## A050111.P2824832582917204948

`eq[1, A057427(n)+char[A050110(n+1)]]`
-/

namespace A050111.P2824832582917204948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050110 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050111.P2824832582917204948

/-! ## A050111.P11241969988104349823

`lt[A050108(n+1), A050108(A028310(n))]`
-/

namespace A050111.P11241969988104349823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050111.P11241969988104349823

/-! ## A050111.P2375519705657734177

`eq[char[A050110(n+1)], A004530(n²+1+n)]`
-/

namespace A050111.P2375519705657734177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050110 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050111.P2375519705657734177

/-!
# A050114: Numbers k such that A050112(k) < A050112(k+1).

The programs for A050114, there is no canonical definition to state claims against.
-/

/-! ## A050114.P4426724586220523512

`lt[n*char[A050115(n+1)], n]`
-/

namespace A050114.P4426724586220523512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050115 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050114.P4426724586220523512

/-! ## A050114.P1495292169062962299

`eq[char[A050115(n+1)], A000007(n)]`
-/

namespace A050114.P1495292169062962299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050115 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050114.P1495292169062962299

/-! ## A050114.P18414063417934589579

`eq[char[A050115(n+1)], A000038(n)]`
-/

namespace A050114.P18414063417934589579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050115 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050114.P18414063417934589579

/-! ## A050114.P4570230642007127808

`lt[char[A050115(n+1)], A057427(n)]`
-/

namespace A050114.P4570230642007127808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050115 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050114.P4570230642007127808

/-! ## A050114.P2147680877883100809

`record[n+1-A050112(n+2)%A050112(n+1)]`
-/

namespace A050114.P2147680877883100809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A050112 (n + 2)) (A050112 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050114.P2147680877883100809

/-! ## A050114.P13027413137746001954

`lt[A050112(A028310(n)), A050112(n+1)]`
-/

namespace A050114.P13027413137746001954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050112 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050114.P13027413137746001954

/-! ## A050114.P1063527430362188327

`eq[char[A050115(n+1)], A266070(2*n)]`
-/

namespace A050114.P1063527430362188327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050115 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050114.P1063527430362188327

/-!
# A050115: Numbers k such that A050112(k) > A050112(k+1).

The programs for A050115, there is no canonical definition to state claims against.
-/

/-! ## A050115.P4021963802884584370

`lt[n*char[A050114(n+1)], n]`
-/

namespace A050115.P4021963802884584370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050114 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050115.P4021963802884584370

/-! ## A050115.P11326801660265581709

`eq[char[A050114(n+1)], A000007(n)]`
-/

namespace A050115.P11326801660265581709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050114 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050115.P11326801660265581709

/-! ## A050115.P737098921362484497

`eq[char[A050114(n+1)], A000038(n)]`
-/

namespace A050115.P737098921362484497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050114 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050115.P737098921362484497

/-! ## A050115.P11416560983471637105

`lt[char[A050114(n+1)], A057427(n)]`
-/

namespace A050115.P11416560983471637105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050114 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050115.P11416560983471637105

/-! ## A050115.P7065797440132240137

`lt[A050112(n+2), A050112(n+1)]+1`
-/

namespace A050115.P7065797440132240137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050112 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050115.P7065797440132240137

/-! ## A050115.P17103679241245406216

`lt[A050112(n+1), A050112(A028310(n))]`
-/

namespace A050115.P17103679241245406216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050112 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050115.P17103679241245406216

/-! ## A050115.P12564005061441693164

`eq[char[A050114(n+1)], A080339(2*(n+1))]`
-/

namespace A050115.P12564005061441693164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050114 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050115.P12564005061441693164

/-! ## A050115.P18378571360495329521

`eq[char[A050114(n+1)], A323402((n+1)²)]`
-/

namespace A050115.P18378571360495329521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050114 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050115.P18378571360495329521

/-!
# A050116: Numbers that are the product of two distinct Lucas numbers.

The programs for A050116, there is no canonical definition to state claims against.
-/

/-! ## A050116.P763799085779746936

`A050117(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A050116.P763799085779746936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A050117 (n + 1) + a (n - 1)

end

end A050116.P763799085779746936

/-! ## A050116.P16858490049914753394

`∑[A050117(abs(1-n)+2)]+1`
-/

namespace A050116.P16858490049914753394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050117 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050116.P16858490049914753394

/-! ## A050116.P11094383374346904501

`A274281(n+2)+A184955(A000009(n))`
-/

namespace A050116.P11094383374346904501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274281 (n + 2) + A184955 (A000009 n).toNat

end

end A050116.P11094383374346904501

/-! ## A050116.P11191828585707089979

`∑[A138121(A238016(3*n+1))+A035377(n)]`
-/

namespace A050116.P11191828585707089979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (A238016 (3 * n + 1)).toNat + A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050116.P11191828585707089979

/-!
# A050117: a(n) = b(n)-b(n-1), where b=A050116 (ordered products of Lucas numbers).

The programs for A050117, there is no canonical definition to state claims against.
-/

/-! ## A050117.P17490715797282543737

`Δ[A050116(n+1)]`
-/

namespace A050117.P17490715797282543737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050117.P17490715797282543737

/-! ## A050117.P678819841778560339

`Δ[record[A050116(A331745(n))]]`
-/

namespace A050117.P678819841778560339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050117.P678819841778560339

/-! ## A050117.P10669619417105059587

`A050116(n+2)-A050116(n+1)`
-/

namespace A050117.P10669619417105059587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 2) - A050116 (n + 1)

end

end A050117.P10669619417105059587

/-! ## A050117.P2452335384980982912

`A050116(A020725(n+1))%A050116(n+1)`
-/

namespace A050117.P2452335384980982912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050116 (A020725 (n + 1)).toNat) (A050116 (n + 1))

end

end A050117.P2452335384980982912

/-! ## A050117.P90205951206219781

`abs(Δ[A050116(A110514(2*n))])`
-/

namespace A050117.P90205951206219781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A050117.P90205951206219781

/-! ## A050117.P12093861718626581555

`Δ[A050116(A110514(2*n))]-A028326(n)%2`
-/

namespace A050117.P12093861718626581555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A028326 n) 2

end

end A050117.P12093861718626581555

/-! ## A050117.P12763622570673008413

`Δ[record[A050116(A137735(n))]]`
-/

namespace A050117.P12763622570673008413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050117.P12763622570673008413

/-!
# A050118: Numbers that are the product of two Lucas numbers.

The programs for A050118, there is no canonical definition to state claims against.
-/

/-! ## A050118.P12835065898326958784

`A050119(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A050118.P12835065898326958784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050119 (n + 1) + a (n - 1)

end

end A050118.P12835065898326958784

/-! ## A050118.P1371653914439457665

`∑[A050119(n+2)]+1-A050119(n+2)`
-/

namespace A050118.P1371653914439457665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A050119 (n + 2))

end

end A050118.P1371653914439457665

/-! ## A050118.P11449112327507606772

`∑[A050119(A135560(2*n+1)+n)]`
-/

namespace A050118.P11449112327507606772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050119 (A135560 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050118.P11449112327507606772

/-! ## A050118.P12746187709699343586

`∑[A050119(A001281(A103517(n)))]`
-/

namespace A050118.P12746187709699343586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050119 (A001281 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050118.P12746187709699343586

/-! ## A050118.P8251315832489507483

`∑[A050119(A001281(A051755(n+2)))]`
-/

namespace A050118.P8251315832489507483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050119 (A001281 (A051755 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050118.P8251315832489507483

/-! ## A050118.P11265505150639835551

`eq[1, A280695(A280695(n+1))]+1`
-/

namespace A050118.P11265505150639835551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280695 (A280695 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050118.P11265505150639835551

/-! ## A050118.P10889073831308287308

`record[A280694(n+1)*A280694(A280695(n+1))]`
-/

namespace A050118.P10889073831308287308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280694 (n + 1) * A280694 (A280695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050118.P10889073831308287308

/-! ## A050118.P7611095881580519220

`∑[A050119(A061395(A034953(n+1)))]`
-/

namespace A050118.P7611095881580519220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050119 (A061395 (A034953 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050118.P7611095881580519220

/-!
# A050119: a(n)=b(n)-b(n-1), where b=A050118 (ordered products of Lucas numbers).

The programs for A050119, there is no canonical definition to state claims against.
-/

/-! ## A050119.P14440618296123046398

`Δ[A050118(n+1)]`
-/

namespace A050119.P14440618296123046398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050119.P14440618296123046398

/-! ## A050119.P6741546102514870539

`A050118(n+2)-A050118(n+1)`
-/

namespace A050119.P6741546102514870539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050118 (n + 2) - A050118 (n + 1)

end

end A050119.P6741546102514870539

/-! ## A050119.P339971570505447769

`Δ[record[A050118(A290076(n))]]`
-/

namespace A050119.P339971570505447769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050118 (A290076 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050119.P339971570505447769

/-! ## A050119.P16756417695490721016

`Δ[record[A050118(A126759(n))]]`
-/

namespace A050119.P16756417695490721016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050118 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050119.P16756417695490721016

/-!
# A050120: Numbers of the form Fibonacci(i)*Lucas(j), 0 <= i < j.

The programs for A050120, there is no canonical definition to state claims against.
-/

/-! ## A050120.P14104968380722448335

`∑[A050121(n+2)]-A050121(n+2)`
-/

namespace A050120.P14104968380722448335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050121 (n + 2)

end

end A050120.P14104968380722448335

/-! ## A050120.P16651315301677290144

`A049862(n+1)+2*A005206(A049862(n+1))`
-/

namespace A050120.P16651315301677290144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1) + 2 * A005206 (A049862 (n + 1)).toNat

end

end A050120.P16651315301677290144

/-! ## A050120.P14429884158145099409

`lt[A005582(A117385(n+1)), A117385(2*(n+1))²]`
-/

namespace A050120.P14429884158145099409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (A117385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117385 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050120.P14429884158145099409

/-! ## A050120.P3502191238942096377

`eq[A029362(n), A306734(n)]`
-/

namespace A050120.P3502191238942096377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050120.P3502191238942096377

/-! ## A050120.P16608289324414274533

`lt[A030707(A073252(n)+n), 2]`
-/

namespace A050120.P16608289324414274533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A073252 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050120.P16608289324414274533

/-!
# A050121: a(n)=b(n)-b(n-1), where b=A050120 (ordered products of Fibonacci and Lucas numbers).

The programs for A050121, there is no canonical definition to state claims against.
-/

/-! ## A050121.P250732884718970368

`Δ[A050120(n+1)]`
-/

namespace A050121.P250732884718970368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050121.P250732884718970368

/-! ## A050121.P3758766870201204974

`Δ[record[A050120(A331745(n))]]`
-/

namespace A050121.P3758766870201204974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050120 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050121.P3758766870201204974

/-! ## A050121.P11328142821848426533

`Δ[record[A050120(A344180(n))]]`
-/

namespace A050121.P11328142821848426533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050120 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050121.P11328142821848426533

/-! ## A050121.P926926484733490383

`A050120(n+2)-A050120(n+1)`
-/

namespace A050121.P926926484733490383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050120 (n + 2) - A050120 (n + 1)

end

end A050121.P926926484733490383

/-! ## A050121.P17130596609099614676

`Δ[record[A050120(A246694(n))]]`
-/

namespace A050121.P17130596609099614676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050120 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050121.P17130596609099614676

/-! ## A050121.P10097938294526752750

`Δ[record[A050120(A263111(n))]]`
-/

namespace A050121.P10097938294526752750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050120 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050121.P10097938294526752750

/-!
# A050122: Numbers of the form Fibonacci(i)*Lucas(j), i <= j.

The programs for A050122, there is no canonical definition to state claims against.
-/

/-! ## A050122.P16702758748297317384

`round((3-ϕ)*A049862(n+1))`
-/

namespace A050122.P16702758748297317384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 - Real.goldenRatio) * (A049862 (n + 1) : ℝ))

end

end A050122.P16702758748297317384

/-! ## A050122.P6812273619151704367

`A050123(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A050122.P6812273619151704367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A050123 (n + 1) + a (n - 1)

end

end A050122.P6812273619151704367

/-! ## A050122.P4827910515793853520

`∑[A050123(A028310(n)+1)]-1`
-/

namespace A050122.P4827910515793853520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050123 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A050122.P4827910515793853520

/-! ## A050122.P4481536359202937702

`∑[A050123(n+2)]-A050123(n+2)`
-/

namespace A050122.P4481536359202937702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050123 (n + 2)

end

end A050122.P4481536359202937702

/-! ## A050122.P13771178615667140088

`∪[A050120(n+1), ∑[A050123(n+2)]]`
-/

namespace A050122.P13771178615667140088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050120 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050123 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050122.P13771178615667140088

/-!
# A050123: a(n) = b(n)-b(n-1), where b=A050122 (ordered products of Fibonacci and Lucas numbers).

The programs for A050123, there is no canonical definition to state claims against.
-/

/-! ## A050123.P5216198617396553185

`Δ[A050122(n+1)]`
-/

namespace A050123.P5216198617396553185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050123.P5216198617396553185

/-! ## A050123.P14816026885333225636

`Δ[record[A050122(A331745(n))]]`
-/

namespace A050123.P14816026885333225636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050122 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050123.P14816026885333225636

/-! ## A050123.P9918305269183399048

`A050122(n+2)-A050122(n+1)`
-/

namespace A050123.P9918305269183399048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050122 (n + 2) - A050122 (n + 1)

end

end A050123.P9918305269183399048

/-! ## A050123.P4166114510384410301

`abs(Δ[A050122(A008611(3*n))])`
-/

namespace A050123.P4166114510384410301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050122 (A008611 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A050123.P4166114510384410301

/-! ## A050123.P11983055518761468513

`Δ[record[A050122(A263111(n))]]`
-/

namespace A050123.P11983055518761468513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050122 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050123.P11983055518761468513

/-!
# A050124: a(1)=1; for n > 1, a(n) = floor(a(n-1)/5) if this is not among 0,a(1),...,a(n-1); otherwise a(n) = 2*a(n-1).

The programs for A050124, there is no canonical definition to state claims against.
-/

/-! ## A050124.P2845235315793014546

`A101943(n)%A135938(A024796(n+1))`
-/

namespace A050124.P2845235315793014546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101943 n) (A135938 (A024796 (n + 1)).toNat)

end

end A050124.P2845235315793014546

/-! ## A050124.P16885297705241980871

`A101943(A055648(n))`
-/

namespace A050124.P16885297705241980871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101943 (A055648 n).toNat

end

end A050124.P16885297705241980871

/-! ## A050124.P13201812120259879341

`A072088(A101943(n))`
-/

namespace A050124.P13201812120259879341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A101943 n).toNat

end

end A050124.P13201812120259879341

/-! ## A050124.P2589176227770292905

`A101943(A004863(n+1))`
-/

namespace A050124.P2589176227770292905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101943 (A004863 (n + 1)).toNat

end

end A050124.P2589176227770292905

/-! ## A050124.P171642505262945408

`A101943(A004874(n+1))`
-/

namespace A050124.P171642505262945408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101943 (A004874 (n + 1)).toNat

end

end A050124.P171642505262945408

/-!
# A050126: Numbers k such that A050124(k) < A050124(k+1).

The programs for A050126, there is no canonical definition to state claims against.
-/

/-! ## A050126.P4853962041693690461

`eq[char[A050127(n+1)], A000007(n)]`
-/

namespace A050126.P4853962041693690461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050126.P4853962041693690461

/-! ## A050126.P8649160860707029297

`eq[char[A050127(n+1)], A000038(n)]`
-/

namespace A050126.P8649160860707029297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050126.P8649160860707029297

/-! ## A050126.P10697346826407571987

`eq[char[A050127(n+1)], A020761(n)]`
-/

namespace A050126.P10697346826407571987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050126.P10697346826407571987

/-! ## A050126.P2994519120060509850

`eq[char[A050127(n+1)], A036987(2*n)]`
-/

namespace A050126.P2994519120060509850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050126.P2994519120060509850

/-! ## A050126.P6965148245258237113

`lt[A050124(A028310(n)), A050124(n+1)]`
-/

namespace A050126.P6965148245258237113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050124 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050126.P6965148245258237113

/-! ## A050126.P13368218329951254759

`eq[char[A050127(n+1)], A088917(n²)]`
-/

namespace A050126.P13368218329951254759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050127 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050126.P13368218329951254759

/-!
# A050127: Numbers k such that A050124(k) > A050124(k+1).

The programs for A050127, there is no canonical definition to state claims against.
-/

/-! ## A050127.P14958890235880400627

`lt[n*char[A050126(n+1)], n]`
-/

namespace A050127.P14958890235880400627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050127.P14958890235880400627

/-! ## A050127.P14104656853675973218

`eq[char[A050126(n+1)], A000007(n)]`
-/

namespace A050127.P14104656853675973218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050127.P14104656853675973218

/-! ## A050127.P4566019824762143372

`eq[char[A050126(n+1)], A000038(n)]`
-/

namespace A050127.P4566019824762143372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050127.P4566019824762143372

/-! ## A050127.P15417597558290963619

`eq[char[A050126(n+1)], A020761(n)]`
-/

namespace A050127.P15417597558290963619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050127.P15417597558290963619

/-! ## A050127.P16632351591361274408

`eq[char[A050126(n+1)], A130706(n)]`
-/

namespace A050127.P16632351591361274408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050127.P16632351591361274408

/-! ## A050127.P12179865565403648382

`lt[char[A050126(n+1)], A057427(n)]`
-/

namespace A050127.P12179865565403648382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050127.P12179865565403648382

/-! ## A050127.P2437039053846355859

`lt[A050124(n+1), A050124(A028310(n))]`
-/

namespace A050127.P2437039053846355859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050124 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050127.P2437039053846355859

/-!
# A050130: a(n)=least k satisfying a(k)=2*k in A050128.

The programs for A050130, there is no canonical definition to state claims against.
-/

/-! ## A050130.P9170661219900947106

`A050131(n+1)+1`
-/

namespace A050130.P9170661219900947106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050131 (n + 1) + 1

end

end A050130.P9170661219900947106

/-! ## A050130.P5493579605637374221

`A020725(A050131(n+1))`
-/

namespace A050130.P5493579605637374221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A050131 (n + 1)).toNat

end

end A050130.P5493579605637374221

/-! ## A050130.P2933404142198218016

`record[A050128(n+2)/2]`
-/

namespace A050130.P2933404142198218016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050128 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050130.P2933404142198218016

/-! ## A050130.P1734000254299220741

`lt[n+1, A050128(n+1)]+1`
-/

namespace A050130.P1734000254299220741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050130.P1734000254299220741

/-! ## A050130.P11084027108534080678

`eq[A050128(n+1), A163300(n+1)]+1`
-/

namespace A050130.P11084027108534080678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050130.P11084027108534080678

/-! ## A050130.P15493032832036948665

`eq[A050128(n+1), A051755(n+2)]+1`
-/

namespace A050130.P15493032832036948665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050130.P15493032832036948665

/-! ## A050130.P7284226570951664282

`record[A026741(A050128(2*(n+1)))]`
-/

namespace A050130.P7284226570951664282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A050128 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050130.P7284226570951664282

/-! ## A050130.P8132902082130408947

`A001281(record[A050128(n+2)])`
-/

namespace A050130.P8132902082130408947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P8132902082130408947

/-! ## A050130.P2940929833381659062

`A004525(record[A050128(n+2)])`
-/

namespace A050130.P2940929833381659062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P2940929833381659062

/-! ## A050130.P10315800982777195346

`A004526(record[A050128(n+2)])`
-/

namespace A050130.P10315800982777195346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P10315800982777195346

/-! ## A050130.P10097692733641465100

`A025480(record[A050128(n+2)])`
-/

namespace A050130.P10097692733641465100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P10097692733641465100

/-! ## A050130.P5511586514026991146

`A026741(record[A050128(n+2)])`
-/

namespace A050130.P5511586514026991146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P5511586514026991146

/-! ## A050130.P1739820466437584916

`A029578(record[A050128(n+2)])`
-/

namespace A050130.P1739820466437584916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P1739820466437584916

/-! ## A050130.P1969485205544320125

`A050129(record[A050128(n+2)])`
-/

namespace A050130.P1969485205544320125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P1969485205544320125

/-! ## A050130.P10513424392766135776

`eq[n, A050129(A004275(n+1))]`
-/

namespace A050130.P10513424392766135776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050130.P10513424392766135776

/-! ## A050130.P9851752180745165510

`A003602(record[A050128(n+2)-1])`
-/

namespace A050130.P9851752180745165510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050130.P9851752180745165510

/-! ## A050130.P2169655807144260786

`A050129(lt[A050129(n+1), n]+1)`
-/

namespace A050130.P2169655807144260786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050130.P2169655807144260786

/-! ## A050130.P9669627858192806407

`eq[n, A050129(A000007(n)+2*n)]`
-/

namespace A050130.P9669627858192806407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (A000007 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050130.P9669627858192806407

/-!
# A050131: Numbers k such that A050128(k) < A050128(k+1).

The programs for A050131, there is no canonical definition to state claims against.
-/

/-! ## A050131.P10212712256836191018

`A050130(n+1)-1`
-/

namespace A050131.P10212712256836191018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050130 (n + 1) - 1

end

end A050131.P10212712256836191018

/-! ## A050131.P6245529416814893534

`lt[n+1, A050128(n+1)]`
-/

namespace A050131.P6245529416814893534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050131.P6245529416814893534

/-! ## A050131.P9533109207611054930

`record[A050128(n+2)-(n+3)]`
-/

namespace A050131.P9533109207611054930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050131.P9533109207611054930

/-! ## A050131.P12994302088818407556

`A023443(A050130(n+1))`
-/

namespace A050131.P12994302088818407556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050130 (n + 1)).toNat

end

end A050131.P12994302088818407556

/-! ## A050131.P7784115157010782104

`eq[A050128(n+1), A163300(n+1)]`
-/

namespace A050131.P7784115157010782104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050131.P7784115157010782104

/-! ## A050131.P9322269368839532469

`eq[A050128(n+1), A051755(n+2)]`
-/

namespace A050131.P9322269368839532469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050131.P9322269368839532469

/-! ## A050131.P16202091975916509199

`A004525(record[A050128(n+2)-2])`
-/

namespace A050131.P16202091975916509199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050131.P16202091975916509199

/-! ## A050131.P17459866800550677290

`A025480(record[A050128(n+2)-2])`
-/

namespace A050131.P17459866800550677290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050131.P17459866800550677290

/-! ## A050131.P643702866672970855

`A026741(record[A050128(n+2)-2])`
-/

namespace A050131.P643702866672970855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050131.P643702866672970855

/-! ## A050131.P17106691887543077155

`A029578(record[A050128(n+2)-2])`
-/

namespace A050131.P17106691887543077155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050131.P17106691887543077155

/-! ## A050131.P524915058702978582

`eq[n+1, A050129(2*(n+1))]`
-/

namespace A050131.P524915058702978582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050131.P524915058702978582

/-! ## A050131.P5640296583585473908

`A046667(2*A050130(n+1))`
-/

namespace A050131.P5640296583585473908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A050130 (n + 1)).toNat

end

end A050131.P5640296583585473908

/-! ## A050131.P7836737346584308181

`A001281(record[A050128(n+2)])-1`
-/

namespace A050131.P7836737346584308181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A050131.P7836737346584308181

/-! ## A050131.P4254418528288187349

`A004526(record[A050128(n+2)-1])`
-/

namespace A050131.P4254418528288187349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050131.P4254418528288187349

/-! ## A050131.P10376584759676011500

`A050129(record[A050128(n+2)])-1`
-/

namespace A050131.P10376584759676011500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A050131.P10376584759676011500

/-! ## A050131.P1577172825189334957

`lt[A050129(2*(n+1))+1, A050115(n+2)]`
-/

namespace A050131.P1577172825189334957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050115 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050131.P1577172825189334957

/-! ## A050131.P9519837623184887511

`lt[A050129(2*(n+1))², A106402(2*(n+1))]`
-/

namespace A050131.P9519837623184887511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050129 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106402 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050131.P9519837623184887511

/-! ## A050131.P2340776752415537

`eq[A050139(2*(n+1)), A050139(A050128(n+1))]`
-/

namespace A050131.P2340776752415537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050139 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050139 (A050128 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050131.P2340776752415537

/-!
# A050134: a(n)=least k satisfying a(k)=3*k in A050132.

The programs for A050134, there is no canonical definition to state claims against.
-/

/-! ## A050134.P4050451712447050039

`record[A050132(n+2)/3]`
-/

namespace A050134.P4050451712447050039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050132 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050134.P4050451712447050039

/-! ## A050134.P2586061173646415604

`A002264(record[A050132(n+2)])`
-/

namespace A050134.P2586061173646415604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050134.P2586061173646415604

/-! ## A050134.P218270217915339898

`A050133(record[A050132(n+2)])`
-/

namespace A050134.P218270217915339898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050133 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050134.P218270217915339898

/-! ## A050134.P9535247910206511555

`A260316(record[A050132(n+2)])`
-/

namespace A050134.P9535247910206511555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050134.P9535247910206511555

/-! ## A050134.P13687219359969299042

`eq[A008585(n), A050132(A233583(n+1))]`
-/

namespace A050134.P13687219359969299042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050132 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050134.P13687219359969299042

/-!
# A050140: a(n) = 2*floor(n*phi)-n, where phi = (1+sqrt(5))/2.

The programs for A050140, the canonical program `A050140.P7228585505398229594` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050140 has offset 1).

The definition of A050140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050140.P4596801945106642125

`∑[3^Δ[floor(n/ϕ)]]`
-/

namespace A050140.P4596801945106642125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050140.P4596801945106642125

namespace A050140

/-- `∑[3^Δ[floor(n/ϕ)]]` -/
def P4596801945106642125.Spec : Prop :=
  ∀ n, P4596801945106642125.a n = (A050140 (n + 1) : ℚ)

end A050140

/-! ## A050140.P2137675730360193655

`floor(ϕ*(n+1))+floor(ϕ*(n+1))%(n+1)`
-/

namespace A050140.P2137675730360193655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ (n + 1 : ℤ)

end

end A050140.P2137675730360193655

namespace A050140

/-- `floor(ϕ*(n+1))+floor(ϕ*(n+1))%(n+1)` -/
def P2137675730360193655.Spec : Prop :=
  ∀ n, P2137675730360193655.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P12368518784177371160

`2*floor(ϕ*(n+1))+n-record[(n+1)/2^val(n+1, 2)]`
-/

namespace A050140.P12368518784177371160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050140.P12368518784177371160

namespace A050140

/-- `2*floor(ϕ*(n+1))+n-record[(n+1)/2^val(n+1, 2)]` -/
def P12368518784177371160.Spec : Prop :=
  ∀ n, P12368518784177371160.a n = (A050140 (n + 1) : ℚ)

end A050140

/-! ## A050140.P12718678477590893121

`A284625(n+1)-2`
-/

namespace A050140.P12718678477590893121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (n + 1) - 2

end

end A050140.P12718678477590893121

namespace A050140

/-- `A284625(n+1)-2` -/
def P12718678477590893121.Spec : Prop :=
  ∀ n, P12718678477590893121.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P12026079014464451794

`A075317(n+1)-n`
-/

namespace A050140.P12026079014464451794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) - (n : ℤ)

end

end A050140.P12026079014464451794

namespace A050140

/-- `A075317(n+1)-n` -/
def P12026079014464451794.Spec : Prop :=
  ∀ n, P12026079014464451794.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P5062391697818486191

`A283233(n+1)-(n+1)`
-/

namespace A050140.P5062391697818486191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) - (n + 1 : ℤ)

end

end A050140.P5062391697818486191

namespace A050140

/-- `A283233(n+1)-(n+1)` -/
def P5062391697818486191.Spec : Prop :=
  ∀ n, P5062391697818486191.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P7228585505398229594

`2*A005206(n)+n+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050140

/-- `2*A005206(n)+n+1` -/
def P7228585505398229594.Spec : Prop :=
  ∀ n, P7228585505398229594.a n = A050140 (n + 1)

theorem P7228585505398229594.correct : P7228585505398229594.Spec := by
  intro n
  simp only [A050140, Nat.add_sub_cancel]

end A050140

/-! ## A050140.P16500643079290521141

`A371388(n+1)/(n+1)`
-/

namespace A050140.P16500643079290521141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371388 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A050140.P16500643079290521141

namespace A050140

/-- `A371388(n+1)/(n+1)` -/
def P16500643079290521141.Spec : Prop :=
  ∀ n, P16500643079290521141.a n = (A050140 (n + 1) : ℚ)

end A050140

/-! ## A050140.P13502227010909493888

`A134859(n+1)-2*n`
-/

namespace A050140.P13502227010909493888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1) - (2 * n : ℤ)

end

end A050140.P13502227010909493888

namespace A050140

/-- `A134859(n+1)-2*n` -/
def P13502227010909493888.Spec : Prop :=
  ∀ n, P13502227010909493888.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P17178015550041961531

`A050141(n)+a(n-1)` with `a(0)=1`
-/

namespace A050140.P17178015550041961531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050141 n + a (n - 1)

end

end A050140.P17178015550041961531

namespace A050140

/-- `A050141(n)+a(n-1)` -/
def P17178015550041961531.Spec : Prop :=
  ∀ n, P17178015550041961531.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P12192631733829748877

`A035336(n+1)-Δ[n²]`
-/

namespace A050140.P12192631733829748877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A050140.P12192631733829748877

namespace A050140

/-- `A035336(n+1)-Δ[n²]` -/
def P12192631733829748877.Spec : Prop :=
  ∀ n, P12192631733829748877.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P10823493544078422070

`2*A060143(n+1)+n+1`
-/

namespace A050140.P10823493544078422070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060143 (n + 1) + (n + 1 : ℤ)

end

end A050140.P10823493544078422070

namespace A050140

/-- `2*A060143(n+1)+n+1` -/
def P10823493544078422070.Spec : Prop :=
  ∀ n, P10823493544078422070.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P6426081468396021684

`A339765(n+1)+2*(n+1)`
-/

namespace A050140.P6426081468396021684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339765 (n + 1) + (2 * (n + 1) : ℤ)

end

end A050140.P6426081468396021684

namespace A050140

/-- `A339765(n+1)+2*(n+1)` -/
def P6426081468396021684.Spec : Prop :=
  ∀ n, P6426081468396021684.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P8258391082315560687

`2*A000201(n+1)-(n+1)`
-/

namespace A050140.P8258391082315560687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000201 (n + 1) - (n + 1 : ℤ)

end

end A050140.P8258391082315560687

namespace A050140

/-- `2*A000201(n+1)-(n+1)` -/
def P8258391082315560687.Spec : Prop :=
  ∀ n, P8258391082315560687.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P160678897010291927

`A003623(n+1)-2*(n+1)`
-/

namespace A050140.P160678897010291927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - (2 * (n + 1) : ℤ)

end

end A050140.P160678897010291927

namespace A050140

/-- `A003623(n+1)-2*(n+1)` -/
def P160678897010291927.Spec : Prop :=
  ∀ n, P160678897010291927.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P14658170523313229947

`2*A066096(n+1)-(n+1)`
-/

namespace A050140.P14658170523313229947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066096 (n + 1) - (n + 1 : ℤ)

end

end A050140.P14658170523313229947

namespace A050140

/-- `2*A066096(n+1)-(n+1)` -/
def P14658170523313229947.Spec : Prop :=
  ∀ n, P14658170523313229947.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P367917980461724770

`A283234(n+1)-3*(n+1)`
-/

namespace A050140.P367917980461724770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (n + 1) - (3 * (n + 1) : ℤ)

end

end A050140.P367917980461724770

namespace A050140

/-- `A283234(n+1)-3*(n+1)` -/
def P367917980461724770.Spec : Prop :=
  ∀ n, P367917980461724770.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P3497620566978886323

`A019446(n+1)+floor(ϕ*(n+1))-1`
-/

namespace A050140.P3497620566978886323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) + (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)

end

end A050140.P3497620566978886323

namespace A050140

/-- `A019446(n+1)+floor(ϕ*(n+1))-1` -/
def P3497620566978886323.Spec : Prop :=
  ∀ n, P3497620566978886323.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P2324451454439079128

`A284624(ceil((n+1)/ϕ))-Δ[ceil(n/ϕ)]`
-/

namespace A050140.P2324451454439079128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 ⌈(n + 1 : ℝ) / Real.goldenRatio⌉.toNat - (f1 (n + 1) - f1 n)

end

end A050140.P2324451454439079128

namespace A050140

/-- `A284624(ceil((n+1)/ϕ))-Δ[ceil(n/ϕ)]` -/
def P2324451454439079128.Spec : Prop :=
  ∀ n, P2324451454439079128.a n = A050140 (n + 1)

end A050140

/-! ## A050140.P4698706789586114113

`A005408(A005206(n))+n`
-/

namespace A050140.P4698706789586114113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005206 n).toNat + (n : ℤ)

end

end A050140.P4698706789586114113

namespace A050140

/-- `A005408(A005206(n))+n` -/
def P4698706789586114113.Spec : Prop :=
  ∀ n, P4698706789586114113.a n = A050140 (n + 1)

end A050140

/-!
# A050141: a(n) = 2*floor((n+1)*phi) - 2*floor(n*phi) - 1 where phi = (1 + sqrt(5))/2 is the golden ratio.

The programs for A050141, the canonical program `A050141.P47162817265067321` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050141 has offset 1).

The definition of A050141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050141.P5633752752508891435

`3^Δ[floor((n+1)/ϕ)]`
-/

namespace A050141.P5633752752508891435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A050141.P5633752752508891435

namespace A050141

/-- `3^Δ[floor((n+1)/ϕ)]` -/
def P5633752752508891435.Spec : Prop :=
  ∀ n, P5633752752508891435.a n = (A050141 (n + 1) : ℚ)

end A050141

/-! ## A050141.P12636463156147256718

`or(1, Δ[floor(ϕ*(n+1))])`
-/

namespace A050141.P12636463156147256718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A050141.P12636463156147256718

namespace A050141

/-- `or(1, Δ[floor(ϕ*(n+1))])` -/
def P12636463156147256718.Spec : Prop :=
  ∀ n, P12636463156147256718.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P13647050068836035688

`∑{d}[Δ[floor(ϕ*(n+1))], #]`
-/

namespace A050141.P13647050068836035688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A050141.P13647050068836035688

namespace A050141

/-- `∑{d}[Δ[floor(ϕ*(n+1))], #]` -/
def P13647050068836035688.Spec : Prop :=
  ∀ n, (P13647050068836035688.a n : ℤ) = A050141 (n + 1)

end A050141

/-! ## A050141.P16985927290061946280

`C(Δ[floor((n+1)*ϕ²)], 2)`
-/

namespace A050141.P16985927290061946280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A050141.P16985927290061946280

namespace A050141

/-- `C(Δ[floor((n+1)*ϕ²)], 2)` -/
def P16985927290061946280.Spec : Prop :=
  ∀ n, (P16985927290061946280.a n : ℤ) = A050141 (n + 1)

end A050141

/-! ## A050141.P16931992627626395381

`lcm(2, Δ[floor((n+1)/ϕ)])+1`
-/

namespace A050141.P16931992627626395381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n) + 1

end

end A050141.P16931992627626395381

namespace A050141

/-- `lcm(2, Δ[floor((n+1)/ϕ)])+1` -/
def P16931992627626395381.Spec : Prop :=
  ∀ n, (P16931992627626395381.a n : ℤ) = A050141 (n + 1)

end A050141

/-! ## A050141.P9898237648901968800

`and(2, Δ[floor(ϕ*(n+1))])+1`
-/

namespace A050141.P9898237648901968800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (f1 (n + 1) - f1 n) + 1

end

end A050141.P9898237648901968800

namespace A050141

/-- `and(2, Δ[floor(ϕ*(n+1))])+1` -/
def P9898237648901968800.Spec : Prop :=
  ∀ n, P9898237648901968800.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P6123973873428523891

`gcd(3, A060140(n))`
-/

namespace A050141.P6123973873428523891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A060140 n)

end

end A050141.P6123973873428523891

namespace A050141

/-- `gcd(3, A060140(n))` -/
def P6123973873428523891.Spec : Prop :=
  ∀ n, (P6123973873428523891.a n : ℤ) = A050141 (n + 1)

end A050141

/-! ## A050141.P11847160508755188703

`A194584(n+1)-2`
-/

namespace A050141.P11847160508755188703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194584 (n + 1) - 2

end

end A050141.P11847160508755188703

namespace A050141

/-- `A194584(n+1)-2` -/
def P11847160508755188703.Spec : Prop :=
  ∀ n, P11847160508755188703.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P47162817265067321

`2*A005614(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050141

/-- `2*A005614(n)+1` -/
def P47162817265067321.Spec : Prop :=
  ∀ n, P47162817265067321.a n = A050141 (n + 1)

theorem P47162817265067321.correct : P47162817265067321.Spec := by
  intro n
  simp only [A050141, Nat.add_sub_cancel]

end A050141

/-! ## A050141.P9069456442121075483

`2*A014675(n)-1`
-/

namespace A050141.P9069456442121075483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014675 n - 1

end

end A050141.P9069456442121075483

namespace A050141

/-- `2*A014675(n)-1` -/
def P9069456442121075483.Spec : Prop :=
  ∀ n, P9069456442121075483.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P8873420555377719214

`3-2*A003849(n)`
-/

namespace A050141.P8873420555377719214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A003849 n

end

end A050141.P8873420555377719214

namespace A050141

/-- `3-2*A003849(n)` -/
def P8873420555377719214.Spec : Prop :=
  ∀ n, P8873420555377719214.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P4017007784805899387

`4/A003842(n)-1`
-/

namespace A050141.P4017007784805899387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A003842 n : ℚ) - 1

end

end A050141.P4017007784805899387

namespace A050141

/-- `4/A003842(n)-1` -/
def P4017007784805899387.Spec : Prop :=
  ∀ n, P4017007784805899387.a n = (A050141 (n + 1) : ℚ)

end A050141

/-! ## A050141.P8160534924700701034

`A247648(n+2)%4`
-/

namespace A050141.P8160534924700701034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247648 (n + 2)) 4

end

end A050141.P8160534924700701034

namespace A050141

/-- `A247648(n+2)%4` -/
def P8160534924700701034.Spec : Prop :=
  ∀ n, P8160534924700701034.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P14543571542730585027

`Δ[A134859(n+1)]-2`
-/

namespace A050141.P14543571542730585027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A050141.P14543571542730585027

namespace A050141

/-- `Δ[A134859(n+1)]-2` -/
def P14543571542730585027.Spec : Prop :=
  ∀ n, P14543571542730585027.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P9523882617327237510

`A176040(A035614(n))`
-/

namespace A050141.P9523882617327237510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A035614 n).toNat

end

end A050141.P9523882617327237510

namespace A050141

/-- `A176040(A035614(n))` -/
def P9523882617327237510.Spec : Prop :=
  ∀ n, P9523882617327237510.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P8697524747242674239

`A176040(A072661(n))`
-/

namespace A050141.P8697524747242674239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A072661 n).toNat

end

end A050141.P8697524747242674239

namespace A050141

/-- `A176040(A072661(n))` -/
def P8697524747242674239.Spec : Prop :=
  ∀ n, P8697524747242674239.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P17292340724967825651

`A176040(A104324(n))`
-/

namespace A050141.P17292340724967825651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A104324 n).toNat

end

end A050141.P17292340724967825651

namespace A050141

/-- `A176040(A104324(n))` -/
def P17292340724967825651.Spec : Prop :=
  ∀ n, P17292340724967825651.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P3732861197194177047

`A122553(A239002(n))`
-/

namespace A050141.P3732861197194177047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A239002 n).toNat

end

end A050141.P3732861197194177047

namespace A050141

/-- `A122553(A239002(n))` -/
def P3732861197194177047.Spec : Prop :=
  ∀ n, P3732861197194177047.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P15676275094710285022

`A176040(A356749(n))`
-/

namespace A050141.P15676275094710285022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A356749 n).toNat

end

end A050141.P15676275094710285022

namespace A050141

/-- `A176040(A356749(n))` -/
def P15676275094710285022.Spec : Prop :=
  ∀ n, P15676275094710285022.a n = A050141 (n + 1)

end A050141

/-! ## A050141.P3359462774445798011

`A010684(A035612(n+1))`
-/

namespace A050141.P3359462774445798011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A035612 (n + 1)).toNat

end

end A050141.P3359462774445798011

namespace A050141

/-- `A010684(A035612(n+1))` -/
def P3359462774445798011.Spec : Prop :=
  ∀ n, P3359462774445798011.a n = A050141 (n + 1)

end A050141

/-!
# A050143: A(n,k) = Sum_{h=0..n-1, m=0..k} A(h,m) for n >= 1 and k >= 1, with A(n,0) = 1 for n >= 0 and A(0,k) = 0 for k >= 1; square array A, read by descending antidiagonals.

The programs for A050143, there is no canonical definition to state claims against.
-/

/-! ## A050143.P7480138305938465458

`A055807(A061579(n))`
-/

namespace A050143.P7480138305938465458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A061579 n).toNat

end

end A050143.P7480138305938465458

/-! ## A050143.P18106616664037760174

`A055807(A114327(n)+n)`
-/

namespace A050143.P18106616664037760174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A114327 n + (n : ℤ)).toNat

end

end A050143.P18106616664037760174

/-! ## A050143.P1302599873355108344

`A055807(∑[A198954(n)-1])`
-/

namespace A050143.P1302599873355108344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050143.P1302599873355108344

/-! ## A050143.P9229058820011622042

`A055807(A038722(n+1)-1)`
-/

namespace A050143.P9229058820011622042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A038722 (n + 1) - 1).toNat

end

end A050143.P9229058820011622042

/-! ## A050143.P18037164645424423259

`A055807((n²+n)%A014132(n+1))`
-/

namespace A050143.P18037164645424423259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (Int.tmod (n ^ 2 + n : ℤ) (A014132 (n + 1))).toNat

end

end A050143.P18037164645424423259

/-! ## A050143.P8400399945552751543

`A055807(A067998(A003057(n+2))-n)`
-/

namespace A050143.P8400399945552751543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A067998 (A003057 (n + 2)).toNat - (n : ℤ)).toNat

end

end A050143.P8400399945552751543

/-! ## A050143.P5367573158474600487

`A055807(A038722(n+2))`
-/

namespace A050143.P5367573158474600487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A038722 (n + 2)).toNat

end

end A050143.P5367573158474600487

/-! ## A050143.P5651033029474206976

`A055807(∑[A245552(2*n+1)-1])`
-/

namespace A050143.P5651033029474206976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050143.P5651033029474206976

/-!
# A050146: a(n) = T(n,n), array T as in A050143.

The programs for A050146, the canonical program `A050146.P3244852620839180404` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050146 has offset 0).

The definition of A050146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050146.P17268162776700280811

`abs(round(sqrt(n²+1))*A086456(n))`
-/

namespace A050146.P17268162776700280811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A086456 n|

end

end A050146.P17268162776700280811

namespace A050146

/-- `abs(round(sqrt(n²+1))*A086456(n))` -/
def P17268162776700280811.Spec : Prop :=
  ∀ n, P17268162776700280811.a n = A050146 n

end A050146

/-! ## A050146.P2340547004962135808

`A110110(comp[2*(n+1)]+floor(acot(n))-1)`
-/

namespace A050146.P2340547004962135808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A050146.P2340547004962135808

namespace A050146

/-- `A110110(comp[2*(n+1)]+floor(acot(n))-1)` -/
def P2340547004962135808.Spec : Prop :=
  ∀ n, P2340547004962135808.a n = A050146 n

end A050146

/-! ## A050146.P3244852620839180404

`A028310(n)*A155069(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A050146

/-- `A028310(n)*A155069(n)` -/
def P3244852620839180404.Spec : Prop :=
  ∀ n, P3244852620839180404.a n = A050146 n

theorem P3244852620839180404.correct : P3244852620839180404.Spec := by
  intro n
  simp only [A050146]

end A050146

/-! ## A050146.P8783337527799562253

`A103137(n)*A274922(n)`
-/

namespace A050146.P8783337527799562253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 n * A274922 n

end

end A050146.P8783337527799562253

namespace A050146

/-- `A103137(n)*A274922(n)` -/
def P8783337527799562253.Spec : Prop :=
  ∀ n, P8783337527799562253.a n = A050146 n

end A050146

/-! ## A050146.P15443743025481081415

`A110110(log2(A011782(n)²))`
-/

namespace A050146.P15443743025481081415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n ^ 2 : ℝ))).toNat

end

end A050146.P15443743025481081415

namespace A050146

/-- `A110110(log2(A011782(n)²))` -/
def P15443743025481081415.Spec : Prop :=
  ∀ n, P15443743025481081415.a n = A050146 n

end A050146

/-! ## A050146.P8595128469732542299

`A110110(2*log2(A011782(n)))`
-/

namespace A050146.P8595128469732542299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A011782 n : ℝ))).toNat

end

end A050146.P8595128469732542299

namespace A050146

/-- `A110110(2*log2(A011782(n)))` -/
def P8595128469732542299.Spec : Prop :=
  ∀ n, P8595128469732542299.a n = A050146 n

end A050146

/-! ## A050146.P14131437369918145534

`sqrt(A253909(n))*A155069(n)`
-/

namespace A050146.P14131437369918145534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253909 n : ℝ) * (A155069 n : ℝ)

end

end A050146.P14131437369918145534

namespace A050146

/-- `sqrt(A253909(n))*A155069(n)` -/
def P14131437369918145534.Spec : Prop :=
  ∀ n, P14131437369918145534.a n = (A050146 n : ℝ)

end A050146

/-! ## A050146.P10595747930525390897

`A134478(∑[n])*A155069(n)`
-/

namespace A050146.P10595747930525390897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∑ j ∈ Finset.range (n + 1), f1 j) * A155069 n

end

end A050146.P10595747930525390897

namespace A050146

/-- `A134478(∑[n])*A155069(n)` -/
def P10595747930525390897.Spec : Prop :=
  ∀ n, P10595747930525390897.a n = A050146 n

end A050146

/-! ## A050146.P15950227386093711585

`A110110(2*(A004273(n)-n))`
-/

namespace A050146.P15950227386093711585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * (A004273 n - (n : ℤ))).toNat

end

end A050146.P15950227386093711585

namespace A050146

/-- `A110110(2*(A004273(n)-n))` -/
def P15950227386093711585.Spec : Prop :=
  ∀ n, P15950227386093711585.a n = A050146 n

end A050146

/-! ## A050146.P286553583246725936

`A065033(2*n)*A155069(n)`
-/

namespace A050146.P286553583246725936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A155069 n

end

end A050146.P286553583246725936

namespace A050146

/-- `A065033(2*n)*A155069(n)` -/
def P286553583246725936.Spec : Prop :=
  ∀ n, P286553583246725936.a n = A050146 n

end A050146

/-! ## A050146.P10689197484751165026

`A123108(2*n)*A155069(n)`
-/

namespace A050146.P10689197484751165026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A155069 n

end

end A050146.P10689197484751165026

namespace A050146

/-- `A123108(2*n)*A155069(n)` -/
def P10689197484751165026.Spec : Prop :=
  ∀ n, P10689197484751165026.a n = A050146 n

end A050146

/-! ## A050146.P5054434688827077476

`A000007(n)+n*A155069(n)`
-/

namespace A050146.P5054434688827077476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A155069 n

end

end A050146.P5054434688827077476

namespace A050146

/-- `A000007(n)+n*A155069(n)` -/
def P5054434688827077476.Spec : Prop :=
  ∀ n, P5054434688827077476.a n = A050146 n

end A050146

/-! ## A050146.P10372688775284996408

`(A004277(n)-n)*A155069(n)`
-/

namespace A050146.P10372688775284996408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - (n : ℤ)) * A155069 n

end

end A050146.P10372688775284996408

namespace A050146

/-- `(A004277(n)-n)*A155069(n)` -/
def P10372688775284996408.Spec : Prop :=
  ∀ n, P10372688775284996408.a n = A050146 n

end A050146

/-! ## A050146.P13102584248516373222

`(log2(A011782(n))+1)*A155069(n)`
-/

namespace A050146.P13102584248516373222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A011782 n : ℝ) + 1) * (A155069 n : ℝ)

end

end A050146.P13102584248516373222

namespace A050146

/-- `(log2(A011782(n))+1)*A155069(n)` -/
def P13102584248516373222.Spec : Prop :=
  ∀ n, P13102584248516373222.a n = (A050146 n : ℝ)

end A050146

/-! ## A050146.P2883334228124140095

`A110110(A004280(2*n+1)-(2*n+1))`
-/

namespace A050146.P2883334228124140095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A004280 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A050146.P2883334228124140095

namespace A050146

/-- `A110110(A004280(2*n+1)-(2*n+1))` -/
def P2883334228124140095.Spec : Prop :=
  ∀ n, P2883334228124140095.a n = A050146 n

end A050146

/-! ## A050146.P15557506273492877038

`A007318(A000124(n))*A155069(n)`
-/

namespace A050146.P15557506273492877038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A155069 n

end

end A050146.P15557506273492877038

namespace A050146

/-- `A007318(A000124(n))*A155069(n)` -/
def P15557506273492877038.Spec : Prop :=
  ∀ n, P15557506273492877038.a n = A050146 n

end A050146

/-! ## A050146.P9967597592860428263

`A008619(A004273(n))*A155069(n)`
-/

namespace A050146.P9967597592860428263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat * A155069 n

end

end A050146.P9967597592860428263

namespace A050146

/-- `A008619(A004273(n))*A155069(n)` -/
def P9967597592860428263.Spec : Prop :=
  ∀ n, P9967597592860428263.a n = A050146 n

end A050146

/-! ## A050146.P7480226742722174380

`A008619(A004275(n))*A155069(n)`
-/

namespace A050146.P7480226742722174380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat * A155069 n

end

end A050146.P7480226742722174380

namespace A050146

/-- `A008619(A004275(n))*A155069(n)` -/
def P7480226742722174380.Spec : Prop :=
  ∀ n, P7480226742722174380.a n = A050146 n

end A050146

/-! ## A050146.P9054317023758459802

`A110110(A000007(n)+A004273(n)-1)`
-/

namespace A050146.P9054317023758459802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A000007 n + (A004273 n - 1)).toNat

end

end A050146.P9054317023758459802

namespace A050146

/-- `A110110(A000007(n)+A004273(n)-1)` -/
def P9054317023758459802.Spec : Prop :=
  ∀ n, P9054317023758459802.a n = A050146 n

end A050146

/-! ## A050146.P13148989786264631427

`A110110(A000007(n)-(1-A004273(n)))`
-/

namespace A050146.P13148989786264631427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A000007 n - (1 - A004273 n)).toNat

end

end A050146.P13148989786264631427

namespace A050146

/-- `A110110(A000007(n)-(1-A004273(n)))` -/
def P13148989786264631427.Spec : Prop :=
  ∀ n, P13148989786264631427.a n = A050146 n

end A050146

/-!
# A050147: a(n) = T(n,n-1), array T as in A050143. Also T(2n+1,n), array T as in A055807.

The programs for A050147, the canonical program `A050147.P8341301809192982572` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050147 has offset 1).

The definition of A050147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050147.P8341301809192982572

`A050146(n)+A002003(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A050147

/-- `A050146(n)+A002003(n)` -/
def P8341301809192982572.Spec : Prop :=
  ∀ n, P8341301809192982572.a n = A050147 (n + 1)

theorem P8341301809192982572.correct : P8341301809192982572.Spec := by
  intro n
  simp only [A050147, Nat.add_sub_cancel]

end A050147

/-! ## A050147.P6526892506663495449

`A050146(n)+2*A047781(n)`
-/

namespace A050147.P6526892506663495449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + 2 * A047781 n

end

end A050147.P6526892506663495449

namespace A050147

/-- `A050146(n)+2*A047781(n)` -/
def P6526892506663495449.Spec : Prop :=
  ∀ n, P6526892506663495449.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P17936441436311417518

`A155069(n)+2*A002002(n)`
-/

namespace A050147.P17936441436311417518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n + 2 * A002002 n

end

end A050147.P17936441436311417518

namespace A050147

/-- `A155069(n)+2*A002002(n)` -/
def P17936441436311417518.Spec : Prop :=
  ∀ n, P17936441436311417518.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P18094642541340298417

`A123164(n)+n*A155069(n)`
-/

namespace A050147.P18094642541340298417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + (n : ℤ) * A155069 n

end

end A050147.P18094642541340298417

namespace A050147

/-- `A123164(n)+n*A155069(n)` -/
def P18094642541340298417.Spec : Prop :=
  ∀ n, P18094642541340298417.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P11740273073026681230

`A123164(n)-n*A086456(n)`
-/

namespace A050147.P11740273073026681230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n - (n : ℤ) * A086456 n

end

end A050147.P11740273073026681230

namespace A050147

/-- `A123164(n)-n*A086456(n)` -/
def P11740273073026681230.Spec : Prop :=
  ∀ n, P11740273073026681230.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P12828711811375411222

`abs(A103137(n))+2*A002002(n)`
-/

namespace A050147.P12828711811375411222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 n| + 2 * A002002 n

end

end A050147.P12828711811375411222

namespace A050147

/-- `abs(A103137(n))+2*A002002(n)` -/
def P12828711811375411222.Spec : Prop :=
  ∀ n, P12828711811375411222.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P14506395776166961640

`A050146(n)+and(-2, A123164(n))`
-/

namespace A050147.P14506395776166961640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + Int.land (-2) (A123164 n)

end

end A050147.P14506395776166961640

namespace A050147

/-- `A050146(n)+and(-2, A123164(n))` -/
def P14506395776166961640.Spec : Prop :=
  ∀ n, P14506395776166961640.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P16897603204047789296

`A123164(n)+abs(n*A103137(n))`
-/

namespace A050147.P16897603204047789296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + |(n : ℤ) * A103137 n|

end

end A050147.P16897603204047789296

namespace A050147

/-- `A123164(n)+abs(n*A103137(n))` -/
def P16897603204047789296.Spec : Prop :=
  ∀ n, P16897603204047789296.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P2020020734833277785

`(n+1)*A006318(n)-A125190(n)`
-/

namespace A050147.P2020020734833277785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006318 n - A125190 n

end

end A050147.P2020020734833277785

namespace A050147

/-- `(n+1)*A006318(n)-A125190(n)` -/
def P2020020734833277785.Spec : Prop :=
  ∀ n, P2020020734833277785.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P10483641463691623818

`A110110(A004273(n))+n*A155069(n)`
-/

namespace A050147.P10483641463691623818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A004273 n).toNat + (n : ℤ) * A155069 n

end

end A050147.P10483641463691623818

namespace A050147

/-- `A110110(A004273(n))+n*A155069(n)` -/
def P10483641463691623818.Spec : Prop :=
  ∀ n, P10483641463691623818.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P364271841203194442

`A050146(n)+A001221(A001316(n))*A123164(n)`
-/

namespace A050147.P364271841203194442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + A001221 (A001316 n).toNat * A123164 n

end

end A050147.P364271841203194442

namespace A050147

/-- `A050146(n)+A001221(A001316(n))*A123164(n)` -/
def P364271841203194442.Spec : Prop :=
  ∀ n, P364271841203194442.a n = A050147 (n + 1)

end A050147

/-! ## A050147.P15318682827922375071

`A104550(n+1)-n*A006319(n)`
-/

namespace A050147.P15318682827922375071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1) - (n : ℤ) * A006319 n

end

end A050147.P15318682827922375071

namespace A050147

/-- `A104550(n+1)-n*A006319(n)` -/
def P15318682827922375071.Spec : Prop :=
  ∀ n, P15318682827922375071.a n = A050147 (n + 1)

end A050147

/-!
# A050148: a(n) = T(n,n-2), array T as in A050143.

The programs for A050148, the canonical program `A050148.P3708266931219046583` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050148 has offset 2).

The definition of A050148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050148.P3708266931219046583

`Δ[A002003(n)]-A086456(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A050148

/-- `Δ[A002003(n)]-A086456(n)` -/
def P3708266931219046583.Spec : Prop :=
  ∀ n, P3708266931219046583.a n = A050148 (n + 2)

theorem P3708266931219046583.correct : P3708266931219046583.Spec := by
  intro n
  simp only [A050148, Nat.add_sub_cancel]

end A050148

/-! ## A050148.P534402338085360920

`A005843(n+1)*A006318(n)-A006319(n)`
-/

namespace A050148.P534402338085360920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A006318 n - A006319 n

end

end A050148.P534402338085360920

namespace A050148

/-- `A005843(n+1)*A006318(n)-A006319(n)` -/
def P534402338085360920.Spec : Prop :=
  ∀ n, P534402338085360920.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P951503344508670742

`A210038(A132209(n)+1)`
-/

namespace A050148.P951503344508670742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (A132209 n + 1).toNat

end

end A050148.P951503344508670742

namespace A050148

/-- `A210038(A132209(n)+1)` -/
def P951503344508670742.Spec : Prop :=
  ∀ n, P951503344508670742.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P6778792042851709279

`A055807(A090288(n)+1)`
-/

namespace A050148.P6778792042851709279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A090288 n + 1).toNat

end

end A050148.P6778792042851709279

namespace A050148

/-- `A055807(A090288(n)+1)` -/
def P6778792042851709279.Spec : Prop :=
  ∀ n, P6778792042851709279.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P6355720467846722014

`A055807(A132209(n+1))`
-/

namespace A050148.P6355720467846722014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A132209 (n + 1)).toNat

end

end A050148.P6355720467846722014

namespace A050148

/-- `A055807(A132209(n+1))` -/
def P6355720467846722014.Spec : Prop :=
  ∀ n, P6355720467846722014.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P4756372756666962142

`A055807(A142463(n+1))`
-/

namespace A050148.P4756372756666962142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A142463 (n + 1)).toNat

end

end A050148.P4756372756666962142

namespace A050148

/-- `A055807(A142463(n+1))` -/
def P4756372756666962142.Spec : Prop :=
  ∀ n, P4756372756666962142.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P5029565678543179274

`A055807(or(1, A090288(n)))`
-/

namespace A050148.P5029565678543179274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (Int.lor 1 (A090288 n)).toNat

end

end A050148.P5029565678543179274

namespace A050148

/-- `A055807(or(1, A090288(n)))` -/
def P5029565678543179274.Spec : Prop :=
  ∀ n, P5029565678543179274.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P3855538180083043294

`A055807(xor(1, A090288(n)))`
-/

namespace A050148.P3855538180083043294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (Int.xor 1 (A090288 n)).toNat

end

end A050148.P3855538180083043294

namespace A050148

/-- `A055807(xor(1, A090288(n)))` -/
def P3855538180083043294.Spec : Prop :=
  ∀ n, P3855538180083043294.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P4689126774723178435

`A050143(A001844(n+1)+1)`
-/

namespace A050148.P4689126774723178435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 (A001844 (n + 1) + 1).toNat

end

end A050148.P4689126774723178435

namespace A050148

/-- `A050143(A001844(n+1)+1)` -/
def P4689126774723178435.Spec : Prop :=
  ∀ n, P4689126774723178435.a n = A050148 (n + 2)

end A050148

/-! ## A050148.P14826589530341136162

`A055807(A027379(2*n+1)-n)`
-/

namespace A050148.P14826589530341136162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A027379 (2 * n + 1) - (n : ℤ)).toNat

end

end A050148.P14826589530341136162

namespace A050148

/-- `A055807(A027379(2*n+1)-n)` -/
def P14826589530341136162.Spec : Prop :=
  ∀ n, P14826589530341136162.a n = A050148 (n + 2)

end A050148

/-!
# A050149: a(n) = T(n,n-3), array T as in A050143.

The programs for A050149, the canonical program `A050149.P4252785858983221837` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050149 has offset 3).

The definition of A050149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050149.P4252785858983221837

`Δ[A086456(n)+Δ[A002002(n)]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A050149

/-- `Δ[A086456(n)+Δ[A002002(n)]]` -/
def P4252785858983221837.Spec : Prop :=
  ∀ n, P4252785858983221837.a n = A050149 (n + 3)

theorem P4252785858983221837.correct : P4252785858983221837.Spec := by
  intro n
  simp only [A050149, Nat.add_sub_cancel]

end A050149

/-! ## A050149.P5304780269725653984

`A210038(A056220(n+1))`
-/

namespace A050149.P5304780269725653984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (A056220 (n + 1)).toNat

end

end A050149.P5304780269725653984

namespace A050149

/-- `A210038(A056220(n+1))` -/
def P5304780269725653984.Spec : Prop :=
  ∀ n, P5304780269725653984.a n = A050149 (n + 3)

end A050149

/-! ## A050149.P6550931875486594876

`record[A210038(2*n+1)/A210039(n+1)]`
-/

namespace A050149.P6550931875486594876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210038 (2 * n + 1) : ℚ) / (A210039 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050149.P6550931875486594876

namespace A050149

/-- `record[A210038(2*n+1)/A210039(n+1)]` -/
def P6550931875486594876.Spec : Prop :=
  ∀ n, P6550931875486594876.a n = (A050149 (n + 3) : ℚ)

end A050149

/-! ## A050149.P15719846690284413035

`A055807(2*(n+1)*(n+3))`
-/

namespace A050149.P15719846690284413035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (2 * ((n + 1) * (n + 3)))

end

end A050149.P15719846690284413035

namespace A050149

/-- `A055807(2*(n+1)*(n+3))` -/
def P15719846690284413035.Spec : Prop :=
  ∀ n, P15719846690284413035.a n = A050149 (n + 3)

end A050149

/-! ## A050149.P10477249492067029466

`A050143((n+1)²+(n+3)²)`
-/

namespace A050149.P10477249492067029466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050143 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A050149.P10477249492067029466

namespace A050149

/-- `A050143((n+1)²+(n+3)²)` -/
def P10477249492067029466.Spec : Prop :=
  ∀ n, P10477249492067029466.a n = A050149 (n + 3)

end A050149

/-! ## A050149.P8729816965851442024

`record[A055807(A266074(n))]`
-/

namespace A050149.P8729816965851442024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A266074 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050149.P8729816965851442024

namespace A050149

/-- `record[A055807(A266074(n))]` -/
def P8729816965851442024.Spec : Prop :=
  ∀ n, P8729816965851442024.a n = A050149 (n + 3)

end A050149

/-! ## A050149.P17664794851006623375

`record[A055807(∑[A176743(n)])]`
-/

namespace A050149.P17664794851006623375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050149.P17664794851006623375

namespace A050149

/-- `record[A055807(∑[A176743(n)])]` -/
def P17664794851006623375.Spec : Prop :=
  ∀ n, P17664794851006623375.a n = A050149 (n + 3)

end A050149

/-!
# A050150: Odd numbers with prime number of divisors.

The programs for A050150, the canonical program `A050150.P9836629661305837996` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050150 has offset 1).

The definition of A050150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050150.P972274723718481791

`∩[A009087(n+1), A061345(n)]`
-/

namespace A050150.P972274723718481791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050150.P972274723718481791

namespace A050150

/-- `∩[A009087(n+1), A061345(n)]` -/
def P972274723718481791.Spec : Prop :=
  ∀ n, (P972274723718481791.a n : ℤ) = A050150 (n + 1)

end A050150

/-! ## A050150.P15311533242599167096

`filter[A009087(n+1), A360113(#)]`
-/

namespace A050150.P15311533242599167096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A050150.P15311533242599167096

namespace A050150

/-- `filter[A009087(n+1), A360113(#)]` -/
def P15311533242599167096.Spec : Prop :=
  ∀ n, P15311533242599167096.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P9836629661305837996

`filter[A009087(n+1), A361023(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050150

/-- `filter[A009087(n+1), A361023(#)]` -/
def P9836629661305837996.Spec : Prop :=
  ∀ n, P9836629661305837996.a n = A050150 (n + 1)

theorem P9836629661305837996.correct : P9836629661305837996.Spec := by
  intro n
  simp only [A050150, Nat.add_sub_cancel]

end A050150

/-! ## A050150.P16495121235449540147

`filter[A009087(n+1), A374134(#)]`
-/

namespace A050150.P16495121235449540147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A050150.P16495121235449540147

namespace A050150

/-- `filter[A009087(n+1), A374134(#)]` -/
def P16495121235449540147.Spec : Prop :=
  ∀ n, P16495121235449540147.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P12292267322237652886

`filter[A061345(n+1), A355937(#)]`
-/

namespace A050150.P12292267322237652886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A050150.P12292267322237652886

namespace A050150

/-- `filter[A061345(n+1), A355937(#)]` -/
def P12292267322237652886.Spec : Prop :=
  ∀ n, P12292267322237652886.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P18409547411249294531

`filter[A356845(n+2), A355937(#)]`
-/

namespace A050150.P18409547411249294531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A050150.P18409547411249294531

namespace A050150

/-- `filter[A356845(n+2), A355937(#)]` -/
def P18409547411249294531.Spec : Prop :=
  ∀ n, P18409547411249294531.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P12192408091840308561

`2*eq[2, A000005(A000005(2*n+1))]+1`
-/

namespace A050150.P12192408091840308561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050150.P12192408091840308561

namespace A050150

/-- `2*eq[2, A000005(A000005(2*n+1))]+1` -/
def P12192408091840308561.Spec : Prop :=
  ∀ n, (P12192408091840308561.a n : ℤ) = A050150 (n + 1)

end A050150

/-! ## A050150.P16828618905080435351

`filter[A082916(n+3), A355937(#)]`
-/

namespace A050150.P16828618905080435351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A050150.P16828618905080435351

namespace A050150

/-- `filter[A082916(n+3), A355937(#)]` -/
def P16828618905080435351.Spec : Prop :=
  ∀ n, P16828618905080435351.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P9730048735516161463

`filter[A327755(n+2), A355937(#)]`
-/

namespace A050150.P9730048735516161463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A050150.P9730048735516161463

namespace A050150

/-- `filter[A327755(n+2), A355937(#)]` -/
def P9730048735516161463.Spec : Prop :=
  ∀ n, P9730048735516161463.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P7850901778155979663

`filter[A009087(n+1), A039982(#)]`
-/

namespace A050150.P7850901778155979663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A050150.P7850901778155979663

namespace A050150

/-- `filter[A009087(n+1), A039982(#)]` -/
def P7850901778155979663.Spec : Prop :=
  ∀ n, P7850901778155979663.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P2717261698941644747

`filter[A009087(n+1), A093719(#)]`
-/

namespace A050150.P2717261698941644747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A050150.P2717261698941644747

namespace A050150

/-- `filter[A009087(n+1), A093719(#)]` -/
def P2717261698941644747.Spec : Prop :=
  ∀ n, P2717261698941644747.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P7252650000807641414

`filter[A009087(n+1), A254651(#)]`
-/

namespace A050150.P7252650000807641414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A050150.P7252650000807641414

namespace A050150

/-- `filter[A009087(n+1), A254651(#)]` -/
def P7252650000807641414.Spec : Prop :=
  ∀ n, P7252650000807641414.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P12431709780132410531

`filter[A009087(n+1), A340373(#)]`
-/

namespace A050150.P12431709780132410531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A050150.P12431709780132410531

namespace A050150

/-- `filter[A009087(n+1), A340373(#)]` -/
def P12431709780132410531.Spec : Prop :=
  ∀ n, P12431709780132410531.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P2148011682379425723

`filter[A009087(n+1), A347523(#)]`
-/

namespace A050150.P2148011682379425723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A050150.P2148011682379425723

namespace A050150

/-- `filter[A009087(n+1), A347523(#)]` -/
def P2148011682379425723.Spec : Prop :=
  ∀ n, P2148011682379425723.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P8841363027286362041

`filter[A009087(n+1), A353673(#)]`
-/

namespace A050150.P8841363027286362041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A050150.P8841363027286362041

namespace A050150

/-- `filter[A009087(n+1), A353673(#)]` -/
def P8841363027286362041.Spec : Prop :=
  ∀ n, P8841363027286362041.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P14861153744614635248

`filter[A009087(n+1), A356172(#)]`
-/

namespace A050150.P14861153744614635248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A050150.P14861153744614635248

namespace A050150

/-- `filter[A009087(n+1), A356172(#)]` -/
def P14861153744614635248.Spec : Prop :=
  ∀ n, P14861153744614635248.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P6840367586551899746

`filter[A371533(n+2), A355937(#)]`
-/

namespace A050150.P6840367586551899746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371533 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A050150.P6840367586551899746

namespace A050150

/-- `filter[A371533(n+2), A355937(#)]` -/
def P6840367586551899746.Spec : Prop :=
  ∀ n, P6840367586551899746.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P13497813123131521638

`filter[A267895(n+1), A069513(#)]`
-/

namespace A050150.P13497813123131521638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A050150.P13497813123131521638

namespace A050150

/-- `filter[A267895(n+1), A069513(#)]` -/
def P13497813123131521638.Spec : Prop :=
  ∀ n, P13497813123131521638.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P16441256982098640201

`filter[A267895(n+1), A324290(#)]`
-/

namespace A050150.P16441256982098640201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A050150.P16441256982098640201

namespace A050150

/-- `filter[A267895(n+1), A324290(#)]` -/
def P16441256982098640201.Spec : Prop :=
  ∀ n, P16441256982098640201.a n = A050150 (n + 1)

end A050150

/-! ## A050150.P959478486429972466

`filter[A267895(n+1), A353498(#)]`
-/

namespace A050150.P959478486429972466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353498 (f1 j).toNat = 1) n)

end

end A050150.P959478486429972466

namespace A050150

/-- `filter[A267895(n+1), A353498(#)]` -/
def P959478486429972466.Spec : Prop :=
  ∀ n, P959478486429972466.a n = A050150 (n + 1)

end A050150

/-!
# A050151: a(n) = T(n,n+2), array T as in A050143.

The programs for A050151, the canonical program `A050151.P5500480117813268484` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050151 has offset 0).

The definition of A050151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050151.P17648148057476421442

`n*A001003(n)`
-/

namespace A050151.P17648148057476421442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001003 n

end

end A050151.P17648148057476421442

namespace A050151

/-- `n*A001003(n)` -/
def P17648148057476421442.Spec : Prop :=
  ∀ n, P17648148057476421442.a n = A050151 n

end A050151

/-! ## A050151.P5500480117813268484

`n*((6*n-3)*a(n-1)/(n-1)-a(n-2))/(n+1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A050151

/-- `n*((6*n-3)*a(n-1)/(n-1)-a(n-2))/(n+1)` -/
def P5500480117813268484.Spec : Prop :=
  ∀ n, P5500480117813268484.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P5807254484286342546

`abs(n*A080243(n))`
-/

namespace A050151.P5807254484286342546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A080243 n|

end

end A050151.P5807254484286342546

namespace A050151

/-- `abs(n*A080243(n))` -/
def P5807254484286342546.Spec : Prop :=
  ∀ n, P5807254484286342546.a n = A050151 n

end A050151

/-! ## A050151.P8857290453735408409

`n*A104219(∑[n])`
-/

namespace A050151.P8857290453735408409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050151.P8857290453735408409

namespace A050151

/-- `n*A104219(∑[n])` -/
def P8857290453735408409.Spec : Prop :=
  ∀ n, P8857290453735408409.a n = A050151 n

end A050151

/-! ## A050151.P8800734410901563574

`n*A172094(∑[n])`
-/

namespace A050151.P8800734410901563574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A172094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050151.P8800734410901563574

namespace A050151

/-- `n*A172094(∑[n])` -/
def P8800734410901563574.Spec : Prop :=
  ∀ n, P8800734410901563574.a n = A050151 n

end A050151

/-! ## A050151.P13174049996608257176

`n*A186826(∑[n])`
-/

namespace A050151.P13174049996608257176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186826 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050151.P13174049996608257176

namespace A050151

/-- `n*A186826(∑[n])` -/
def P13174049996608257176.Spec : Prop :=
  ∀ n, P13174049996608257176.a n = A050151 n

end A050151

/-! ## A050151.P3911872709434568606

`n/2*A006318(n)`
-/

namespace A050151.P3911872709434568606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A006318 n : ℚ)

end

end A050151.P3911872709434568606

namespace A050151

/-- `n/2*A006318(n)` -/
def P3911872709434568606.Spec : Prop :=
  ∀ n, P3911872709434568606.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P18043079844074351555

`n/3*A238113(n)`
-/

namespace A050151.P18043079844074351555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A238113 n : ℚ)

end

end A050151.P18043079844074351555

namespace A050151

/-- `n/3*A238113(n)` -/
def P18043079844074351555.Spec : Prop :=
  ∀ n, P18043079844074351555.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P1458206723080900738

`n/4*A238111(n)`
-/

namespace A050151.P1458206723080900738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A238111 n : ℚ)

end

end A050151.P1458206723080900738

namespace A050151

/-- `n/4*A238111(n)` -/
def P1458206723080900738.Spec : Prop :=
  ∀ n, P1458206723080900738.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P18433057197429268056

`n*ceil(A035011(n)/2)`
-/

namespace A050151.P18433057197429268056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A035011 n : ℚ) / 2⌉

end

end A050151.P18433057197429268056

namespace A050151

/-- `n*ceil(A035011(n)/2)` -/
def P18433057197429268056.Spec : Prop :=
  ∀ n, P18433057197429268056.a n = A050151 n

end A050151

/-! ## A050151.P7130878153423805833

`n/2*∑[A006319(n)]`
-/

namespace A050151.P7130878153423805833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A050151.P7130878153423805833

namespace A050151

/-- `n/2*∑[A006319(n)]` -/
def P7130878153423805833.Spec : Prop :=
  ∀ n, P7130878153423805833.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P2586659104585433241

`n/2*Δ[A176006(n)]`
-/

namespace A050151.P2586659104585433241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A050151.P2586659104585433241

namespace A050151

/-- `n/2*Δ[A176006(n)]` -/
def P2586659104585433241.Spec : Prop :=
  ∀ n, P2586659104585433241.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P799425451762410745

`n/2*record[A080247(n)]`
-/

namespace A050151.P799425451762410745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A050151.P799425451762410745

namespace A050151

/-- `n/2*record[A080247(n)]` -/
def P799425451762410745.Spec : Prop :=
  ∀ n, P799425451762410745.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P15076938006785164304

`n/2*A025240(n+1)`
-/

namespace A050151.P15076938006785164304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A025240 (n + 1) : ℚ)

end

end A050151.P15076938006785164304

namespace A050151

/-- `n/2*A025240(n+1)` -/
def P15076938006785164304.Spec : Prop :=
  ∀ n, P15076938006785164304.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P4243681918516329127

`n/2*A155069(n+1)`
-/

namespace A050151.P4243681918516329127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A155069 (n + 1) : ℚ)

end

end A050151.P4243681918516329127

namespace A050151

/-- `n/2*A155069(n+1)` -/
def P4243681918516329127.Spec : Prop :=
  ∀ n, P4243681918516329127.a n = (A050151 n : ℚ)

end A050151

/-! ## A050151.P3136319048993983974

`A001850(n)-A116363(n)`
-/

namespace A050151.P3136319048993983974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A116363 n

end

end A050151.P3136319048993983974

namespace A050151

/-- `A001850(n)-A116363(n)` -/
def P3136319048993983974.Spec : Prop :=
  ∀ n, P3136319048993983974.a n = A050151 n

end A050151

/-! ## A050151.P8679883484356106535

`A176479(n)-A001003(n)`
-/

namespace A050151.P8679883484356106535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176479 n - A001003 n

end

end A050151.P8679883484356106535

namespace A050151

/-- `A176479(n)-A001003(n)` -/
def P8679883484356106535.Spec : Prop :=
  ∀ n, P8679883484356106535.a n = A050151 n

end A050151

/-! ## A050151.P2944187164321965635

`n*A011117(A000096(n))`
-/

namespace A050151.P2944187164321965635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011117 (A000096 n).toNat

end

end A050151.P2944187164321965635

namespace A050151

/-- `n*A011117(A000096(n))` -/
def P2944187164321965635.Spec : Prop :=
  ∀ n, P2944187164321965635.a n = A050151 n

end A050151

/-! ## A050151.P9421276228328480449

`A038608(n)*A080243(n)`
-/

namespace A050151.P9421276228328480449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n * A080243 n

end

end A050151.P9421276228328480449

namespace A050151

/-- `A038608(n)*A080243(n)` -/
def P9421276228328480449.Spec : Prop :=
  ∀ n, P9421276228328480449.a n = A050151 n

end A050151

/-! ## A050151.P8153196579715425779

`∑[A123164(n)-A001003(n)]`
-/

namespace A050151.P8153196579715425779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n - A001003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050151.P8153196579715425779

namespace A050151

/-- `∑[A123164(n)-A001003(n)]` -/
def P8153196579715425779.Spec : Prop :=
  ∀ n, P8153196579715425779.a n = A050151 n

end A050151

/-!
# A050152: a(n) = T(n,n+3), array T as in A050143.

The programs for A050152, the canonical program `A050152.P13672453519824869841` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050152 has offset 0).

The definition of A050152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050152.P3218260238347580803

`n/2*A010683(n)`
-/

namespace A050152.P3218260238347580803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A010683 n : ℚ)

end

end A050152.P3218260238347580803

namespace A050152

/-- `n/2*A010683(n)` -/
def P3218260238347580803.Spec : Prop :=
  ∀ n, P3218260238347580803.a n = (A050152 n : ℚ)

end A050152

/-! ## A050152.P16889455660860628342

`A261207(n+1)-A010683(n)`
-/

namespace A050152.P16889455660860628342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261207 (n + 1) - A010683 n

end

end A050152.P16889455660860628342

namespace A050152

/-- `A261207(n+1)-A010683(n)` -/
def P16889455660860628342.Spec : Prop :=
  ∀ n, P16889455660860628342.a n = A050152 n

end A050152

/-! ## A050152.P13672453519824869841

`A035029(n)-A047781(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050152

/-- `A035029(n)-A047781(n+1)` -/
def P13672453519824869841.Spec : Prop :=
  ∀ n, P13672453519824869841.a n = A050152 n

theorem P13672453519824869841.correct : P13672453519824869841.Spec := by
  intro n
  simp only [A050152]

end A050152

/-! ## A050152.P9967540307378784312

`A050151(n+1)-A035029(n)`
-/

namespace A050152.P9967540307378784312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050151 (n + 1) - A035029 n

end

end A050152.P9967540307378784312

namespace A050152

/-- `A050151(n+1)-A035029(n)` -/
def P9967540307378784312.Spec : Prop :=
  ∀ n, P9967540307378784312.a n = A050152 n

end A050152

/-! ## A050152.P4042929660312435197

`(A050151(n+1)-A047781(n+1))/2`
-/

namespace A050152.P4042929660312435197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050151 (n + 1) - A047781 (n + 1) : ℚ) / 2

end

end A050152.P4042929660312435197

namespace A050152

/-- `(A050151(n+1)-A047781(n+1))/2` -/
def P4042929660312435197.Spec : Prop :=
  ∀ n, P4042929660312435197.a n = (A050152 n : ℚ)

end A050152

/-! ## A050152.P2395473939215115259

`A121462(∑[4*(n+1)])`
-/

namespace A050152.P2395473939215115259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050152.P2395473939215115259

namespace A050152

/-- `A121462(∑[4*(n+1)])` -/
def P2395473939215115259.Spec : Prop :=
  ∀ n, P2395473939215115259.a n = A050152 n

end A050152

/-! ## A050152.P4305938620696646782

`A153342((n+1)²+(n+2)²)`
-/

namespace A050152.P4305938620696646782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153342 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A050152.P4305938620696646782

namespace A050152

/-- `A153342((n+1)²+(n+2)²)` -/
def P4305938620696646782.Spec : Prop :=
  ∀ n, P4305938620696646782.a n = A050152 n

end A050152

/-! ## A050152.P11003173675293260796

`A055807(Δ[A037237(n)])`
-/

namespace A050152.P11003173675293260796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (f1 (n + 1) - f1 n).toNat

end

end A050152.P11003173675293260796

namespace A050152

/-- `A055807(Δ[A037237(n)])` -/
def P11003173675293260796.Spec : Prop :=
  ∀ n, P11003173675293260796.a n = A050152 n

end A050152

/-! ## A050152.P8885496555239471882

`A055807(A058331(n+2))`
-/

namespace A050152.P8885496555239471882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A058331 (n + 2)).toNat

end

end A050152.P8885496555239471882

namespace A050152

/-- `A055807(A058331(n+2))` -/
def P8885496555239471882.Spec : Prop :=
  ∀ n, P8885496555239471882.a n = A050152 n

end A050152

/-! ## A050152.P11801109510677384435

`A055807(A268581(n)+4)`
-/

namespace A050152.P11801109510677384435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A268581 n + 4).toNat

end

end A050152.P11801109510677384435

namespace A050152

/-- `A055807(A268581(n)+4)` -/
def P11801109510677384435.Spec : Prop :=
  ∀ n, P11801109510677384435.a n = A050152 n

end A050152

/-!
# A050155: Triangle T(n,k), k>=0 and n>=1, read by rows defined by: T(n,k) = (2k+3)*binomial(2n,n-k-1)/(n+k+2).

The programs for A050155, the canonical program `A050155.P11101895223739317642` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050155 has offset 1).

The definition of A050155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050155.P11101895223739317642

`A039599(comp[∑[n]])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050155

/-- `A039599(comp[∑[n]])` -/
def P11101895223739317642.Spec : Prop :=
  ∀ n, P11101895223739317642.a n = A050155 (n + 1)

theorem P11101895223739317642.correct : P11101895223739317642.Spec := by
  intro n
  simp only [A050155, Nat.add_sub_cancel]

end A050155

/-! ## A050155.P1242965315442052473

`A120730(A292565(n+1))`
-/

namespace A050155.P1242965315442052473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 (A292565 (n + 1)).toNat

end

end A050155.P1242965315442052473

namespace A050155

/-- `A120730(A292565(n+1))` -/
def P1242965315442052473.Spec : Prop :=
  ∀ n, P1242965315442052473.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P4185317905935073746

`A008313(A063657(n+1))`
-/

namespace A050155.P4185317905935073746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A063657 (n + 1)).toNat

end

end A050155.P4185317905935073746

namespace A050155

/-- `A008313(A063657(n+1))` -/
def P4185317905935073746.Spec : Prop :=
  ∀ n, P4185317905935073746.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P7444596229212837176

`A008315(A143971(n+1)+2*n+1)`
-/

namespace A050155.P7444596229212837176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A143971 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A050155.P7444596229212837176

namespace A050155

/-- `A008315(A143971(n+1)+2*n+1)` -/
def P7444596229212837176.Spec : Prop :=
  ∀ n, P7444596229212837176.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P16240882652331678117

`A039599(eq[0, A010816(n)])%A194887(n+1)`
-/

namespace A050155.P16240882652331678117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A194887 (n + 1))

end

end A050155.P16240882652331678117

namespace A050155

/-- `A039599(eq[0, A010816(n)])%A194887(n+1)` -/
def P16240882652331678117.Spec : Prop :=
  ∀ n, P16240882652331678117.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P1019829559963067970

`A053121(A185871(n+1))`
-/

namespace A050155.P1019829559963067970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A185871 (n + 1)).toNat

end

end A050155.P1019829559963067970

namespace A050155

/-- `A053121(A185871(n+1))` -/
def P1019829559963067970.Spec : Prop :=
  ∀ n, P1019829559963067970.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P17940663496776878882

`A112554(A185869(n+1))`
-/

namespace A050155.P17940663496776878882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112554 (A185869 (n + 1)).toNat

end

end A050155.P17940663496776878882

namespace A050155

/-- `A112554(A185869(n+1))` -/
def P17940663496776878882.Spec : Prop :=
  ∀ n, P17940663496776878882.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P17605346326512135379

`A156644(2*A292565(n+1)-A292565(n+1))`
-/

namespace A050155.P17605346326512135379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 (2 * A292565 (n + 1) - A292565 (n + 1)).toNat

end

end A050155.P17605346326512135379

namespace A050155

/-- `A156644(2*A292565(n+1)-A292565(n+1))` -/
def P17605346326512135379.Spec : Prop :=
  ∀ n, P17605346326512135379.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P5209466581901128827

`A039599(eq[0, A010816(n)])%A019492(n)`
-/

namespace A050155.P5209466581901128827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A019492 n)

end

end A050155.P5209466581901128827

namespace A050155

/-- `A039599(eq[0, A010816(n)])%A019492(n)` -/
def P5209466581901128827.Spec : Prop :=
  ∀ n, P5209466581901128827.a n = A050155 (n + 1)

end A050155

/-! ## A050155.P18089098659683496094

`A050165(A380649(n+1))`
-/

namespace A050155.P18089098659683496094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A380649 (n + 1)).toNat

end

end A050155.P18089098659683496094

namespace A050155

/-- `A050165(A380649(n+1))` -/
def P18089098659683496094.Spec : Prop :=
  ∀ n, P18089098659683496094.a n = A050155 (n + 1)

end A050155

/-!
# A050156: T(n,k)=M(2n+3,n+3,k+3), 0<=k<=n, n >= 0, array M as in A050144.

The programs for A050156, the canonical program `A050156.P13048179924757720797` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050156 has offset 0).

The definition of A050156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050156.P13048179924757720797

`A128899(lt[1, A128899(n)]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A050156

/-- `A128899(lt[1, A128899(n)]+1)` -/
def P13048179924757720797.Spec : Prop :=
  ∀ n, P13048179924757720797.a n = A050156 n

theorem P13048179924757720797.correct : P13048179924757720797.Spec := by
  intro n
  simp only [A050156]

end A050156

/-! ## A050156.P5538564479487761120

`A039598(comp[∑[n]])`
-/

namespace A050156.P5538564479487761120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A050156.P5538564479487761120

namespace A050156

/-- `A039598(comp[∑[n]])` -/
def P5538564479487761120.Spec : Prop :=
  ∀ n, P5538564479487761120.a n = A050156 n

end A050156

/-! ## A050156.P1300510804779203293

`A050166(A099375(n)+n)`
-/

namespace A050156.P1300510804779203293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A099375 n + (n : ℤ)).toNat

end

end A050156.P1300510804779203293

namespace A050156

/-- `A050166(A099375(n)+n)` -/
def P1300510804779203293.Spec : Prop :=
  ∀ n, P1300510804779203293.a n = A050156 n

end A050156

/-! ## A050156.P1736674029098418183

`A050166(A061579(comp[∑[n]]))`
-/

namespace A050156.P1736674029098418183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A050156.P1736674029098418183

namespace A050156

/-- `A050166(A061579(comp[∑[n]]))` -/
def P1736674029098418183.Spec : Prop :=
  ∀ n, P1736674029098418183.a n = A050156 n

end A050156

/-! ## A050156.P17445592858541702869

`A008313(A189151(n+1))`
-/

namespace A050156.P17445592858541702869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A189151 (n + 1)).toNat

end

end A050156.P17445592858541702869

namespace A050156

/-- `A008313(A189151(n+1))` -/
def P17445592858541702869.Spec : Prop :=
  ∀ n, P17445592858541702869.a n = A050156 n

end A050156

/-! ## A050156.P5266382301896089325

`A112554(A185871(n+1))`
-/

namespace A050156.P5266382301896089325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112554 (A185871 (n + 1)).toNat

end

end A050156.P5266382301896089325

namespace A050156

/-- `A112554(A185871(n+1))` -/
def P5266382301896089325.Spec : Prop :=
  ∀ n, P5266382301896089325.a n = A050156 n

end A050156

/-! ## A050156.P11727156699413202501

`A131085(A292565(n+1))`
-/

namespace A050156.P11727156699413202501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131085 (A292565 (n + 1)).toNat

end

end A050156.P11727156699413202501

namespace A050156

/-- `A131085(A292565(n+1))` -/
def P11727156699413202501.Spec : Prop :=
  ∀ n, P11727156699413202501.a n = A050156 n

end A050156

/-! ## A050156.P16976444082664824940

`A050166(A380649(n+1))`
-/

namespace A050156.P16976444082664824940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A380649 (n + 1)).toNat

end

end A050156.P16976444082664824940

namespace A050156

/-- `A050166(A380649(n+1))` -/
def P16976444082664824940.Spec : Prop :=
  ∀ n, P16976444082664824940.a n = A050156 n

end A050156

/-!
# A050157: T(n, k) = S(2n, n, k) for 0<=k<=n and n>=0, where S(p, q, r) is the number of upright paths from (0, 0) to (p, p-q) that do not rise above the line y = x-r.

The programs for A050157, there is no canonical definition to state claims against.
-/

/-! ## A050157.P10459360512014984047

`A296666(A063656(n))`
-/

namespace A050157.P10459360512014984047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296666 (A063656 n).toNat

end

end A050157.P10459360512014984047

/-! ## A050157.P11659385689378815668

`A296666(∑[abs(A167407(n))])`
-/

namespace A050157.P11659385689378815668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167407 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050157.P11659385689378815668

/-!
# A050158: T(n, k) = S(2*n + 1, n, k + 1) for 0<=k<=n and n >= 0, array S as in A050157.

The programs for A050158, there is no canonical definition to state claims against.
-/

/-! ## A050158.P12632795571681990089

`A050159(∑[A035214(n)])`
-/

namespace A050158.P12632795571681990089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050159 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050158.P12632795571681990089

/-! ## A050158.P7470877997840107366

`A050159(A014132(n+1))`
-/

namespace A050158.P7470877997840107366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050159 (A014132 (n + 1)).toNat

end

end A050158.P7470877997840107366

/-! ## A050158.P10852286012711000022

`A050159(eq[0, A010054(n)])`
-/

namespace A050158.P10852286012711000022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050158.P10852286012711000022

/-! ## A050158.P993491795762239559

`A050159(eq[0, A143433(n)])`
-/

namespace A050158.P993491795762239559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050158.P993491795762239559

/-! ## A050158.P3129399317756012051

`A050159(eq[1, A035214(n)])`
-/

namespace A050158.P3129399317756012051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050158.P3129399317756012051

/-!
# A050161: T(n,k)=S(2n+1,n-1,k-1), 0<=k<=n, n >= 0, array S as in A050157.

The programs for A050161, there is no canonical definition to state claims against.
-/

/-! ## A050161.P12765807313061638727

`A050158(n)-A000108(A123578(n))`
-/

namespace A050161.P12765807313061638727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050158 n - A000108 (A123578 n).toNat

end

end A050161.P12765807313061638727

/-!
# A050163: T(n, k) = S(2n+2, n+2, k+2) for 0<=k<=n and n >= 0, array S as in A050157.

The programs for A050163, there is no canonical definition to state claims against.
-/

/-! ## A050163.P4593505362971782441

`A050160(comp[∑[n]])`
-/

namespace A050163.P4593505362971782441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050160 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A050163.P4593505362971782441

/-! ## A050163.P14360883812540479817

`lcm(A033999(n), A050160(A014132(n+1)))`
-/

namespace A050163.P14360883812540479817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A050160 (A014132 (n + 1)).toNat)

end

end A050163.P14360883812540479817

/-! ## A050163.P1246094143864995880

`A050160(A014132(n+1))*A057427(n+1)`
-/

namespace A050163.P1246094143864995880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050160 (A014132 (n + 1)).toNat * A057427 (n + 1)

end

end A050163.P1246094143864995880

/-! ## A050163.P6093066104690608912

`A033999(2*n)*A050160(A014132(n+1))`
-/

namespace A050163.P6093066104690608912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A050160 (A014132 (n + 1)).toNat

end

end A050163.P6093066104690608912

/-! ## A050163.P16738536370579213911

`A050160(A014132(n+1))%A007283(n)`
-/

namespace A050163.P16738536370579213911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050160 (A014132 (n + 1)).toNat) (A007283 n)

end

end A050163.P16738536370579213911

/-! ## A050163.P16379352891890756356

`A050160(A014132(n+1))+A049240((n+1)²)`
-/

namespace A050163.P16379352891890756356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050160 (A014132 (n + 1)).toNat + A049240 ((n + 1) ^ 2)

end

end A050163.P16379352891890756356

/-! ## A050163.P254206156841615303

`A050160(comp[C(n, 2)])%A207084(n+1)`
-/

namespace A050163.P254206156841615303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050160 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A207084 (n + 1))

end

end A050163.P254206156841615303

/-!
# A050164: T(n,k)=S(2n+3,n+3,k+3), 0<=k<=n, n >= 0, array S as in A050157.

The programs for A050164, there is no canonical definition to state claims against.
-/

/-! ## A050164.P5331942253269546

`A050161(A014132(n+1))`
-/

namespace A050164.P5331942253269546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050161 (A014132 (n + 1)).toNat

end

end A050164.P5331942253269546

/-! ## A050164.P10661507951581800293

`A050161(eq[0, A010054(n)])`
-/

namespace A050164.P10661507951581800293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050164.P10661507951581800293

/-! ## A050164.P13376079338494162745

`A050161(eq[0, A010816(n)])`
-/

namespace A050164.P13376079338494162745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050164.P13376079338494162745

/-! ## A050164.P7183515084199634546

`A050161(A003056(n)+2+n)`
-/

namespace A050164.P7183515084199634546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050161 (A003056 n + 2 + (n : ℤ)).toNat

end

end A050164.P7183515084199634546

/-! ## A050164.P17434655399596119169

`A050161(A002024(n+1)+1+n)`
-/

namespace A050164.P17434655399596119169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050161 (A002024 (n + 1) + 1 + (n : ℤ)).toNat

end

end A050164.P17434655399596119169

/-!
# A050165: Triangle read by rows: T(n,k) = M(2n+1,k,-1), 0 <= k <= n, n >= 0, array M as in A050144.

The programs for A050165, the canonical program `A050165.P1175507688080023375` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050165 has offset 0).

The definition of A050165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050165.P10119949616659972534

`2*A062344(n)-A122366(n)`
-/

namespace A050165.P10119949616659972534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062344 n - A122366 n

end

end A050165.P10119949616659972534

namespace A050165

/-- `2*A062344(n)-A122366(n)` -/
def P10119949616659972534.Spec : Prop :=
  ∀ n, P10119949616659972534.a n = A050165 n

end A050165

/-! ## A050165.P14867342613854619044

`A039599(∑[char[∑[n]]]²-(n+1))`
-/

namespace A050165.P14867342613854619044
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A050165.P14867342613854619044

namespace A050165

/-- `A039599(∑[char[∑[n]]]²-(n+1))` -/
def P14867342613854619044.Spec : Prop :=
  ∀ n, P14867342613854619044.a n = A050165 n

end A050165

/-! ## A050165.P18396977617092721436

`A039599(A061579(n))^(char[∑[n]]+1)`
-/

namespace A050165.P18396977617092721436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A061579 n).toNat ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A050165.P18396977617092721436

namespace A050165

/-- `A039599(A061579(n))^(char[∑[n]]+1)` -/
def P18396977617092721436.Spec : Prop :=
  ∀ n, P18396977617092721436.a n = A050165 n

end A050165

/-! ## A050165.P1175507688080023375

`A008315(A061885(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050165

/-- `A008315(A061885(n))` -/
def P1175507688080023375.Spec : Prop :=
  ∀ n, P1175507688080023375.a n = A050165 n

theorem P1175507688080023375.correct : P1175507688080023375.Spec := by
  intro n
  simp only [A050165]

end A050165

/-! ## A050165.P5919588243384662542

`A008315(eq[1, A118175(n)])`
-/

namespace A050165.P5919588243384662542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050165.P5919588243384662542

namespace A050165

/-- `A008315(eq[1, A118175(n)])` -/
def P5919588243384662542.Spec : Prop :=
  ∀ n, P5919588243384662542.a n = A050165 n

end A050165

/-! ## A050165.P13817770472924212930

`A008315(A057944(n)+n)`
-/

namespace A050165.P13817770472924212930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A057944 n + (n : ℤ)).toNat

end

end A050165.P13817770472924212930

namespace A050165

/-- `A008315(A057944(n)+n)` -/
def P13817770472924212930.Spec : Prop :=
  ∀ n, P13817770472924212930.a n = A050165 n

end A050165

/-! ## A050165.P10185085053633305717

`A008315(2*n-A002262(n))`
-/

namespace A050165.P10185085053633305717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((2 * n : ℤ) - A002262 n).toNat

end

end A050165.P10185085053633305717

namespace A050165

/-- `A008315(2*n-A002262(n))` -/
def P10185085053633305717.Spec : Prop :=
  ∀ n, P10185085053633305717.a n = A050165 n

end A050165

/-! ## A050165.P1409894622317067654

`A008315(n-A002262(n)+n)`
-/

namespace A050165.P1409894622317067654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A050165.P1409894622317067654

namespace A050165

/-- `A008315(n-A002262(n)+n)` -/
def P1409894622317067654.Spec : Prop :=
  ∀ n, P1409894622317067654.a n = A050165 n

end A050165

/-! ## A050165.P10158449068937082702

`A008315(n-(A002262(n)-n))`
-/

namespace A050165.P10158449068937082702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A050165.P10158449068937082702

namespace A050165

/-- `A008315(n-(A002262(n)-n))` -/
def P10158449068937082702.Spec : Prop :=
  ∀ n, P10158449068937082702.a n = A050165 n

end A050165

/-! ## A050165.P5205357042296945829

`A008315(2*n+1-A002260(n+1))`
-/

namespace A050165.P5205357042296945829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((2 * n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A050165.P5205357042296945829

namespace A050165

/-- `A008315(2*n+1-A002260(n+1))` -/
def P5205357042296945829.Spec : Prop :=
  ∀ n, P5205357042296945829.a n = A050165 n

end A050165

/-! ## A050165.P17108995174173330754

`A008315(n-A002260(n+1)+n+1)`
-/

namespace A050165.P17108995174173330754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((n : ℤ) - A002260 (n + 1) + (n + 1 : ℤ)).toNat

end

end A050165.P17108995174173330754

namespace A050165

/-- `A008315(n-A002260(n+1)+n+1)` -/
def P17108995174173330754.Spec : Prop :=
  ∀ n, P17108995174173330754.a n = A050165 n

end A050165

/-! ## A050165.P9889521510446874758

`A080233(A292564(n))`
-/

namespace A050165.P9889521510446874758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A292564 n).toNat

end

end A050165.P9889521510446874758

namespace A050165

/-- `A080233(A292564(n))` -/
def P9889521510446874758.Spec : Prop :=
  ∀ n, P9889521510446874758.a n = A050165 n

end A050165

/-! ## A050165.P14120898089927311765

`A052173(lt[A052176(n+1), A052173(n)])`
-/

namespace A050165.P14120898089927311765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050165.P14120898089927311765

namespace A050165

/-- `A052173(lt[A052176(n+1), A052173(n)])` -/
def P14120898089927311765.Spec : Prop :=
  ∀ n, P14120898089927311765.a n = A050165 n

end A050165

/-! ## A050165.P10154755275568186558

`A052173(eq[A052173(n+1), A057212(n+2)])`
-/

namespace A050165.P10154755275568186558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050165.P10154755275568186558

namespace A050165

/-- `A052173(eq[A052173(n+1), A057212(n+2)])` -/
def P10154755275568186558.Spec : Prop :=
  ∀ n, P10154755275568186558.a n = A050165 n

end A050165

/-!
# A050166: Triangle T(n,k) = M(2n,k,-1), with 0 <= k <= n, n >= 0, and array M is defined in A050144.

The programs for A050166, the canonical program `A050166.P15176177781290940153` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050166 has offset 0).

The definition of A050166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050166.P15176177781290940153

`A039598(A061579(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A050166

/-- `A039598(A061579(n))` -/
def P15176177781290940153.Spec : Prop :=
  ∀ n, P15176177781290940153.a n = A050166 n

theorem P15176177781290940153.correct : P15176177781290940153.Spec := by
  intro n
  simp only [A050166]

end A050166

/-! ## A050166.P350579262143432938

`A039598(A002024(n+1)²-(n+1))`
-/

namespace A050166.P350579262143432938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A050166.P350579262143432938

namespace A050166

/-- `A039598(A002024(n+1)²-(n+1))` -/
def P350579262143432938.Spec : Prop :=
  ∀ n, P350579262143432938.a n = A050166 n

end A050166

/-! ## A050166.P13310098401084495691

`A039598(A002024(n+1)^2-(n+1))`
-/

namespace A050166.P13310098401084495691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A050166.P13310098401084495691

namespace A050166

/-- `A039598(A002024(n+1)^2-(n+1))` -/
def P13310098401084495691.Spec : Prop :=
  ∀ n, P13310098401084495691.a n = A050166 n

end A050166

/-! ## A050166.P14132144646906843425

`A039598(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A050166.P14132144646906843425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A050166.P14132144646906843425

namespace A050166

/-- `A039598(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P14132144646906843425.Spec : Prop :=
  ∀ n, P14132144646906843425.a n = A050166 n

end A050166

/-! ## A050166.P3991738162965586002

`A008315(A064801(n+1))`
-/

namespace A050166.P3991738162965586002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A064801 (n + 1)).toNat

end

end A050166.P3991738162965586002

namespace A050166

/-- `A008315(A064801(n+1))` -/
def P3991738162965586002.Spec : Prop :=
  ∀ n, P3991738162965586002.a n = A050166 n

end A050166

/-! ## A050166.P8108347122484429416

`A008315(eq[0, A118175(n)])`
-/

namespace A050166.P8108347122484429416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050166.P8108347122484429416

namespace A050166

/-- `A008315(eq[0, A118175(n)])` -/
def P8108347122484429416.Spec : Prop :=
  ∀ n, P8108347122484429416.a n = A050166 n

end A050166

/-! ## A050166.P16385005009151976449

`A008315(A004736(n+1)+2*n)`
-/

namespace A050166.P16385005009151976449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A004736 (n + 1) + (2 * n : ℤ)).toNat

end

end A050166.P16385005009151976449

namespace A050166

/-- `A008315(A004736(n+1)+2*n)` -/
def P16385005009151976449.Spec : Prop :=
  ∀ n, P16385005009151976449.a n = A050166 n

end A050166

/-! ## A050166.P16900763356846454788

`A008315(A004736(n+1)+n+n)`
-/

namespace A050166.P16900763356846454788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A004736 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A050166.P16900763356846454788

namespace A050166

/-- `A008315(A004736(n+1)+n+n)` -/
def P16900763356846454788.Spec : Prop :=
  ∀ n, P16900763356846454788.a n = A050166 n

end A050166

/-! ## A050166.P9585454832290552969

`A055450(A292564(n))`
-/

namespace A050166.P9585454832290552969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A292564 n).toNat

end

end A050166.P9585454832290552969

namespace A050166

/-- `A055450(A292564(n))` -/
def P9585454832290552969.Spec : Prop :=
  ∀ n, P9585454832290552969.a n = A050166 n

end A050166

/-! ## A050166.P8100089871921606611

`A052173(lt[A052176(n), A052173(n)])`
-/

namespace A050166.P8100089871921606611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050166.P8100089871921606611

namespace A050166

/-- `A052173(lt[A052176(n), A052173(n)])` -/
def P8100089871921606611.Spec : Prop :=
  ∀ n, P8100089871921606611.a n = A050166 n

end A050166

/-! ## A050166.P12187521341720333398

`A052173(eq[A052173(n+1), A300324(n+2)])`
-/

namespace A050166.P12187521341720333398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050166.P12187521341720333398

namespace A050166

/-- `A052173(eq[A052173(n+1), A300324(n+2)])` -/
def P12187521341720333398.Spec : Prop :=
  ∀ n, P12187521341720333398.a n = A050166 n

end A050166

/-! ## A050166.P5467262118315168505

`A089503(n+1)/A181511(n+1)`
-/

namespace A050166.P5467262118315168505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089503 (n + 1) : ℚ) / (A181511 (n + 1) : ℚ)

end

end A050166.P5467262118315168505

namespace A050166

/-- `A089503(n+1)/A181511(n+1)` -/
def P5467262118315168505.Spec : Prop :=
  ∀ n, P5467262118315168505.a n = (A050166 n : ℚ)

end A050166

/-!
# A050167: T(n,k)=M(n,k,f(n,k)), 0<=k<=n, n >= 0, array M as in A050144 and f(n,k)=least number t for which M(n,k,t) is not 0.

The programs for A050167, there is no canonical definition to state claims against.
-/

/-! ## A050167.P7717845273613096289

`A009766(A379777(n))`
-/

namespace A050167.P7717845273613096289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A379777 n).toNat

end

end A050167.P7717845273613096289

/-! ## A050167.P14582496539703037281

`A047050(n)/A318809(A046064(n+1))`
-/

namespace A050167.P14582496539703037281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047050 n : ℚ) / (A318809 (A046064 (n + 1)).toNat : ℚ)

end

end A050167.P14582496539703037281

/-! ## A050167.P25616567467513798

`A047050(n)/A043286(Δ[A005496(n)])`
-/

namespace A050167.P25616567467513798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047050 n : ℚ) / (A043286 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A050167.P25616567467513798

/-! ## A050167.P13321446086971282438

`A047050(n)/A124778(A083245(n+1))`
-/

namespace A050167.P13321446086971282438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047050 n : ℚ) / (A124778 (A083245 (n + 1)).toNat : ℚ)

end

end A050167.P13321446086971282438

/-! ## A050167.P5453771594585394537

`gcd(Δ[A205958(n)], A047050(n))`
-/

namespace A050167.P5453771594585394537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A047050 n)

end

end A050167.P5453771594585394537

/-!
# A050168: a(0) = 1; for n > 0, a(n) = binomial(n, floor(n/2)) + binomial(n-1, floor(n/2)).

The programs for A050168, the canonical program `A050168.P2561838391192846284` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050168 has offset 0).

The definition of A050168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050168.P2561838391192846284

`A026010(n-2)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050168

/-- `A026010(n-2)+a(n-1)` -/
def P2561838391192846284.Spec : Prop :=
  ∀ n, P2561838391192846284.a n = A050168 n

theorem P2561838391192846284.correct : P2561838391192846284.Spec := by
  intro n
  simp only [A050168]

end A050168

/-! ## A050168.P14584443917238652596

`A063886(n)+Δ[A210736(n)]`
-/

namespace A050168.P14584443917238652596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n + (f1 (n + 1) - f1 n)

end

end A050168.P14584443917238652596

namespace A050168

/-- `A063886(n)+Δ[A210736(n)]` -/
def P14584443917238652596.Spec : Prop :=
  ∀ n, P14584443917238652596.a n = A050168 n

end A050168

/-! ## A050168.P9601098900049084318

`abs(Δ[A126869(n)-A210736(n)])`
-/

namespace A050168.P9601098900049084318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A050168.P9601098900049084318

namespace A050168

/-- `abs(Δ[A126869(n)-A210736(n)])` -/
def P9601098900049084318.Spec : Prop :=
  ∀ n, P9601098900049084318.a n = A050168 n

end A050168

/-! ## A050168.P8481970720828591911

`floor(A001405(n)+A063886(n)/2)`
-/

namespace A050168.P8481970720828591911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 n : ℚ) + (A063886 n : ℚ) / 2⌋

end

end A050168.P8481970720828591911

namespace A050168

/-- `floor(A001405(n)+A063886(n)/2)` -/
def P8481970720828591911.Spec : Prop :=
  ∀ n, P8481970720828591911.a n = A050168 n

end A050168

/-! ## A050168.P11083170736085210462

`A001405(n)+A063886(n)-A210736(n)`
-/

namespace A050168.P11083170736085210462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A063886 n - A210736 n)

end

end A050168.P11083170736085210462

namespace A050168

/-- `A001405(n)+A063886(n)-A210736(n)` -/
def P11083170736085210462.Spec : Prop :=
  ∀ n, P11083170736085210462.a n = A050168 n

end A050168

/-! ## A050168.P16738301758980387759

`A210736(n+1)+A210736(n)-A000007(n)`
-/

namespace A050168.P16738301758980387759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + (A210736 n - A000007 n)

end

end A050168.P16738301758980387759

namespace A050168

/-- `A210736(n+1)+A210736(n)-A000007(n)` -/
def P16738301758980387759.Spec : Prop :=
  ∀ n, P16738301758980387759.a n = A050168 n

end A050168

/-! ## A050168.P18289201066723417658

`∪[A029651(n), A051960(n)]`
-/

namespace A050168.P18289201066723417658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050168.P18289201066723417658

namespace A050168

/-- `∪[A029651(n), A051960(n)]` -/
def P18289201066723417658.Spec : Prop :=
  ∀ n, (P18289201066723417658.a n : ℤ) = A050168 n

end A050168

/-! ## A050168.P15080650367757883963

`floor((A063886(n+1)+A063886(n))/2)`
-/

namespace A050168.P15080650367757883963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063886 (n + 1) + A063886 n : ℚ) / 2⌋

end

end A050168.P15080650367757883963

namespace A050168

/-- `floor((A063886(n+1)+A063886(n))/2)` -/
def P15080650367757883963.Spec : Prop :=
  ∀ n, P15080650367757883963.a n = A050168 n

end A050168

/-! ## A050168.P10212508050296462195

`A000079(n)+A340568(n)-A340567(n)`
-/

namespace A050168.P10212508050296462195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A340568 n - A340567 n)

end

end A050168.P10212508050296462195

namespace A050168

/-- `A000079(n)+A340568(n)-A340567(n)` -/
def P10212508050296462195.Spec : Prop :=
  ∀ n, P10212508050296462195.a n = A050168 n

end A050168

/-! ## A050168.P5724566453660940288

`A393138(∑[n]+1)`
-/

namespace A050168.P5724566453660940288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393138 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050168.P5724566453660940288

namespace A050168

/-- `A393138(∑[n]+1)` -/
def P5724566453660940288.Spec : Prop :=
  ∀ n, P5724566453660940288.a n = A050168 n

end A050168

/-! ## A050168.P10229705695300283187

`A029653(∑[or(1, n)]-1)`
-/

namespace A050168.P10229705695300283187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A050168.P10229705695300283187

namespace A050168

/-- `A029653(∑[or(1, n)]-1)` -/
def P10229705695300283187.Spec : Prop :=
  ∀ n, P10229705695300283187.a n = A050168 n

end A050168

/-! ## A050168.P18156836528258363752

`A029653(record[A245300(n)])`
-/

namespace A050168.P18156836528258363752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050168.P18156836528258363752

namespace A050168

/-- `A029653(record[A245300(n)])` -/
def P18156836528258363752.Spec : Prop :=
  ∀ n, P18156836528258363752.a n = A050168 n

end A050168

/-! ## A050168.P13204378454751788906

`A029635(A080476(n+1))`
-/

namespace A050168.P13204378454751788906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A080476 (n + 1)).toNat

end

end A050168.P13204378454751788906

namespace A050168

/-- `A029635(A080476(n+1))` -/
def P13204378454751788906.Spec : Prop :=
  ∀ n, P13204378454751788906.a n = A050168 n

end A050168

/-! ## A050168.P15898537808306218805

`A029653(A007590(n)+n)`
-/

namespace A050168.P15898537808306218805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A007590 n + (n : ℤ)).toNat

end

end A050168.P15898537808306218805

namespace A050168

/-- `A029653(A007590(n)+n)` -/
def P15898537808306218805.Spec : Prop :=
  ∀ n, P15898537808306218805.a n = A050168 n

end A050168

/-! ## A050168.P7726157287450658562

`A029653(∑[A063196(n+1)])`
-/

namespace A050168.P7726157287450658562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050168.P7726157287450658562

namespace A050168

/-- `A029653(∑[A063196(n+1)])` -/
def P7726157287450658562.Spec : Prop :=
  ∀ n, P7726157287450658562.a n = A050168 n

end A050168

/-! ## A050168.P6161923388361571540

`A029653(∑[A109613(n)]-1)`
-/

namespace A050168.P6161923388361571540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A050168.P6161923388361571540

namespace A050168

/-- `A029653(∑[A109613(n)]-1)` -/
def P6161923388361571540.Spec : Prop :=
  ∀ n, P6161923388361571540.a n = A050168 n

end A050168

/-! ## A050168.P12323730611508039160

`A029653(A004526(n)+∑[n])`
-/

namespace A050168.P12323730611508039160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A050168.P12323730611508039160

namespace A050168

/-- `A029653(A004526(n)+∑[n])` -/
def P12323730611508039160.Spec : Prop :=
  ∀ n, P12323730611508039160.a n = A050168 n

end A050168

/-! ## A050168.P1262409379863056813

`A029653(A000982(n+1)-1)`
-/

namespace A050168.P1262409379863056813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A000982 (n + 1) - 1).toNat

end

end A050168.P1262409379863056813

namespace A050168

/-- `A029653(A000982(n+1)-1)` -/
def P1262409379863056813.Spec : Prop :=
  ∀ n, P1262409379863056813.a n = A050168 n

end A050168

/-! ## A050168.P10721379651531913026

`A029635(∑[and(1, A027642(n))+n])`
-/

namespace A050168.P10721379651531913026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027642 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050168.P10721379651531913026

namespace A050168

/-- `A029635(∑[and(1, A027642(n))+n])` -/
def P10721379651531913026.Spec : Prop :=
  ∀ n, P10721379651531913026.a n = A050168 n

end A050168

/-! ## A050168.P8582505058220792051

`A029653(2*A024206(n+1)-n)`
-/

namespace A050168.P8582505058220792051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (2 * A024206 (n + 1) - (n : ℤ)).toNat

end

end A050168.P8582505058220792051

namespace A050168

/-- `A029653(2*A024206(n+1)-n)` -/
def P8582505058220792051.Spec : Prop :=
  ∀ n, P8582505058220792051.a n = A050168 n

end A050168

/-!
# A050169: Triangle read by rows: T(n,k) = gcd(C(n,k), C(n,k-1)), n >= 1, 1 <= k <= n.

The programs for A050169, the canonical program `A050169.P236062353889344769` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050169 has offset 1).

The definition of A050169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050169.P236062353889344769

`gcd(A074909(n), A135278(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050169

/-- `gcd(A074909(n), A135278(n))` -/
def P236062353889344769.Spec : Prop :=
  ∀ n, (P236062353889344769.a n : ℤ) = A050169 (n + 1)

theorem P236062353889344769.correct : P236062353889344769.Spec := by
  intro n
  simp only [A050169, Nat.add_sub_cancel]

end A050169

/-! ## A050169.P15090167904233754528

`gcd(A153861(n), A193815(n))`
-/

namespace A050169.P15090167904233754528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153861 n) (A193815 n)

end

end A050169.P15090167904233754528

namespace A050169

/-- `gcd(A153861(n), A193815(n))` -/
def P15090167904233754528.Spec : Prop :=
  ∀ n, (P15090167904233754528.a n : ℤ) = A050169 (n + 1)

end A050169

/-! ## A050169.P3851557584648930825

`gcd(A184049(n), A214292(n))`
-/

namespace A050169.P3851557584648930825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184049 n) (A214292 n)

end

end A050169.P3851557584648930825

namespace A050169

/-- `gcd(A184049(n), A214292(n))` -/
def P3851557584648930825.Spec : Prop :=
  ∀ n, (P3851557584648930825.a n : ℤ) = A050169 (n + 1)

end A050169

/-! ## A050169.P641520590400332141

`A001263(n+1)/A161642(n)`
-/

namespace A050169.P641520590400332141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A161642 n : ℚ)

end

end A050169.P641520590400332141

namespace A050169

/-- `A001263(n+1)/A161642(n)` -/
def P641520590400332141.Spec : Prop :=
  ∀ n, P641520590400332141.a n = (A050169 (n + 1) : ℚ)

end A050169

/-! ## A050169.P3853897190153616128

`gcd(A124931(n+1), A227396(n))`
-/

namespace A050169.P3853897190153616128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124931 (n + 1)) (A227396 n)

end

end A050169.P3853897190153616128

namespace A050169

/-- `gcd(A124931(n+1), A227396(n))` -/
def P3853897190153616128.Spec : Prop :=
  ∀ n, (P3853897190153616128.a n : ℤ) = A050169 (n + 1)

end A050169

/-! ## A050169.P4977941703713206868

`A003506(n+1)/A003990(n+1)`
-/

namespace A050169.P4977941703713206868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (A003990 (n + 1) : ℚ)

end

end A050169.P4977941703713206868

namespace A050169

/-- `A003506(n+1)/A003990(n+1)` -/
def P4977941703713206868.Spec : Prop :=
  ∀ n, P4977941703713206868.a n = (A050169 (n + 1) : ℚ)

end A050169

/-! ## A050169.P4235597395900841367

`(A014430(n)+1)/A106448(n+1)`
-/

namespace A050169.P4235597395900841367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014430 n + 1 : ℚ) / (A106448 (n + 1) : ℚ)

end

end A050169.P4235597395900841367

namespace A050169

/-- `(A014430(n)+1)/A106448(n+1)` -/
def P4235597395900841367.Spec : Prop :=
  ∀ n, P4235597395900841367.a n = (A050169 (n + 1) : ℚ)

end A050169

/-! ## A050169.P15697461943194783694

`A014410(n+2)/A106448(n+1)`
-/

namespace A050169.P15697461943194783694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) : ℚ) / (A106448 (n + 1) : ℚ)

end

end A050169.P15697461943194783694

namespace A050169

/-- `A014410(n+2)/A106448(n+1)` -/
def P15697461943194783694.Spec : Prop :=
  ∀ n, P15697461943194783694.a n = (A050169 (n + 1) : ℚ)

end A050169

/-! ## A050169.P11747557249357684885

`A001263(n+1)*A003989(n+1)/A007318(n)`
-/

namespace A050169.P11747557249357684885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) * A003989 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A050169.P11747557249357684885

namespace A050169

/-- `A001263(n+1)*A003989(n+1)/A007318(n)` -/
def P11747557249357684885.Spec : Prop :=
  ∀ n, P11747557249357684885.a n = (A050169 (n + 1) : ℚ)

end A050169

/-! ## A050169.P8056690068661569081

`A135278(n)/A112543(n+1)`
-/

namespace A050169.P8056690068661569081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135278 n : ℚ) / (A112543 (n + 1) : ℚ)

end

end A050169.P8056690068661569081

namespace A050169

/-- `A135278(n)/A112543(n+1)` -/
def P8056690068661569081.Spec : Prop :=
  ∀ n, P8056690068661569081.a n = (A050169 (n + 1) : ℚ)

end A050169

/-! ## A050169.P8170797396871961400

`gcd(A014410(n+2), A049323(n))`
-/

namespace A050169.P8170797396871961400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014410 (n + 2)) (A049323 n)

end

end A050169.P8170797396871961400

namespace A050169

/-- `gcd(A014410(n+2), A049323(n))` -/
def P8170797396871961400.Spec : Prop :=
  ∀ n, (P8170797396871961400.a n : ℤ) = A050169 (n + 1)

end A050169

/-! ## A050169.P9613526980459724559

`gcd(A033842(n)+A014410(n+2), A033842(n))`
-/

namespace A050169.P9613526980459724559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033842 n + A014410 (n + 2)) (A033842 n)

end

end A050169.P9613526980459724559

namespace A050169

/-- `gcd(A033842(n)+A014410(n+2), A033842(n))` -/
def P9613526980459724559.Spec : Prop :=
  ∀ n, (P9613526980459724559.a n : ℤ) = A050169 (n + 1)

end A050169

/-! ## A050169.P15506997963866862237

`A074909(n)/A112544(n+1)`
-/

namespace A050169.P15506997963866862237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (A112544 (n + 1) : ℚ)

end

end A050169.P15506997963866862237

namespace A050169

/-- `A074909(n)/A112544(n+1)` -/
def P15506997963866862237.Spec : Prop :=
  ∀ n, P15506997963866862237.a n = (A050169 (n + 1) : ℚ)

end A050169

/-!
# A050172: Numbers k such that b(k) < b(k+1), where b = A050170.

The programs for A050172, there is no canonical definition to state claims against.
-/

/-! ## A050172.P16490966310236091071

`eq[char[A050173(n+1)], A000007(n)]`
-/

namespace A050172.P16490966310236091071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050172.P16490966310236091071

/-! ## A050172.P9987546035956228800

`eq[char[A050173(n+1)], A000038(n)]`
-/

namespace A050172.P9987546035956228800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050172.P9987546035956228800

/-! ## A050172.P7863336335006463941

`lt[A050170(A028310(n)), A050170(n+1)]`
-/

namespace A050172.P7863336335006463941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050170 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050172.P7863336335006463941

/-! ## A050172.P7025317170852662038

`eq[0, round((n+1)/A050171(A050170(n+1)+1))]`
-/

namespace A050172.P7025317170852662038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A050171 (A050170 (n + 1) + 1).toNat : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050172.P7025317170852662038

/-! ## A050172.P2366276332651982873

`record[A028310(n)%A050171(A050170(n+1)+1)]`
-/

namespace A050172.P2366276332651982873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A050171 (A050170 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050172.P2366276332651982873

/-! ## A050172.P6427766614684081806

`eq[char[A050173(n+1)], A218031(2*n)]`
-/

namespace A050172.P6427766614684081806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050173 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218031 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050172.P6427766614684081806

/-!
# A050173: Numbers k such that A050170(k) > A050170(k+1).

The programs for A050173, there is no canonical definition to state claims against.
-/

/-! ## A050173.P15416076606563141770

`eq[char[A050172(n+1)], A000007(n)]`
-/

namespace A050173.P15416076606563141770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050173.P15416076606563141770

/-! ## A050173.P8335266770354646456

`eq[char[A050172(n+1)], A000038(n)]`
-/

namespace A050173.P8335266770354646456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050173.P8335266770354646456

/-! ## A050173.P12778666810408335400

`eq[char[A050172(n+1)], A130706(n)]`
-/

namespace A050173.P12778666810408335400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050173.P12778666810408335400

/-! ## A050173.P3510118819396465540

`eq[A057428(n)+1, char[A050172(n+1)]]`
-/

namespace A050173.P3510118819396465540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050172 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050173.P3510118819396465540

/-! ## A050173.P5199223453523522090

`lt[A050170(n+1), A050170(A028310(n))]`
-/

namespace A050173.P5199223453523522090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050170 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050173.P5199223453523522090

/-! ## A050173.P1797023121048626652

`lt[A050171(A050170(n+1)+1), n]`
-/

namespace A050173.P1797023121048626652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050171 (A050170 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050173.P1797023121048626652

/-!
# A050174: T(n,k) = S(n,k,k-2), 1<=k<=n-2, n >= 3, array S as in A050157.

The programs for A050174, the canonical program `A050174.P6005188988390205809` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050174 has offset 3).

The definition of A050174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050174.P6005188988390205809

`A014430(A007401(n+1))-A183110(A007401(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A050174

/-- `A014430(A007401(n+1))-A183110(A007401(n+1))` -/
def P6005188988390205809.Spec : Prop :=
  ∀ n, P6005188988390205809.a n = A050174 (n + 3)

theorem P6005188988390205809.correct : P6005188988390205809.Spec := by
  intro n
  simp only [A050174, Nat.add_sub_cancel]

end A050174

/-! ## A050174.P5893605822262393405

`A014430(A007401(n+1))-A183110(A080036(n))`
-/

namespace A050174.P5893605822262393405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A007401 (n + 1)).toNat - A183110 (A080036 n).toNat

end

end A050174.P5893605822262393405

namespace A050174

/-- `A014430(A007401(n+1))-A183110(A080036(n))` -/
def P5893605822262393405.Spec : Prop :=
  ∀ n, P5893605822262393405.a n = A050174 (n + 3)

end A050174

/-! ## A050174.P9558569878341987513

`A115126(n+1)-A326152(A210472(2*n))`
-/

namespace A050174.P9558569878341987513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115126 (n + 1) - A326152 (A210472 (2 * n)).toNat

end

end A050174.P9558569878341987513

namespace A050174

/-- `A115126(n+1)-A326152(A210472(2*n))` -/
def P9558569878341987513.Spec : Prop :=
  ∀ n, P9558569878341987513.a n = A050174 (n + 3)

end A050174

/-! ## A050174.P667748867890675711

`xor(A208912(n+1), A228495(A030078(n+1)))`
-/

namespace A050174.P667748867890675711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A208912 (n + 1)) (A228495 (A030078 (n + 1)).toNat)

end

end A050174.P667748867890675711

namespace A050174

/-- `xor(A208912(n+1), A228495(A030078(n+1)))` -/
def P667748867890675711.Spec : Prop :=
  ∀ n, P667748867890675711.a n = A050174 (n + 3)

end A050174

/-!
# A050175: T(n,k)=S(n,k,k-3), 2<=k<=n-3, n >= 5, array S as in A050157.

The programs for A050175, there is no canonical definition to state claims against.
-/

/-! ## A050175.P15656603515767013732

`A009766(lt[A128308(n+1), A145813(n+1)])`
-/

namespace A050175.P15656603515767013732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050175.P15656603515767013732

/-! ## A050175.P14937121274980662673

`A130020(lt[A383095(3*n+2), A054142(n)])`
-/

namespace A050175.P14937121274980662673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383095 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050175.P14937121274980662673

/-! ## A050175.P13058433892141134753

`A009766(A297129(n+1)%A046002(3*n+1))`
-/

namespace A050175.P13058433892141134753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (Int.tmod (A297129 (n + 1)) (A046002 (3 * n + 1))).toNat

end

end A050175.P13058433892141134753

/-! ## A050175.P6712376892235379472

`A115126(lt[A115097(3*n+4), A115114(n+1)])`
-/

namespace A050175.P6712376892235379472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115097 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115126 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050175.P6712376892235379472

/-!
# A050176: T(n,k) = M0(n+1,k,f(n,k)), where M0(p,q,r) is the number of upright paths from (0,0) to (1,0) to (p,p-q) that meet the line y = x-r and do not rise above it and f(n,k) is the least t such that M0(n+1,k,f) is not 0.

The programs for A050176, there is no canonical definition to state claims against.
-/

/-! ## A050176.P15947704822836703874

`A047072(comp[floor(n²/2)])`
-/

namespace A050176.P15947704822836703874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A050176.P15947704822836703874

/-! ## A050176.P435471778971593812

`abs(A008482(comp[floor(n²/2)]))`
-/

namespace A050176.P435471778971593812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008482 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A050176.P435471778971593812

/-! ## A050176.P7640062985504607629

`abs(A037012(comp[floor(n²/2)]))`
-/

namespace A050176.P7640062985504607629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A050176.P7640062985504607629

/-! ## A050176.P8744577354109419697

`A008315(A344646(n))`
-/

namespace A050176.P8744577354109419697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A344646 n).toNat

end

end A050176.P8744577354109419697

/-! ## A050176.P9759709564188267374

`A008315(A128282(n)-1)`
-/

namespace A050176.P9759709564188267374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A128282 n - 1).toNat

end

end A050176.P9759709564188267374

/-! ## A050176.P8314356064138937984

`abs(A112466(comp[A007590(n)]))`
-/

namespace A050176.P8314356064138937984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112466 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A050176.P8314356064138937984

/-! ## A050176.P9102080342304753936

`abs(A112467(A182834(n+1)))`
-/

namespace A050176.P9102080342304753936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112467 (A182834 (n + 1)).toNat|

end

end A050176.P9102080342304753936

/-! ## A050176.P12884647653272950644

`abs(A112467(A183572(n+1)))`
-/

namespace A050176.P12884647653272950644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112467 (A183572 (n + 1)).toNat|

end

end A050176.P12884647653272950644

/-! ## A050176.P3102743184887939334

`A028326(n)-A007318(A182834(n+1))`
-/

namespace A050176.P3102743184887939334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A007318 (A182834 (n + 1)).toNat

end

end A050176.P3102743184887939334

/-! ## A050176.P18154121899993502119

`A028326(n)-A007318(A183572(n+1))`
-/

namespace A050176.P18154121899993502119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A007318 (A183572 (n + 1)).toNat

end

end A050176.P18154121899993502119

/-!
# A050177: T(n,k)=M0(n,k,f(n,k)), where M0 is given by A050176 and f(n,k) is the next-to-least t for which M0(n,k,t) is not 0.

The programs for A050177, there is no canonical definition to state claims against.
-/

/-! ## A050177.P6364449810946472313

`A047072(lt[6, A133825(2*n+1)])`
-/

namespace A050177.P6364449810946472313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050177.P6364449810946472313

/-! ## A050177.P14304429748995649842

`A008315(A128282(n)+A002024(n+1))`
-/

namespace A050177.P14304429748995649842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A128282 n + A002024 (n + 1)).toNat

end

end A050177.P14304429748995649842

/-! ## A050177.P3415647344482302641

`A050176(A113909(n+1)+1-n)`
-/

namespace A050177.P3415647344482302641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (A113909 (n + 1) + (1 - (n : ℤ))).toNat

end

end A050177.P3415647344482302641

/-! ## A050177.P7381497619172534371

`A072088(A013580(n)-A180472(n))`
-/

namespace A050177.P7381497619172534371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A013580 n - A180472 n).toNat

end

end A050177.P7381497619172534371

/-! ## A050177.P5062258556610031308

`A157477(A054110(n))`
-/

namespace A050177.P5062258556610031308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A054110 n).toNat

end

end A050177.P5062258556610031308

/-!
# A050178: T(n,k)=M0(n,k,f(n,k)), where M0 is given by A050176 and f(n,k) is the 3rd-from-least t for which M0(n,k,t) is not 0.

The programs for A050178, there is no canonical definition to state claims against.
-/

/-! ## A050178.P7686044931720306358

`A050177(A278818(A278818(n))+3)`
-/

namespace A050178.P7686044931720306358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050177 (A278818 (A278818 n).toNat + 3).toNat

end

end A050178.P7686044931720306358

/-! ## A050178.P2138269740441218569

`A173118(A010894(n)!*A182834(n+1))`
-/

namespace A050178.P2138269740441218569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 ((Nat.factorial (A010894 (n + 21)).toNat : ℤ) * A182834 (n + 1)).toNat

end

end A050178.P2138269740441218569

/-! ## A050178.P12423788951600688439

`A173118(A010894(n)!*A183572(n+1))`
-/

namespace A050178.P12423788951600688439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 ((Nat.factorial (A010894 (n + 21)).toNat : ℤ) * A183572 (n + 1)).toNat

end

end A050178.P12423788951600688439

/-! ## A050178.P16729554081576329420

`A173118(A182834(n+1)^A010894(n)!)`
-/

namespace A050178.P16729554081576329420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 (A182834 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat).toNat

end

end A050178.P16729554081576329420

/-! ## A050178.P15344376659877549670

`A173118(A183572(n+1)^A010894(n)!)`
-/

namespace A050178.P15344376659877549670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 (A183572 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat).toNat

end

end A050178.P15344376659877549670

/-!
# A050180: Numbers m such that prime(m) + Fibonacci(m) is prime.

The programs for A050180, there is no canonical definition to state claims against.
-/

/-! ## A050180.P3001170843654747249

`A000203(n)*A095701(a(n-1))` with `a(0)=1`
-/

namespace A050180.P3001170843654747249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 n * A095701 (a (n - 1)).toNat

end

end A050180.P3001170843654747249

/-! ## A050180.P14126317968292114803

`A261957(eq[A038137(n), A328026(n+2)])`
-/

namespace A050180.P14126317968292114803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261957 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050180.P14126317968292114803

/-! ## A050180.P13880419553109230569

`A261957(eq[A057217(n+1), A073133(n+1)])`
-/

namespace A050180.P13880419553109230569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261957 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050180.P13880419553109230569

/-!
# A050181: T(2n+3, n), array T as in A051168; a count of Lyndon words.

The programs for A050181, there is no canonical definition to state claims against.
-/

/-! ## A050181.P15503360673775371208

`A001895(n+1)-A000207(n+1)`
-/

namespace A050181.P15503360673775371208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001895 (n + 1) - A000207 (n + 1)

end

end A050181.P15503360673775371208

/-! ## A050181.P17236335370425461341

`A051196(n)/(2*n+3)`
-/

namespace A050181.P17236335370425461341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051196 n : ℚ) / (2 * n + 3 : ℚ)

end

end A050181.P17236335370425461341

/-! ## A050181.P17405530185407275114

`A051168(2*(n+1)*(n+3))`
-/

namespace A050181.P17405530185407275114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (2 * ((n + 1) * (n + 3)))

end

end A050181.P17405530185407275114

/-! ## A050181.P12767170860118761689

`A001895(n+1)-A169808(∑[n])`
-/

namespace A050181.P12767170860118761689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001895 (n + 1) - A169808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050181.P12767170860118761689

/-! ## A050181.P12964512413993779631

`A001895(n+1)-A295260(∑[n+1])`
-/

namespace A050181.P12964512413993779631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001895 (n + 1) - A295260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050181.P12964512413993779631

/-!
# A050182: a(n) = T(2*n+4, n), array T as in A051168 (a count of Lyndon words).

The programs for A050182, the canonical program `A050182.P14663664458586946178` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050182 has offset 0).

The definition of A050182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050182.P1881151986806391055

`A003446(n+2)-A000207(n+2)`
-/

namespace A050182.P1881151986806391055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003446 (n + 2) - A000207 (n + 2)

end

end A050182.P1881151986806391055

namespace A050182

/-- `A003446(n+2)-A000207(n+2)` -/
def P1881151986806391055.Spec : Prop :=
  ∀ n, P1881151986806391055.a n = A050182 n

end A050182

/-! ## A050182.P14663664458586946178

`A275206(n+2)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050182

/-- `A275206(n+2)/2` -/
def P14663664458586946178.Spec : Prop :=
  ∀ n, P14663664458586946178.a n = (A050182 n : ℚ)

end A050182

/-! ## A050182.P15115312851656920037

`A007223(n+2)-A006078(n+2)`
-/

namespace A050182.P15115312851656920037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007223 (n + 2) - A006078 (n + 2)

end

end A050182.P15115312851656920037

namespace A050182

/-- `A007223(n+2)-A006078(n+2)` -/
def P15115312851656920037.Spec : Prop :=
  ∀ n, P15115312851656920037.a n = A050182 n

end A050182

/-! ## A050182.P4459445052278049554

`A006078(n+2)-A126120(n+2)`
-/

namespace A050182.P4459445052278049554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006078 (n + 2) - A126120 (n + 2)

end

end A050182.P4459445052278049554

namespace A050182

/-- `A006078(n+2)-A126120(n+2)` -/
def P4459445052278049554.Spec : Prop :=
  ∀ n, P4459445052278049554.a n = A050182 n

end A050182

/-! ## A050182.P12755966324633138183

`A006078(n+2)-A097331(n+3)`
-/

namespace A050182.P12755966324633138183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006078 (n + 2) - A097331 (n + 3)

end

end A050182.P12755966324633138183

namespace A050182

/-- `A006078(n+2)-A097331(n+3)` -/
def P12755966324633138183.Spec : Prop :=
  ∀ n, P12755966324633138183.a n = A050182 n

end A050182

/-! ## A050182.P6190016865200337009

`A000913(n+1)+A006078(n+2)-A220881(n+4)`
-/

namespace A050182.P6190016865200337009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000913 (n + 1) + (A006078 (n + 2) - A220881 (n + 4))

end

end A050182.P6190016865200337009

namespace A050182

/-- `A000913(n+1)+A006078(n+2)-A220881(n+4)` -/
def P6190016865200337009.Spec : Prop :=
  ∀ n, P6190016865200337009.a n = A050182 n

end A050182

/-! ## A050182.P9539417592433331227

`(A002057(n)-A007223(n+2))/2`
-/

namespace A050182.P9539417592433331227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002057 n - A007223 (n + 2) : ℚ) / 2

end

end A050182.P9539417592433331227

namespace A050182

/-- `(A002057(n)-A007223(n+2))/2` -/
def P9539417592433331227.Spec : Prop :=
  ∀ n, P9539417592433331227.a n = (A050182 n : ℚ)

end A050182

/-! ## A050182.P6900603448506638806

`A051197(n)/(2*(n+2))`
-/

namespace A050182.P6900603448506638806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051197 n : ℚ) / (2 * (n + 2) : ℚ)

end

end A050182.P6900603448506638806

namespace A050182

/-- `A051197(n)/(2*(n+2))` -/
def P6900603448506638806.Spec : Prop :=
  ∀ n, P6900603448506638806.a n = (A050182 n : ℚ)

end A050182

/-! ## A050182.P7954241318579469688

`A051168(A090288(n+1))`
-/

namespace A050182.P7954241318579469688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A090288 (n + 1)).toNat

end

end A050182.P7954241318579469688

namespace A050182

/-- `A051168(A090288(n+1))` -/
def P7954241318579469688.Spec : Prop :=
  ∀ n, P7954241318579469688.a n = A050182 n

end A050182

/-! ## A050182.P17679316897131829085

`A051168(A016825(∑[n+2]))`
-/

namespace A050182.P17679316897131829085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A050182.P17679316897131829085

namespace A050182

/-- `A051168(A016825(∑[n+2]))` -/
def P17679316897131829085.Spec : Prop :=
  ∀ n, P17679316897131829085.a n = A050182 n

end A050182

/-!
# A050183: T(2n+5,n), array T as in A051168; a count of Lyndon words.

The programs for A050183, there is no canonical definition to state claims against.
-/

/-! ## A050183.P12303681014948649719

`A051198(n)/(2*n+5)`
-/

namespace A050183.P12303681014948649719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051198 n : ℚ) / (2 * n + 5 : ℚ)

end

end A050183.P12303681014948649719

/-! ## A050183.P12128645215003555329

`A051168(A268581(n+1))`
-/

namespace A050183.P12128645215003555329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A268581 (n + 1)).toNat

end

end A050183.P12128645215003555329

/-! ## A050183.P2609267075780503507

`A051168(A004280((n+3)²))`
-/

namespace A050183.P2609267075780503507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A004280 ((n + 3) ^ 2)).toNat

end

end A050183.P2609267075780503507

/-! ## A050183.P7304821275354439043

`A051168(A004281((n+3)²))`
-/

namespace A050183.P7304821275354439043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A004281 ((n + 3) ^ 2)).toNat

end

end A050183.P7304821275354439043

/-! ## A050183.P17752608499114973500

`A051168(A103517((n+3)²))`
-/

namespace A050183.P17752608499114973500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A103517 ((n + 3) ^ 2)).toNat

end

end A050183.P17752608499114973500

/-!
# A050184: T(2n+6,n), array T as in A051168; a count of Lyndon words.

The programs for A050184, there is no canonical definition to state claims against.
-/

/-! ## A050184.P1555368642639083554

`A051199(n)/(2*(n+3))`
-/

namespace A050184.P1555368642639083554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051199 n : ℚ) / (2 * (n + 3) : ℚ)

end

end A050184.P1555368642639083554

/-! ## A050184.P1785978453407287988

`floor(A051199(n)/A020739(n))`
-/

namespace A050184.P1785978453407287988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051199 n : ℚ) / (A020739 n : ℚ)⌋

end

end A050184.P1785978453407287988

/-! ## A050184.P146291540710718734

`lcm(A000034(n+1), A051199(n)/A020739(n))`
-/

namespace A050184.P146291540710718734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (n + 1)) (SequenceMachineLib.roundAway ((A051199 n : ℚ) / (A020739 n : ℚ)))

end

end A050184.P146291540710718734

/-! ## A050184.P490931428698005079

`A051168(eq[6, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A050184.P490931428698005079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050184.P490931428698005079

/-! ## A050184.P16864061585436337290

`A053727(A268581(n+1))/A020739(n)`
-/

namespace A050184.P16864061585436337290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053727 (A268581 (n + 1)).toNat : ℚ) / (A020739 n : ℚ)

end

end A050184.P16864061585436337290

/-!
# A050185: T(2n+7,n), array T as in A051168; a count of Lyndon words.

The programs for A050185, there is no canonical definition to state claims against.
-/

/-! ## A050185.P14544557246467205484

`A051168(eq[7, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A050185.P14544557246467205484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050185.P14544557246467205484

/-! ## A050185.P1284412655373952156

`A051168(A153037(n)+5)`
-/

namespace A050185.P1284412655373952156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A153037 n + 5).toNat

end

end A050185.P1284412655373952156

/-! ## A050185.P4870144180034593580

`A051168(A020735((n+4)²))`
-/

namespace A050185.P4870144180034593580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A020735 ((n + 4) ^ 2)).toNat

end

end A050185.P4870144180034593580

/-! ## A050185.P11237188974133872087

`A051168(A056220(n+4)-3)`
-/

namespace A050185.P11237188974133872087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A056220 (n + 4) - 3).toNat

end

end A050185.P11237188974133872087

/-! ## A050185.P3341125923776056340

`record[A051168(A004273(n²+2))]`
-/

namespace A050185.P3341125923776056340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A004273 (n ^ 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050185.P3341125923776056340

/-!
# A050186: Triangular array T read by rows: T(h,k) = number of binary words of k 1's and h-k 0's which are not a juxtaposition of 2 or more identical subwords.

The programs for A050186, there is no canonical definition to state claims against.
-/

/-! ## A050186.P12069549271114039587

`A007318(n)-A050870(n)`
-/

namespace A050186.P12069549271114039587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A050870 n

end

end A050186.P12069549271114039587

/-! ## A050186.P17436048224025150981

`A051168(n)*A318274(n)`
-/

namespace A050186.P17436048224025150981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A318274 n

end

end A050186.P17436048224025150981

/-! ## A050186.P6061035514050810142

`abs(A108086(n))-A050870(n)`
-/

namespace A050186.P6061035514050810142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A050870 n

end

end A050186.P6061035514050810142

/-! ## A050186.P16688520825122062978

`abs(A117440(n))-A050870(n)`
-/

namespace A050186.P16688520825122062978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| - A050870 n

end

end A050186.P16688520825122062978

/-! ## A050186.P9609459665524212054

`abs(A130595(n))-A050870(n)`
-/

namespace A050186.P9609459665524212054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A050870 n

end

end A050186.P9609459665524212054

/-! ## A050186.P8266434871970096425

`sqrt(A008459(n))-A050870(n)`
-/

namespace A050186.P8266434871970096425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (A050870 n : ℝ)

end

end A050186.P8266434871970096425

/-! ## A050186.P949705301758336831

`Δ[A102363(n)]-A050870(n)`
-/

namespace A050186.P949705301758336831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A050870 n

end

end A050186.P949705301758336831

/-! ## A050186.P309827999121924156

`A028326(n)/2-A050870(n)`
-/

namespace A050186.P309827999121924156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A050870 n : ℚ)

end

end A050186.P309827999121924156

/-! ## A050186.P101043040114101509

`A028310(A003056(n))*A051168(n)`
-/

namespace A050186.P101043040114101509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003056 n).toNat * A051168 n

end

end A050186.P101043040114101509

/-! ## A050186.P3794634024946018168

`Δ[A126890(n)]*A051168(n)`
-/

namespace A050186.P3794634024946018168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A051168 n

end

end A050186.P3794634024946018168

/-! ## A050186.P7296433609989480300

`A004526(A028326(n)-2*A050870(n))`
-/

namespace A050186.P7296433609989480300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n - 2 * A050870 n).toNat

end

end A050186.P7296433609989480300

/-! ## A050186.P8814166742029455693

`A004526(A028326(n)-A050870(n)-A050870(n))`
-/

namespace A050186.P8814166742029455693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n - A050870 n - A050870 n).toNat

end

end A050186.P8814166742029455693

/-! ## A050186.P11791754735474835962

`A004526(A028326(n))-A050870(n)`
-/

namespace A050186.P11791754735474835962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n).toNat - A050870 n

end

end A050186.P11791754735474835962

/-!
# A050187: a(n) = n * floor((n-1)/2).

The programs for A050187, the canonical program `A050187.P14012477484479988174` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050187 has offset 0).

The definition of A050187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor((n-1)/2)` (program `A050187.P14012477484479988174`, by `A050187.P14012477484479988174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050187.P14012477484479988174

`n*floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A050187

/-- `n*floor((n-1)/2)` -/
def P14012477484479988174.Spec : Prop :=
  ∀ n, P14012477484479988174.a n = A050187 n

theorem P14012477484479988174.correct : P14012477484479988174.Spec := by
  intro n
  simp only [A050187]

end A050187

/-! ## A050187.P10075074965278795197

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=4`
-/

namespace A050187.P10075074965278795197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A050187.P10075074965278795197

namespace A050187

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10075074965278795197.Spec : Prop :=
  ∀ n, P10075074965278795197.a n = A050187 n

end A050187

/-! ## A050187.P10996790516320313

`n*∑[n%2]-n`
-/

namespace A050187.P10996790516320313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A050187.P10996790516320313

namespace A050187

/-- `n*∑[n%2]-n` -/
def P10996790516320313.Spec : Prop :=
  ∀ n, P10996790516320313.a n = A050187 n

end A050187

/-! ## A050187.P4383866814551793572

`n*∑[and(1, n)]-n`
-/

namespace A050187.P4383866814551793572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A050187.P4383866814551793572

namespace A050187

/-- `n*∑[and(1, n)]-n` -/
def P4383866814551793572.Spec : Prop :=
  ∀ n, P4383866814551793572.a n = A050187 n

end A050187

/-! ## A050187.P17128084528109814522

`n*(n-gcd(2, n))/2`
-/

namespace A050187.P17128084528109814522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - (Nat.gcd 2 n : ℤ)) : ℚ) / 2

end

end A050187.P17128084528109814522

namespace A050187

/-- `n*(n-gcd(2, n))/2` -/
def P17128084528109814522.Spec : Prop :=
  ∀ n, P17128084528109814522.a n = (A050187 n : ℚ)

end A050187

/-! ## A050187.P6185948147925196429

`n*round(cosh(log(acot(n))))-n`
-/

namespace A050187.P6185948147925196429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ)))) - (n : ℤ)

end

end A050187.P6185948147925196429

namespace A050187

/-- `n*round(cosh(log(acot(n))))-n` -/
def P6185948147925196429.Spec : Prop :=
  ∀ n, P6185948147925196429.a n = A050187 n

end A050187

/-! ## A050187.P5066615199795296731

`n*and(n-1, -2)/2`
-/

namespace A050187.P5066615199795296731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * Int.land ((n : ℤ) - 1) (-2) : ℚ) / 2

end

end A050187.P5066615199795296731

namespace A050187

/-- `n*and(n-1, -2)/2` -/
def P5066615199795296731.Spec : Prop :=
  ∀ n, P5066615199795296731.a n = (A050187 n : ℚ)

end A050187

/-! ## A050187.P7709234936378918978

`lcm(n, n*(ceil(n/2)-1))`
-/

namespace A050187.P7709234936378918978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * (⌈(n : ℚ) / 2⌉ - 1))

end

end A050187.P7709234936378918978

namespace A050187

/-- `lcm(n, n*(ceil(n/2)-1))` -/
def P7709234936378918978.Spec : Prop :=
  ∀ n, (P7709234936378918978.a n : ℤ) = A050187 n

end A050187

/-! ## A050187.P5010736729606249576

`∑[lcm(2, n²)]/(n+1)-n`
-/

namespace A050187.P5010736729606249576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) - (n : ℚ)

end

end A050187.P5010736729606249576

namespace A050187

/-- `∑[lcm(2, n²)]/(n+1)-n` -/
def P5010736729606249576.Spec : Prop :=
  ∀ n, P5010736729606249576.a n = (A050187 n : ℚ)

end A050187

/-! ## A050187.P16258686347767742861

`n*∑[1-a(n-1)]-n` with `a(0)=0`
-/

namespace A050187.P16258686347767742861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A050187.P16258686347767742861

namespace A050187

/-- `n*∑[1-a(n-1)]-n` -/
def P16258686347767742861.Spec : Prop :=
  ∀ n, P16258686347767742861.a n = A050187 n

end A050187

/-! ## A050187.P15355493761394475939

`n*(n-1-and(1, n+1))/2`
-/

namespace A050187.P15355493761394475939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1 - (Nat.land 1 (n + 1) : ℤ)) : ℚ) / 2

end

end A050187.P15355493761394475939

namespace A050187

/-- `n*(n-1-and(1, n+1))/2` -/
def P15355493761394475939.Spec : Prop :=
  ∀ n, P15355493761394475939.a n = (A050187 n : ℚ)

end A050187

/-! ## A050187.P16180157127787443213

`floor((5/4-n)²-a(n-1))` with `a(0)=0`
-/

namespace A050187.P16180157127787443213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((5 : ℚ) / 4 - (n : ℚ)) ^ 2 - (a (n - 1) : ℚ)⌋

end

end A050187.P16180157127787443213

namespace A050187

/-- `floor((5/4-n)²-a(n-1))` -/
def P16180157127787443213.Spec : Prop :=
  ∀ n, P16180157127787443213.a n = A050187 n

end A050187

/-! ## A050187.P7928844497459874070

`n*(a(n-1)-3)%n+n` with `a(0)=0, a(1)=0`
-/

namespace A050187.P7928844497459874070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) * Int.tmod (a (n - 1) - 3) (n : ℤ) + (n : ℤ)

end

end A050187.P7928844497459874070

namespace A050187

/-- `n*(a(n-1)-3)%n+n` -/
def P7928844497459874070.Spec : Prop :=
  ∀ n, P7928844497459874070.a n = A050187 n

end A050187

/-! ## A050187.P16877702163806609771

`n-n*(3-a(n-1))%n` with `a(0)=0, a(1)=0`
-/

namespace A050187.P16877702163806609771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - (n : ℤ) * Int.tmod (3 - a (n - 1)) (n : ℤ)

end

end A050187.P16877702163806609771

namespace A050187

/-- `n-n*(3-a(n-1))%n` -/
def P16877702163806609771.Spec : Prop :=
  ∀ n, P16877702163806609771.a n = A050187 n

end A050187

/-! ## A050187.P3231458199435095861

`∑[4-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A050187.P3231458199435095861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A050187.P3231458199435095861

namespace A050187

/-- `∑[4-a(n-1)]+a(n-2)` -/
def P3231458199435095861.Spec : Prop :=
  ∀ n, P3231458199435095861.a n = A050187 n

end A050187

/-! ## A050187.P1841005752152943184

`A370980(n)-1`
-/

namespace A050187.P1841005752152943184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370980 n - 1

end

end A050187.P1841005752152943184

namespace A050187

/-- `A370980(n)-1` -/
def P1841005752152943184.Spec : Prop :=
  ∀ n, P1841005752152943184.a n = A050187 n

end A050187

/-! ## A050187.P16427702554238717079

`A191967(n)-n²`
-/

namespace A050187.P16427702554238717079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191967 n - (n ^ 2 : ℤ)

end

end A050187.P16427702554238717079

namespace A050187

/-- `A191967(n)-n²` -/
def P16427702554238717079.Spec : Prop :=
  ∀ n, P16427702554238717079.a n = A050187 n

end A050187

/-! ## A050187.P1456388262076576475

`A092530(n)-2*n`
-/

namespace A050187.P1456388262076576475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 n - (2 * n : ℤ)

end

end A050187.P1456388262076576475

namespace A050187

/-- `A092530(n)-2*n` -/
def P1456388262076576475.Spec : Prop :=
  ∀ n, P1456388262076576475.a n = A050187 n

end A050187

/-! ## A050187.P13396490381782394055

`C(n, 2)-A142150(n)`
-/

namespace A050187.P13396490381782394055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A142150 n

end

end A050187.P13396490381782394055

namespace A050187

/-- `C(n, 2)-A142150(n)` -/
def P13396490381782394055.Spec : Prop :=
  ∀ n, P13396490381782394055.a n = A050187 n

end A050187

/-! ## A050187.P15517750062875249689

`∑[A071045(abs(1-n))]`
-/

namespace A050187.P15517750062875249689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050187.P15517750062875249689

namespace A050187

/-- `∑[A071045(abs(1-n))]` -/
def P15517750062875249689.Spec : Prop :=
  ∀ n, P15517750062875249689.a n = A050187 n

end A050187

/-!
# A050188: T(n,3), array T as in A050186; a count of aperiodic binary words.

The programs for A050188, the canonical program `A050188.P12921321240761054487` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050188 has offset 3).

The definition of A050188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050188.P12921321240761054487

`(n+3)*∑[ceil(n/3)]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A050188

/-- `(n+3)*∑[ceil(n/3)]` -/
def P12921321240761054487.Spec : Prop :=
  ∀ n, P12921321240761054487.a n = A050188 (n + 3)

theorem P12921321240761054487.correct : P12921321240761054487.Spec := by
  intro n
  simp only [A050188, Nat.add_sub_cancel]

end A050188

/-! ## A050188.P13229220241459672855

`C(n+3, 3)-C(n+3, 3)%(n+3)`
-/

namespace A050188.P13229220241459672855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - ((Nat.choose (n + 3) 3 % (n + 3) : ℕ) : ℤ)

end

end A050188.P13229220241459672855

namespace A050188

/-- `C(n+3, 3)-C(n+3, 3)%(n+3)` -/
def P13229220241459672855.Spec : Prop :=
  ∀ n, P13229220241459672855.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P9146502590147302536

`∑[∑[n+1]]-∑[∑[n+1]]%(n+3)`
-/

namespace A050188.P9146502590147302536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 3) : ℕ) : ℤ)

end

end A050188.P9146502590147302536

namespace A050188

/-- `∑[∑[n+1]]-∑[∑[n+1]]%(n+3)` -/
def P9146502590147302536.Spec : Prop :=
  ∀ n, P9146502590147302536.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P2444539532448855786

`A001840(n)+(n+2)*A001840(n)`
-/

namespace A050188.P2444539532448855786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + (n + 2 : ℤ) * A001840 n

end

end A050188.P2444539532448855786

namespace A050188

/-- `A001840(n)+(n+2)*A001840(n)` -/
def P2444539532448855786.Spec : Prop :=
  ∀ n, P2444539532448855786.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P3645423568721659902

`A000292(n+1)-A008620(n)*A079978(n)`
-/

namespace A050188.P3645423568721659902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A008620 n * A079978 n

end

end A050188.P3645423568721659902

namespace A050188

/-- `A000292(n+1)-A008620(n)*A079978(n)` -/
def P3645423568721659902.Spec : Prop :=
  ∀ n, P3645423568721659902.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P12395656345321878080

`A000292(n+1)-A175676(n+3)`
-/

namespace A050188.P12395656345321878080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A175676 (n + 3)

end

end A050188.P12395656345321878080

namespace A050188

/-- `A000292(n+1)-A175676(n+3)` -/
def P12395656345321878080.Spec : Prop :=
  ∀ n, P12395656345321878080.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P15282523864087725022

`record[A001057(n)*A008799(n)]`
-/

namespace A050188.P15282523864087725022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A008799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050188.P15282523864087725022

namespace A050188

/-- `record[A001057(n)*A008799(n)]` -/
def P15282523864087725022.Spec : Prop :=
  ∀ n, P15282523864087725022.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P7110708422993621380

`A053727(A167614(n+1))`
-/

namespace A050188.P7110708422993621380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A167614 (n + 1)).toNat

end

end A050188.P7110708422993621380

namespace A050188

/-- `A053727(A167614(n+1))` -/
def P7110708422993621380.Spec : Prop :=
  ∀ n, P7110708422993621380.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P10816270080109945901

`A053727(∑[n+3])`
-/

namespace A050188.P10816270080109945901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050188.P10816270080109945901

namespace A050188

/-- `A053727(∑[n+3])` -/
def P10816270080109945901.Spec : Prop :=
  ∀ n, P10816270080109945901.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P2815211958694659759

`A050186(A167614(n+2))`
-/

namespace A050188.P2815211958694659759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A167614 (n + 2)).toNat

end

end A050188.P2815211958694659759

namespace A050188

/-- `A050186(A167614(n+2))` -/
def P2815211958694659759.Spec : Prop :=
  ∀ n, P2815211958694659759.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P12827069787328503864

`A050186(eq[3, A002262(n)])`
-/

namespace A050188.P12827069787328503864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050188.P12827069787328503864

namespace A050188

/-- `A050186(eq[3, A002262(n)])` -/
def P12827069787328503864.Spec : Prop :=
  ∀ n, P12827069787328503864.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P7180665447287204401

`A050186(A166136(n+2)-3)`
-/

namespace A050188.P7180665447287204401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A166136 (n + 2) - 3).toNat

end

end A050188.P7180665447287204401

namespace A050188

/-- `A050186(A166136(n+2)-3)` -/
def P7180665447287204401.Spec : Prop :=
  ∀ n, P7180665447287204401.a n = A050188 (n + 3)

end A050188

/-! ## A050188.P12176105334971692796

`A050186(∑[n+3]+n+3)`
-/

namespace A050188.P12176105334971692796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A050188.P12176105334971692796

namespace A050188

/-- `A050186(∑[n+3]+n+3)` -/
def P12176105334971692796.Spec : Prop :=
  ∀ n, P12176105334971692796.a n = A050188 (n + 3)

end A050188

/-!
# A050189: T(n,4), array T as in A050186; a count of aperiodic binary words.

The programs for A050189, the canonical program `A050189.P20956315672164131` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050189 has offset 4).

The definition of A050189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050189.P20956315672164131

`(n+4)*∑[∑[∑[n]%(n+1)]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A050189

/-- `(n+4)*∑[∑[∑[n]%(n+1)]]` -/
def P20956315672164131.Spec : Prop :=
  ∀ n, (P20956315672164131.a n : ℤ) = A050189 (n + 4)

theorem P20956315672164131.correct : P20956315672164131.Spec := by
  intro n
  simp only [A050189, Nat.add_sub_cancel]

end A050189

/-! ## A050189.P14720810344140254800

`(n+4)*∑[C(floor((n+1)/2)+1, 2)]`
-/

namespace A050189.P14720810344140254800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n + 1 : ℚ) / 2⌋ + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050189.P14720810344140254800

namespace A050189

/-- `(n+4)*∑[C(floor((n+1)/2)+1, 2)]` -/
def P14720810344140254800.Spec : Prop :=
  ∀ n, (P14720810344140254800.a n : ℤ) = A050189 (n + 4)

end A050189

/-! ## A050189.P16999067584598341448

`(n+4)*∑[∑[∑[∑[-n*(-1)^n]]]]`
-/

namespace A050189.P16999067584598341448
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050189.P16999067584598341448

namespace A050189

/-- `(n+4)*∑[∑[∑[∑[-n*(-1)^n]]]]` -/
def P16999067584598341448.Spec : Prop :=
  ∀ n, P16999067584598341448.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P15348909764118126310

`A006918(n)+(n+3)*A006918(n)`
-/

namespace A050189.P15348909764118126310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (n + 3 : ℤ) * A006918 n

end

end A050189.P15348909764118126310

namespace A050189

/-- `A006918(n)+(n+3)*A006918(n)` -/
def P15348909764118126310.Spec : Prop :=
  ∀ n, P15348909764118126310.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P11834207176877960427

`abs((n+4)*(A213483(n)-A213479(n)))`
-/

namespace A050189.P11834207176877960427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 4 : ℤ) * (A213483 n - A213479 n)|

end

end A050189.P11834207176877960427

namespace A050189

/-- `abs((n+4)*(A213483(n)-A213479(n)))` -/
def P11834207176877960427.Spec : Prop :=
  ∀ n, P11834207176877960427.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P14133722086791515300

`Δ[A002623(n)]²-Δ[A001753(n)]`
-/

namespace A050189.P14133722086791515300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (f2 (n + 1) - f2 n)

end

end A050189.P14133722086791515300

namespace A050189

/-- `Δ[A002623(n)]²-Δ[A001753(n)]` -/
def P14133722086791515300.Spec : Prop :=
  ∀ n, P14133722086791515300.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P4492597453806182775

`A053727(A167614(n+2)+1)`
-/

namespace A050189.P4492597453806182775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A167614 (n + 2) + 1).toNat

end

end A050189.P4492597453806182775

namespace A050189

/-- `A053727(A167614(n+2)+1)` -/
def P4492597453806182775.Spec : Prop :=
  ∀ n, P4492597453806182775.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P4676351681342039680

`A007318(∑[n+5]+5)-A000217(A027656(n))`
-/

namespace A050189.P4676351681342039680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 5) - A000217 (A027656 n).toNat

end

end A050189.P4676351681342039680

namespace A050189

/-- `A007318(∑[n+5]+5)-A000217(A027656(n))` -/
def P4676351681342039680.Spec : Prop :=
  ∀ n, P4676351681342039680.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P13923313509533645442

`A053727(∑[n+3]+n+3)`
-/

namespace A050189.P13923313509533645442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A050189.P13923313509533645442

namespace A050189

/-- `A053727(∑[n+3]+n+3)` -/
def P13923313509533645442.Spec : Prop :=
  ∀ n, P13923313509533645442.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P2978474112689141606

`A050186(eq[4, A002262(n)])`
-/

namespace A050189.P2978474112689141606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050189.P2978474112689141606

namespace A050189

/-- `A050186(eq[4, A002262(n)])` -/
def P2978474112689141606.Spec : Prop :=
  ∀ n, P2978474112689141606.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P18282123311621016191

`A050186(Δ[A026054(n+3)-n²])`
-/

namespace A050189.P18282123311621016191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (f1 (n + 1) - f1 n).toNat

end

end A050189.P18282123311621016191

namespace A050189

/-- `A050186(Δ[A026054(n+3)-n²])` -/
def P18282123311621016191.Spec : Prop :=
  ∀ n, P18282123311621016191.a n = A050189 (n + 4)

end A050189

/-! ## A050189.P8611275556928886296

`A050186(eq[4, A025581(n)])`
-/

namespace A050189.P8611275556928886296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050189.P8611275556928886296

namespace A050189

/-- `A050186(eq[4, A025581(n)])` -/
def P8611275556928886296.Spec : Prop :=
  ∀ n, P8611275556928886296.a n = A050189 (n + 4)

end A050189

/-!
# A050190: T(n,5), array T as in A050186; a count of aperiodic binary words.

The programs for A050190, the canonical program `A050190.P11290897294037018702` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050190 has offset 5).

The definition of A050190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050190.P11290897294037018702

`(n+5)*floor(C(n+4, 4)/5)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A050190

/-- `(n+5)*floor(C(n+4, 4)/5)` -/
def P11290897294037018702.Spec : Prop :=
  ∀ n, P11290897294037018702.a n = A050190 (n + 5)

theorem P11290897294037018702.correct : P11290897294037018702.Spec := by
  intro n
  simp only [A050190, Nat.add_sub_cancel]

end A050190

/-! ## A050190.P8777237852187354787

`(n+5)*A051170(n+5)`
-/

namespace A050190.P8777237852187354787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A051170 (n + 5)

end

end A050190.P8777237852187354787

namespace A050190

/-- `(n+5)*A051170(n+5)` -/
def P8777237852187354787.Spec : Prop :=
  ∀ n, P8777237852187354787.a n = A050190 (n + 5)

end A050190

/-! ## A050190.P16914481988374428108

`(n+5)*A011795(n+4)`
-/

namespace A050190.P16914481988374428108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A011795 (n + 4)

end

end A050190.P16914481988374428108

namespace A050190

/-- `(n+5)*A011795(n+4)` -/
def P16914481988374428108.Spec : Prop :=
  ∀ n, P16914481988374428108.a n = A050190 (n + 5)

end A050190

/-! ## A050190.P9814995725501675625

`record[A008619(n)*A011795(A057979(n))]`
-/

namespace A050190.P9814995725501675625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A011795 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050190.P9814995725501675625

namespace A050190

/-- `record[A008619(n)*A011795(A057979(n))]` -/
def P9814995725501675625.Spec : Prop :=
  ∀ n, P9814995725501675625.a n = A050190 (n + 5)

end A050190

/-! ## A050190.P18061096959967888561

`record[A011795(A142150(n))*A028242(n)]`
-/

namespace A050190.P18061096959967888561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (A142150 n).toNat * A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050190.P18061096959967888561

namespace A050190

/-- `record[A011795(A142150(n))*A028242(n)]` -/
def P18061096959967888561.Spec : Prop :=
  ∀ n, P18061096959967888561.a n = A050190 (n + 5)

end A050190

/-! ## A050190.P11506552939282962629

`A053727(eq[4, A025581(n)])`
-/

namespace A050190.P11506552939282962629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050190.P11506552939282962629

namespace A050190

/-- `A053727(eq[4, A025581(n)])` -/
def P11506552939282962629.Spec : Prop :=
  ∀ n, P11506552939282962629.a n = A050190 (n + 5)

end A050190

/-! ## A050190.P18421437177171523403

`A050186(Δ[A026054(n+3)])`
-/

namespace A050190.P18421437177171523403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (f1 (n + 1) - f1 n).toNat

end

end A050190.P18421437177171523403

namespace A050190

/-- `A050186(Δ[A026054(n+3)])` -/
def P18421437177171523403.Spec : Prop :=
  ∀ n, P18421437177171523403.a n = A050190 (n + 5)

end A050190

/-!
# A050191: T(n,6), array T as in A050186; a count of aperiodic binary words.

The programs for A050191, there is no canonical definition to state claims against.
-/

/-! ## A050191.P2862477558046862894

`A053727(A000124(n+5)+5)`
-/

namespace A050191.P2862477558046862894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A000124 (n + 5) + 5).toNat

end

end A050191.P2862477558046862894

/-! ## A050191.P3492916272845757518

`A050186(A166136(n+5))`
-/

namespace A050191.P3492916272845757518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A166136 (n + 5)).toNat

end

end A050191.P3492916272845757518

/-! ## A050191.P11447917977330628308

`A053727(eq[5, A025581(n)])`
-/

namespace A050191.P11447917977330628308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050191.P11447917977330628308

/-! ## A050191.P357849984419547373

`A050186(eq[6, A002262(n)])`
-/

namespace A050191.P357849984419547373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050191.P357849984419547373

/-! ## A050191.P4888851517786193083

`A053727(Δ[A023551(n+1)])`
-/

namespace A050191.P4888851517786193083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (f1 (n + 1) - f1 n).toNat

end

end A050191.P4888851517786193083

/-! ## A050191.P9493749677647065193

`A050186(A167487(n+5)-1)`
-/

namespace A050191.P9493749677647065193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A167487 (n + 5) - 1).toNat

end

end A050191.P9493749677647065193

/-! ## A050191.P4266316247200510951

`A053727(A000217(n+6)-6)`
-/

namespace A050191.P4266316247200510951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A000217 (n + 6) - 6).toNat

end

end A050191.P4266316247200510951

/-! ## A050191.P1514247631812712775

`A053727(eq[6, A004736(n+1)])`
-/

namespace A050191.P1514247631812712775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050191.P1514247631812712775

/-! ## A050191.P9005484863287844951

`A053727(A000096(n+4)+n+1)`
-/

namespace A050191.P9005484863287844951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A050191.P9005484863287844951

/-! ## A050191.P4949662794971268995

`A050186(A000217(n+7)-(n+1))`
-/

namespace A050191.P4949662794971268995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A050191.P4949662794971268995

/-! ## A050191.P1439095949598688858

`A050186(Δ[A026054(n+3)]+13-A057427(n))`
-/

namespace A050191.P1439095949598688858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (f1 (n + 1) - f1 n + 13 - A057427 n).toNat

end

end A050191.P1439095949598688858

/-! ## A050191.P1740570281030869635

`A050186(eq[6, A025581(n)])`
-/

namespace A050191.P1740570281030869635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050191.P1740570281030869635

/-! ## A050191.P697953896065429530

`A050186(A155212(n+3)+1)`
-/

namespace A050191.P697953896065429530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A155212 (n + 3) + 1).toNat

end

end A050191.P697953896065429530

/-! ## A050191.P4370257005149719235

`A050186(A167614(n+6)-10)`
-/

namespace A050191.P4370257005149719235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A167614 (n + 6) - 10).toNat

end

end A050191.P4370257005149719235

/-! ## A050191.P9840325066806659602

`A050186(eq[7, A004736(n+1)])`
-/

namespace A050191.P9840325066806659602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050191.P9840325066806659602

/-! ## A050191.P10026777985072862792

`A050186(Δ[A026054(n+4)]-1)`
-/

namespace A050191.P10026777985072862792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (f1 (n + 1) - f1 n - 1).toNat

end

end A050191.P10026777985072862792

/-!
# A050192: a(n)=a(n-1)+a(n-2)-d, where d=a(n/2) if n is even, else d=0; 2 initial terms.

The programs for A050192, the canonical program `A050192.P16949146376273307997` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050192 has offset 1).

The definition of A050192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050192.P16949146376273307997

`a(n-1)+a(n-2)-a(A057979(n))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050192

/-- `a(n-1)+a(n-2)-a(A057979(n))` -/
def P16949146376273307997.Spec : Prop :=
  ∀ n, P16949146376273307997.a n = A050192 (n + 1)

theorem P16949146376273307997.correct : P16949146376273307997.Spec := by
  intro n
  simp only [A050192, Nat.add_sub_cancel]

end A050192

/-! ## A050192.P6136180899737103247

`A273190(7*A321677(n))`
-/

namespace A050192.P6136180899737103247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (7 * A321677 n).toNat

end

end A050192.P6136180899737103247

namespace A050192

/-- `A273190(7*A321677(n))` -/
def P6136180899737103247.Spec : Prop :=
  ∀ n, P6136180899737103247.a n = A050192 (n + 1)

end A050192

/-! ## A050192.P16740807974170442157

`A111660(A298426(n+1)+A000011(n))`
-/

namespace A050192.P16740807974170442157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A298426 (n + 1) + A000011 n).toNat

end

end A050192.P16740807974170442157

namespace A050192

/-- `A111660(A298426(n+1)+A000011(n))` -/
def P16740807974170442157.Spec : Prop :=
  ∀ n, P16740807974170442157.a n = A050192 (n + 1)

end A050192

/-!
# A050193: a(n)=a(n-1)+a(n-2)-d, where d=a(n/3) if 3 divides n, else d=0; 2 initial terms.

The programs for A050193, there is no canonical definition to state claims against.
-/

/-! ## A050193.P17056683156508606169

`A108602(A151800(A049610(n)+1))`
-/

namespace A050193.P17056683156508606169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A151800 (A049610 n + 1).toNat).toNat

end

end A050193.P17056683156508606169

/-! ## A050193.P1925606692251461431

`A108602(or(A049610(n), A151800(n)))`
-/

namespace A050193.P1925606692251461431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (Int.lor (A049610 n) (A151800 n)).toNat

end

end A050193.P1925606692251461431

/-! ## A050193.P17837515652188807950

`A108602(xor(A049610(n), A151800(n)))`
-/

namespace A050193.P17837515652188807950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (Int.xor (A049610 n) (A151800 n)).toNat

end

end A050193.P17837515652188807950

/-! ## A050193.P2625723842037801895

`A201864(n+1)+A114213(A293553(n+2))`
-/

namespace A050193.P2625723842037801895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (n + 1) + A114213 (A293553 (n + 2)).toNat

end

end A050193.P2625723842037801895

/-! ## A050193.P5194760535058047190

`A185116(A193049(n))+A029826(3*n+4)`
-/

namespace A050193.P5194760535058047190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 (A193049 n).toNat + A029826 (3 * n + 4)

end

end A050193.P5194760535058047190

/-!
# A050194: a(n)=a(n-1)+a(n-2)-d, where d=a(n/4) if 4 divides n, else d=0; 2 initial terms.

The programs for A050194, there is no canonical definition to state claims against.
-/

/-! ## A050194.P14462635251878476679

`A135304(A325099(n)+A000032(n))`
-/

namespace A050194.P14462635251878476679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A325099 n + A000032 n).toNat

end

end A050194.P14462635251878476679

/-! ## A050194.P959097120511566019

`or(A017887(n), A225687(A291419(n)))`
-/

namespace A050194.P959097120511566019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017887 n) (A225687 (A291419 n).toNat)

end

end A050194.P959097120511566019

/-! ## A050194.P2894734612693612119

`A135660(lcm(2, round((sqrt(2)+1)^n)))+char[comp[2^n-1]]`
-/

namespace A050194.P2894734612693612119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n))) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050194.P2894734612693612119

/-! ## A050194.P2405228929978100298

`A000194(A342912(n))`
-/

namespace A050194.P2405228929978100298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A342912 n).toNat

end

end A050194.P2405228929978100298

/-! ## A050194.P6148117693188751399

`A325400(A192682(n))`
-/

namespace A050194.P6148117693188751399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A192682 n).toNat

end

end A050194.P6148117693188751399

/-!
# A050195: a(n)=a(n-1)+a(n-2)-d, where d=a(n/5) if 5 divides n, else d=0; 2 initial terms.

The programs for A050195, there is no canonical definition to state claims against.
-/

/-! ## A050195.P8489306221280314596

`A065033(A293676(n)%A103099(n+1))`
-/

namespace A050195.P8489306221280314596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.tmod (A293676 n) (A103099 (n + 1))).toNat

end

end A050195.P8489306221280314596

/-! ## A050195.P9673679493088628152

`round(A038567(A001906(n))/2)`
-/

namespace A050195.P9673679493088628152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038567 (A001906 n).toNat : ℚ) / 2)

end

end A050195.P9673679493088628152

/-! ## A050195.P5498901977031066533

`A005378(A000204(n+1))-A293544(n+2)%A270929(3*(n+1))`
-/

namespace A050195.P5498901977031066533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A000204 (n + 1)).toNat - Int.tmod (A293544 (n + 2)) (A270929 (3 * (n + 1)))

end

end A050195.P5498901977031066533

/-! ## A050195.P2933102654957883022

`ceil(A107821(round(ϕ^(n+3))-1)/7)`
-/

namespace A050195.P2933102654957883022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107821 (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 3)) - 1).toNat : ℚ) / 7⌉

end

end A050195.P2933102654957883022

/-! ## A050195.P13805383421415710629

`A257639(A129804(n))`
-/

namespace A050195.P13805383421415710629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A129804 n).toNat

end

end A050195.P13805383421415710629

/-!
# A050196: a(1) = 1, a(n) = floor(a(n-1)/2) if this is not among 0,a(1),...,a(n-1); otherwise a(n) = a(n-1) + a(n-2).

The programs for A050196, there is no canonical definition to state claims against.
-/

/-! ## A050196.P6478664396002686012

`A122597(A004917(n+1)+floor(acot(n))-1)`
-/

namespace A050196.P6478664396002686012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122597 (A004917 (n + 1) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A050196.P6478664396002686012

/-! ## A050196.P12537241443844545411

`A122597(A004917(n+1)-n/A028310(n))`
-/

namespace A050196.P12537241443844545411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122597 (SequenceMachineLib.roundAway ((A004917 (n + 1) : ℚ) - (n : ℚ) / (A028310 n : ℚ))).toNat

end

end A050196.P12537241443844545411

/-! ## A050196.P8569186089027516155

`A122597(A004917(n+1)-char[A111377(n+1)])`
-/

namespace A050196.P8569186089027516155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111377 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122597 (A004917 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A050196.P8569186089027516155

/-! ## A050196.P2285518757276016931

`A122597(A004917(n+1)-char[A004917(n+2)])`
-/

namespace A050196.P2285518757276016931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122597 (A004917 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A050196.P2285518757276016931

/-!
# A050198: Numbers k such that A050196(k) < A050196(k+1).

The programs for A050198, there is no canonical definition to state claims against.
-/

/-! ## A050198.P13994242567103597715

`lt[char[A050199(n+1)]*(n+1)+1, n]`
-/

namespace A050198.P13994242567103597715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050199 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) * (n + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A050198.P13994242567103597715

/-! ## A050198.P8301210281571844249

`eq[char[A050199(n+1)], A154955(n+1)]`
-/

namespace A050198.P8301210281571844249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050199 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050198.P8301210281571844249

/-! ## A050198.P892808114267060368

`lt[A050196(n+1), A050196(n+2)]+1`
-/

namespace A050198.P892808114267060368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050198.P892808114267060368

/-! ## A050198.P8284856113589475324

`lt[A050196(A028310(n)), A050196(n+1)]`
-/

namespace A050198.P8284856113589475324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050198.P8284856113589475324

/-! ## A050198.P10421874773371316181

`lt[A050196(A000007(n)+n), A050196(n+1)]`
-/

namespace A050198.P10421874773371316181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050198.P10421874773371316181

/-! ## A050198.P5618166537885288419

`lt[(char[A050199(n+1)]+1)^A000010(n+1), n]`
-/

namespace A050198.P5618166537885288419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050199 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ) ^ (A000010 (n + 1) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A050198.P5618166537885288419

/-!
# A050199: Numbers k such that A050196(k) > A050196(k+1).

The programs for A050199, there is no canonical definition to state claims against.
-/

/-! ## A050199.P3884436568179516831

`eq[char[A050198(n+1)], A169585(n)]`
-/

namespace A050199.P3884436568179516831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050198 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050199.P3884436568179516831

/-! ## A050199.P1581650818775327810

`eq[char[A050198(n+1)], A154955(n+1)]`
-/

namespace A050199.P1581650818775327810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050198 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050199.P1581650818775327810

/-! ## A050199.P9453790929127779449

`lt[A000040(n+2)*char[A050198(n+1)]+1, n]`
-/

namespace A050199.P9453790929127779449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050198 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A050199.P9453790929127779449

/-! ## A050199.P7434455896413296250

`lt[(A094179(n+1)+1)*char[A050198(n+1)]+1, n]`
-/

namespace A050199.P7434455896413296250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050198 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094179 (n + 1) + 1) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A050199.P7434455896413296250

/-! ## A050199.P4282553870813301393

`lt[(A246027(n)+1+n)*char[A050198(n+1)]+1, n]`
-/

namespace A050199.P4282553870813301393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050198 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246027 n + 1 + (n : ℤ)) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A050199.P4282553870813301393

/-! ## A050199.P2560545276343138943

`lt[A050196(n+1), A050196(A028310(n))]`
-/

namespace A050199.P2560545276343138943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050199.P2560545276343138943

/-! ## A050199.P8312608166872139521

`lt[A050196(n+1), A050196(A000007(n)+n)]`
-/

namespace A050199.P8312608166872139521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050196 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050199.P8312608166872139521

