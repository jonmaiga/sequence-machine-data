import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B008.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A136902: Numbers k such that k and k^2 use only the digits 0, 2, 4 and 6.

The programs for A136902, there is no canonical definition to state claims against.
-/

/-! ## A136902.P16602220781919333376

`∩[A136883(n+1), A136903(n+1)]`
-/

namespace A136902.P16602220781919333376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136902.P16602220781919333376

/-! ## A136902.P5418418718642877458

`∩[A136904(n+1), A136905(n+1)]`
-/

namespace A136902.P5418418718642877458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136902.P5418418718642877458

/-! ## A136902.P12055959751542165459

`∩[A136818(n+1), A136898(n+1)]`
-/

namespace A136902.P12055959751542165459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136902.P12055959751542165459

/-! ## A136902.P15300131348071649270

`∩[A136903(n+1), A136905(n+1)]`
-/

namespace A136902.P15300131348071649270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136902.P15300131348071649270

/-! ## A136902.P12432459781487511179

`∩[A136883(n+1), A136905(n+1)]`
-/

namespace A136902.P12432459781487511179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136902.P12432459781487511179

/-!
# A136903: Numbers k such that k and k^2 use only the digits 0, 2, 4, 6 and 7.

The programs for A136903, there is no canonical definition to state claims against.
-/

/-! ## A136903.P13268341981726541177

`∑{e}[10^n, A108761(#)]`
-/

namespace A136903.P13268341981726541177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A108761 (Nat.factorization (f1 n) p)

end

end A136903.P13268341981726541177

/-! ## A136903.P14117619903004960501

`lt[A203814(A340479(3*n)), 3]`
-/

namespace A136903.P14117619903004960501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203814 (A340479 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136903.P14117619903004960501

/-!
# A136904: Numbers k such that k and k^2 use only the digits 0, 2, 4, 6 and 8.

The programs for A136904, there is no canonical definition to state claims against.
-/

/-! ## A136904.P5163162193000253895

`∩[A014263(n+1), A030097(n+1)]`
-/

namespace A136904.P5163162193000253895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136904.P5163162193000253895

/-! ## A136904.P15700619395796860405

`∩[A030097(n+1), A169884(n+1)]`
-/

namespace A136904.P15700619395796860405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136904.P15700619395796860405

/-! ## A136904.P2235208286086605404

`∩[A024657(2*n), A030097(n+1)]`
-/

namespace A136904.P2235208286086605404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136904.P2235208286086605404

/-! ## A136904.P18216069545732807803

`∩[A030097(n+1), A024657(n)]`
-/

namespace A136904.P18216069545732807803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136904.P18216069545732807803

/-! ## A136904.P6169213234500606906

`∩[A030097(n+1), A059708(n+1)]`
-/

namespace A136904.P6169213234500606906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136904.P6169213234500606906

/-!
# A136905: Numbers k such that k and k^2 use only the digits 0, 2, 4, 6 and 9.

The programs for A136905, there is no canonical definition to state claims against.
-/

/-! ## A136905.P5732786617608931658

`ceil(2*10^(n/2))%p?[A026721(n)]`
-/

namespace A136905.P5732786617608931658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * (10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A136905.P5732786617608931658

/-!
# A136908: Numbers k such that k and k^2 use only the digits 0, 2, 4 and 8.

The programs for A136908, there is no canonical definition to state claims against.
-/

/-! ## A136908.P4655809030022796406

`∩[A136885(n+1), A136906(n+1)]`
-/

namespace A136908.P4655809030022796406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P4655809030022796406

/-! ## A136908.P3594568005399962624

`∩[A136904(n+1), A136906(n+1)]`
-/

namespace A136908.P3594568005399962624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P3594568005399962624

/-! ## A136908.P15169850433173715940

`∩[A136885(n+1), A136904(n+1)]`
-/

namespace A136908.P15169850433173715940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P15169850433173715940

/-! ## A136908.P1757359161925092672

`∩[A136904(n+1), A136909(n+1)]`
-/

namespace A136908.P1757359161925092672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P1757359161925092672

/-! ## A136908.P4587453874230710738

`∩[A136906(n+1), A136909(n+1)]`
-/

namespace A136908.P4587453874230710738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P4587453874230710738

/-! ## A136908.P6390216335337289272

`∩[A136885(n+1), A136909(n+1)]`
-/

namespace A136908.P6390216335337289272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P6390216335337289272

/-! ## A136908.P5886748417448956135

`∩[A136900(n+1), A136909(n+1)]`
-/

namespace A136908.P5886748417448956135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P5886748417448956135

/-! ## A136908.P3462943572978959339

`∩[A136900(n+1), A136904(n+1)]`
-/

namespace A136908.P3462943572978959339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P3462943572978959339

/-! ## A136908.P2434053634672671776

`∩[A136906(n+1), A169965(n+1)]`
-/

namespace A136908.P2434053634672671776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P2434053634672671776

/-! ## A136908.P16045729266975650960

`∩[A136900(n+1), A136906(n+1)]`
-/

namespace A136908.P16045729266975650960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P16045729266975650960

/-! ## A136908.P18266252571989466724

`∩[A136885(n+1), A169965(n+1)]`
-/

namespace A136908.P18266252571989466724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P18266252571989466724

/-! ## A136908.P16647586524009770313

`∩[A136885(n+1), A136900(n+1)]`
-/

namespace A136908.P16647586524009770313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P16647586524009770313

/-! ## A136908.P4404005731313494529

`∩[A136904(n+1), A024630(n)]`
-/

namespace A136908.P4404005731313494529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024630 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P4404005731313494529

/-! ## A136908.P5155867771358656250

`∩[A136820(n+1), A136900(n+1)]`
-/

namespace A136908.P5155867771358656250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P5155867771358656250

/-! ## A136908.P6046338264426203879

`∩[A136820(n+1), A136909(n+1)]`
-/

namespace A136908.P6046338264426203879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P6046338264426203879

/-! ## A136908.P11611304226876779337

`∩[A136906(n+1), A024630(n)]`
-/

namespace A136908.P11611304226876779337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024630 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P11611304226876779337

/-! ## A136908.P3989120137909391151

`∩[A136885(n+1), A024630(n)]`
-/

namespace A136908.P3989120137909391151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024630 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P3989120137909391151

/-! ## A136908.P16774880858577245626

`∩[A136820(n+1), A136904(n+1)]`
-/

namespace A136908.P16774880858577245626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P16774880858577245626

/-! ## A136908.P5667136941846358998

`∩[2*A061909(n+1), A061909(n+1)]`
-/

namespace A136908.P5667136941846358998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136908.P5667136941846358998

/-!
# A136910: Numbers k such that k and k^2 use only the digits 0, 2 and 5.

The programs for A136910, there is no canonical definition to state claims against.
-/

/-! ## A136910.P16844427930208064478

`∩[A136887(n+1), A136920(n+1)]`
-/

namespace A136910.P16844427930208064478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P16844427930208064478

/-! ## A136910.P10310419816956979400

`∩[A136887(n+1), A136911(n+1)]`
-/

namespace A136910.P10310419816956979400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P10310419816956979400

/-! ## A136910.P1727933633821223103

`∩[A136915(n+1), A136918(n+1)]`
-/

namespace A136910.P1727933633821223103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P1727933633821223103

/-! ## A136910.P2672909439334416968

`∩[A136911(n+1), A136920(n+1)]`
-/

namespace A136910.P2672909439334416968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P2672909439334416968

/-! ## A136910.P9160490017438813249

`∩[A136915(n+1), A136920(n+1)]`
-/

namespace A136910.P9160490017438813249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P9160490017438813249

/-! ## A136910.P12662993391711845908

`∩[A136887(n+1), A136915(n+1)]`
-/

namespace A136910.P12662993391711845908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P12662993391711845908

/-! ## A136910.P4596506119875781132

`∩[A136897(n+1), A136911(n+1)]`
-/

namespace A136910.P4596506119875781132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P4596506119875781132

/-! ## A136910.P12777462951054986571

`∩[A136911(n+1), A136915(n+1)]`
-/

namespace A136910.P12777462951054986571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P12777462951054986571

/-! ## A136910.P10397048558715207294

`∩[A136918(n+1), A136920(n+1)]`
-/

namespace A136910.P10397048558715207294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P10397048558715207294

/-! ## A136910.P2160351082841091775

`∩[A136887(n+1), A136918(n+1)]`
-/

namespace A136910.P2160351082841091775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P2160351082841091775

/-! ## A136910.P12291609022072134016

`∩[A136887(n+1), A136897(n+1)]`
-/

namespace A136910.P12291609022072134016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P12291609022072134016

/-! ## A136910.P13219515218025497479

`∩[A136897(n+1), A136920(n+1)]`
-/

namespace A136910.P13219515218025497479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P13219515218025497479

/-! ## A136910.P14948232131468437816

`∩[A136889(n+1), A136897(n+1)]`
-/

namespace A136910.P14948232131468437816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P14948232131468437816

/-! ## A136910.P8660322754635559017

`∩[A136890(n+1), A136897(n+1)]`
-/

namespace A136910.P8660322754635559017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P8660322754635559017

/-! ## A136910.P5294554521556141352

`∩[A136887(n+1), A136919(n+1)]`
-/

namespace A136910.P5294554521556141352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P5294554521556141352

/-! ## A136910.P13006658047071589813

`∩[A136889(n+1), A136911(n+1)]`
-/

namespace A136910.P13006658047071589813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P13006658047071589813

/-! ## A136910.P13486366753944960022

`∩[A136890(n+1), A136911(n+1)]`
-/

namespace A136910.P13486366753944960022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P13486366753944960022

/-! ## A136910.P14175150507016492985

`∩[A136897(n+1), A136913(n+1)]`
-/

namespace A136910.P14175150507016492985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P14175150507016492985

/-! ## A136910.P4961327547704949070

`∩[A136897(n+1), A136914(n+1)]`
-/

namespace A136910.P4961327547704949070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P4961327547704949070

/-! ## A136910.P5707851089274864332

`∩[A136897(n+1), A136916(n+1)]`
-/

namespace A136910.P5707851089274864332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136910.P5707851089274864332

/-!
# A136911: Numbers k such that k and k^2 use only the digits 0, 2, 5 and 6.

The programs for A136911, there is no canonical definition to state claims against.
-/

/-! ## A136911.P17408352370091769489

`∩[A136913(n+1), A136914(n+1)]`
-/

namespace A136911.P17408352370091769489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P17408352370091769489

/-! ## A136911.P9666051358887136087

`∩[A136888(n+1), A136912(n+1)]`
-/

namespace A136911.P9666051358887136087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P9666051358887136087

/-! ## A136911.P10803680916846388210

`∩[A136888(n+1), A136898(n+1)]`
-/

namespace A136911.P10803680916846388210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P10803680916846388210

/-! ## A136911.P6472378619202931537

`∩[A136898(n+1), A136912(n+1)]`
-/

namespace A136911.P6472378619202931537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P6472378619202931537

/-! ## A136911.P5850238511413212029

`∩[A136888(n+1), A136913(n+1)]`
-/

namespace A136911.P5850238511413212029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P5850238511413212029

/-! ## A136911.P5395249764179298533

`∩[A136888(n+1), A136914(n+1)]`
-/

namespace A136911.P5395249764179298533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P5395249764179298533

/-! ## A136911.P200006747738362523

`∩[A136912(n+1), A136913(n+1)]`
-/

namespace A136911.P200006747738362523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P200006747738362523

/-! ## A136911.P5069843819149541533

`∩[A136898(n+1), A136913(n+1)]`
-/

namespace A136911.P5069843819149541533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P5069843819149541533

/-! ## A136911.P12840174809789159386

`∩[A136912(n+1), A136914(n+1)]`
-/

namespace A136911.P12840174809789159386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P12840174809789159386

/-! ## A136911.P12557339933442890464

`∩[A136898(n+1), A136914(n+1)]`
-/

namespace A136911.P12557339933442890464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P12557339933442890464

/-! ## A136911.P2493262888050660086

`∩[A136823(n+1), A136888(n+1)]`
-/

namespace A136911.P2493262888050660086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P2493262888050660086

/-! ## A136911.P7783081881911231967

`∩[A136823(n+1), A136898(n+1)]`
-/

namespace A136911.P7783081881911231967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P7783081881911231967

/-! ## A136911.P14974842070630128899

`∩[A136823(n+1), A136912(n+1)]`
-/

namespace A136911.P14974842070630128899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P14974842070630128899

/-! ## A136911.P9299605217681063377

`∩[A136823(n+1), A136913(n+1)]`
-/

namespace A136911.P9299605217681063377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P9299605217681063377

/-! ## A136911.P13752185911175120961

`∩[A136823(n+1), A136914(n+1)]`
-/

namespace A136911.P13752185911175120961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136911.P13752185911175120961

/-!
# A136915: Numbers k such that k and k^2 use only the digits 0, 2, 5 and 7.

The programs for A136915, there is no canonical definition to state claims against.
-/

/-! ## A136915.P5740049786714241340

`∩[A136889(n+1), A136916(n+1)]`
-/

namespace A136915.P5740049786714241340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P5740049786714241340

/-! ## A136915.P3292276008443633967

`∩[A136889(n+1), A136917(n+1)]`
-/

namespace A136915.P3292276008443633967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P3292276008443633967

/-! ## A136915.P8912521453692811132

`∩[A136916(n+1), A136917(n+1)]`
-/

namespace A136915.P8912521453692811132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P8912521453692811132

/-! ## A136915.P15935490330216351956

`∩[A136899(n+1), A136917(n+1)]`
-/

namespace A136915.P15935490330216351956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P15935490330216351956

/-! ## A136915.P13904475284407620670

`∩[A136889(n+1), A136899(n+1)]`
-/

namespace A136915.P13904475284407620670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P13904475284407620670

/-! ## A136915.P13432595105640209407

`∩[A136899(n+1), A136912(n+1)]`
-/

namespace A136915.P13432595105640209407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P13432595105640209407

/-! ## A136915.P13901373266513232701

`∩[A136912(n+1), A136917(n+1)]`
-/

namespace A136915.P13901373266513232701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P13901373266513232701

/-! ## A136915.P16257232554341891927

`∩[A136899(n+1), A136916(n+1)]`
-/

namespace A136915.P16257232554341891927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P16257232554341891927

/-! ## A136915.P6883635719684399950

`∩[A136824(n+1), A136899(n+1)]`
-/

namespace A136915.P6883635719684399950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P6883635719684399950

/-! ## A136915.P6101018423093844956

`∩[A136824(n+1), A136912(n+1)]`
-/

namespace A136915.P6101018423093844956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P6101018423093844956

/-! ## A136915.P2299026913663712940

`∩[A136824(n+1), A136917(n+1)]`
-/

namespace A136915.P2299026913663712940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P2299026913663712940

/-! ## A136915.P8077338377017412412

`∩[A136889(n+1), A136912(n+1)]`
-/

namespace A136915.P8077338377017412412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P8077338377017412412

/-! ## A136915.P1039857833932539736

`∩[A136912(n+1), A136916(n+1)]`
-/

namespace A136915.P1039857833932539736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P1039857833932539736

/-! ## A136915.P4410158800342201634

`∩[A136824(n+1), A136889(n+1)]`
-/

namespace A136915.P4410158800342201634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P4410158800342201634

/-! ## A136915.P14125585328960049635

`∩[A136824(n+1), A136916(n+1)]`
-/

namespace A136915.P14125585328960049635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136915.P14125585328960049635

/-!
# A136916: Numbers k such that k and k^2 use only the digits 0, 2, 5, 7 and 8.

The programs for A136916, there is no canonical definition to state claims against.
-/

/-! ## A136916.P17250928906022303879

`A207543(A080893(n))+A169964(n+1)`
-/

namespace A136916.P17250928906022303879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 (A080893 n).toNat + A169964 (n + 1)

end

end A136916.P17250928906022303879

/-!
# A136918: Numbers k such that k and k^2 use only the digits 0, 2, 5 and 8.

The programs for A136918, there is no canonical definition to state claims against.
-/

/-! ## A136918.P4263867210834858014

`∩[A136890(n+1), A136916(n+1)]`
-/

namespace A136918.P4263867210834858014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P4263867210834858014

/-! ## A136918.P9738587985767503118

`∩[A136916(n+1), A136919(n+1)]`
-/

namespace A136918.P9738587985767503118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P9738587985767503118

/-! ## A136918.P18297392276263527946

`∩[A136890(n+1), A136919(n+1)]`
-/

namespace A136918.P18297392276263527946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P18297392276263527946

/-! ## A136918.P3496774280045998428

`∩[A136913(n+1), A136916(n+1)]`
-/

namespace A136918.P3496774280045998428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P3496774280045998428

/-! ## A136918.P7112301933095804257

`∩[A136890(n+1), A136913(n+1)]`
-/

namespace A136918.P7112301933095804257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P7112301933095804257

/-! ## A136918.P775303192954762048

`∩[A136913(n+1), A136919(n+1)]`
-/

namespace A136918.P775303192954762048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P775303192954762048

/-! ## A136918.P17616173847856957794

`∩[A136900(n+1), A136913(n+1)]`
-/

namespace A136918.P17616173847856957794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P17616173847856957794

/-! ## A136918.P1840257094053621564

`∩[A136825(n+1), A136900(n+1)]`
-/

namespace A136918.P1840257094053621564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P1840257094053621564

/-! ## A136918.P6714935293460770124

`∩[A136825(n+1), A136913(n+1)]`
-/

namespace A136918.P6714935293460770124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P6714935293460770124

/-! ## A136918.P1884791763425239283

`∩[A136890(n+1), A136900(n+1)]`
-/

namespace A136918.P1884791763425239283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P1884791763425239283

/-! ## A136918.P97232612277936071

`∩[A136900(n+1), A136916(n+1)]`
-/

namespace A136918.P97232612277936071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P97232612277936071

/-! ## A136918.P6158744071979338465

`∩[A136825(n+1), A136890(n+1)]`
-/

namespace A136918.P6158744071979338465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P6158744071979338465

/-! ## A136918.P2176609290526505541

`∩[A136825(n+1), A136916(n+1)]`
-/

namespace A136918.P2176609290526505541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P2176609290526505541

/-! ## A136918.P17466598532211436221

`∩[A136825(n+1), A136919(n+1)]`
-/

namespace A136918.P17466598532211436221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P17466598532211436221

/-! ## A136918.P17299776631979817900

`∩[A136900(n+1), A136919(n+1)]`
-/

namespace A136918.P17299776631979817900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136918.P17299776631979817900

/-!
# A136919: Numbers k such that k and k^2 use only the digits 0, 2, 5, 8 and 9.

The programs for A136919, there is no canonical definition to state claims against.
-/

/-! ## A136919.P2653010548842074287

`A136920(A032551(n+1)+1)`
-/

namespace A136919.P2653010548842074287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136920 (A032551 (n + 1) + 1).toNat

end

end A136919.P2653010548842074287

/-! ## A136919.P2929206363088543144

`A001281(2*A136920(n+1))`
-/

namespace A136919.P2929206363088543144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A136920 (n + 1)).toNat

end

end A136919.P2929206363088543144

/-! ## A136919.P13626561746985991427

`A004526(2*A136920(n+1))`
-/

namespace A136919.P13626561746985991427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A136920 (n + 1)).toNat

end

end A136919.P13626561746985991427

/-! ## A136919.P2951158748309962607

`A142150(2*A136920(n+1))`
-/

namespace A136919.P2951158748309962607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * A136920 (n + 1)).toNat

end

end A136919.P2951158748309962607

/-!
# A136920: Numbers k such that k and k^2 use only the digits 0, 2, 5 and 9.

The programs for A136920, there is no canonical definition to state claims against.
-/

/-! ## A136920.P12875159903232471959

`∩[A136914(n+1), A136917(n+1)]`
-/

namespace A136920.P12875159903232471959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P12875159903232471959

/-! ## A136920.P6535710456559348005

`∩[A136914(n+1), A136919(n+1)]`
-/

namespace A136920.P6535710456559348005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P6535710456559348005

/-! ## A136920.P4381104796307923174

`∩[A136891(n+1), A136917(n+1)]`
-/

namespace A136920.P4381104796307923174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P4381104796307923174

/-! ## A136920.P12510967588166677327

`∩[A136917(n+1), A136919(n+1)]`
-/

namespace A136920.P12510967588166677327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P12510967588166677327

/-! ## A136920.P9829302301814741503

`∩[A136891(n+1), A136914(n+1)]`
-/

namespace A136920.P9829302301814741503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P9829302301814741503

/-! ## A136920.P13319356641185254632

`∩[A136891(n+1), A136919(n+1)]`
-/

namespace A136920.P13319356641185254632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P13319356641185254632

/-! ## A136920.P14207474388926871223

`∩[A136891(n+1), A136901(n+1)]`
-/

namespace A136920.P14207474388926871223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P14207474388926871223

/-! ## A136920.P17993146002386918623

`∩[A136826(n+1), A136891(n+1)]`
-/

namespace A136920.P17993146002386918623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P17993146002386918623

/-! ## A136920.P11841745212329031608

`∩[A136826(n+1), A136901(n+1)]`
-/

namespace A136920.P11841745212329031608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P11841745212329031608

/-! ## A136920.P9412747434508950957

`∩[A136901(n+1), A136917(n+1)]`
-/

namespace A136920.P9412747434508950957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P9412747434508950957

/-! ## A136920.P2344920327156971292

`∩[A136826(n+1), A136917(n+1)]`
-/

namespace A136920.P2344920327156971292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P2344920327156971292

/-! ## A136920.P6106352104403317310

`∩[A136901(n+1), A136914(n+1)]`
-/

namespace A136920.P6106352104403317310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P6106352104403317310

/-! ## A136920.P5962599489543349870

`∩[A136826(n+1), A136914(n+1)]`
-/

namespace A136920.P5962599489543349870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P5962599489543349870

/-! ## A136920.P67355255393591276

`∩[A136901(n+1), A136919(n+1)]`
-/

namespace A136920.P67355255393591276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P67355255393591276

/-! ## A136920.P5718651623827854601

`∩[A136826(n+1), A136919(n+1)]`
-/

namespace A136920.P5718651623827854601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136920.P5718651623827854601

/-!
# A136921: Numbers k such that k and k^2 use only the digits 0, 2, 6 and 7.

The programs for A136921, there is no canonical definition to state claims against.
-/

/-! ## A136921.P9734478589458631608

`ogf(26x/(1-10x))`
-/

namespace A136921.P9734478589458631608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 26] [1, -10] n

end

end A136921.P9734478589458631608

/-! ## A136921.P6624152120878206775

`10*a(n-1)` with `a(0)=0, a(1)=26`
-/

namespace A136921.P6624152120878206775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 26] fun n a =>
  10 * a (n - 1)

end

end A136921.P6624152120878206775

/-! ## A136921.P14351192984037109980

`26*floor(10^(n-1))`
-/

namespace A136921.P14351192984037109980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A136921.P14351192984037109980

/-! ## A136921.P16198264771090186199

`lcm(13, 2*A178501(n))`
-/

namespace A136921.P16198264771090186199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (2 * A178501 n)

end

end A136921.P16198264771090186199

/-! ## A136921.P9977508054176259787

`∑[13*A337855(n+1)]`
-/

namespace A136921.P9977508054176259787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A337855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136921.P9977508054176259787

/-!
# A136925: Numbers k such that k and k^2 use only the digits 0, 2, 7, 8 and 9.

The programs for A136925, there is no canonical definition to state claims against.
-/

/-! ## A136925.P6218166436664187121

`27*A000196(A063009(n))`
-/

namespace A136925.P6218166436664187121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A000196 (A063009 n).toNat

end

end A136925.P6218166436664187121

/-!
# A136926: Numbers k such that k and k^2 use only the digits 0, 2, 7 and 9.

The programs for A136926, there is no canonical definition to state claims against.
-/

/-! ## A136926.P2713048636662942070

`ogf(27x/(1-10x))`
-/

namespace A136926.P2713048636662942070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 27] [1, -10] n

end

end A136926.P2713048636662942070

/-! ## A136926.P9086658921016077951

`10*a(n-1)` with `a(0)=0, a(1)=27`
-/

namespace A136926.P9086658921016077951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 27] fun n a =>
  10 * a (n - 1)

end

end A136926.P9086658921016077951

/-! ## A136926.P3301635653363166375

`27*floor(10^(n-1))`
-/

namespace A136926.P3301635653363166375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A136926.P3301635653363166375

/-! ## A136926.P4904815025639352933

`record[Δ[∏[11-a(n-1)]]]` with `a(0)=3, a(1)=1`
-/

namespace A136926.P4904815025639352933
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f3 =>
  11 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136926.P4904815025639352933

/-! ## A136926.P12709724272508601538

`Δ[lcm(10^(n-1), a(n-1))]` with `a(0)=3`
-/

namespace A136926.P12709724272508601538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.lcm (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (f1 (n - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A136926.P12709724272508601538

/-!
# A136927: Numbers k such that k and k^2 use only the digits 0, 3, 4, 5 and 6.

The programs for A136927, there is no canonical definition to state claims against.
-/

/-! ## A136927.P15949398045848336907

`A204093(n)+A011869(A060115(n))`
-/

namespace A136927.P15949398045848336907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n + A011869 (A060115 n).toNat

end

end A136927.P15949398045848336907

/-! ## A136927.P15036570492033292528

`A007088(n)+A004526(A076289(n+1))`
-/

namespace A136927.P15036570492033292528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + A004526 (A076289 (n + 1)).toNat

end

end A136927.P15036570492033292528

/-!
# A136929: Numbers k such that k and k^2 use only the digits 0, 3, 4, 5 and 9.

The programs for A136929, there is no canonical definition to state claims against.
-/

/-! ## A136929.P9658155759482273965

`A008592(a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A136929.P9658155759482273965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A008592 (a (n - 1)).toNat

end

end A136929.P9658155759482273965

/-! ## A136929.P17585023421104549106

`A030687(a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A136929.P17585023421104549106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A030687 (a (n - 1)).toNat

end

end A136929.P17585023421104549106

/-!
# A136931: Numbers k such that k and k^2 use only the digits 0, 3, 4, 6 and 8.

The programs for A136931, there is no canonical definition to state claims against.
-/

/-! ## A136931.P7501451869567889266

`record[12*n/A113581(n)]`
-/

namespace A136931.P7501451869567889266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * n : ℚ) / (A113581 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136931.P7501451869567889266

/-! ## A136931.P4632851955652988816

`A001613(6*A136846(n+1))`
-/

namespace A136931.P4632851955652988816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (6 * A136846 (n + 1)).toNat

end

end A136931.P4632851955652988816

/-! ## A136931.P3485708794251471577

`A001613(6*A136853(n+1))`
-/

namespace A136931.P3485708794251471577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (6 * A136853 (n + 1)).toNat

end

end A136931.P3485708794251471577

/-! ## A136931.P11691643529877335276

`A059707(6*A136846(n+1))`
-/

namespace A136931.P11691643529877335276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (6 * A136846 (n + 1)).toNat

end

end A136931.P11691643529877335276

/-!
# A136933: Numbers k such that k and k^2 use only the digits 0, 3, 4, 7 and 8.

The programs for A136933, there is no canonical definition to state claims against.
-/

/-! ## A136933.P14420090570877233593

`A136958(A156136(∑[n]))`
-/

namespace A136933.P14420090570877233593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136958 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A136933.P14420090570877233593

/-! ## A136933.P1401523731100899030

`A136958(A043315(n+1))`
-/

namespace A136933.P1401523731100899030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136958 (A043315 (n + 1)).toNat

end

end A136933.P1401523731100899030

/-! ## A136933.P14852987221872354437

`A136958(A044912(n+1))`
-/

namespace A136933.P14852987221872354437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136958 (A044912 (n + 1)).toNat

end

end A136933.P14852987221872354437

/-! ## A136933.P8600997167382251728

`A136958(A055649(n+1))`
-/

namespace A136933.P8600997167382251728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136958 (A055649 (n + 1)).toNat

end

end A136933.P8600997167382251728

/-! ## A136933.P7527793811032651471

`A136958(A061378(n+1))`
-/

namespace A136933.P7527793811032651471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136958 (A061378 (n + 1)).toNat

end

end A136933.P7527793811032651471

/-!
# A136936: Numbers k such that k and k^2 use only the digits 0, 3, 5 and 6.

The programs for A136936, there is no canonical definition to state claims against.
-/

/-! ## A136936.P9621962765340670366

`∩[A136927(n+1), A136937(n+1)]`
-/

namespace A136936.P9621962765340670366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136936.P9621962765340670366

/-! ## A136936.P16840670559199414971

`∩[A136843(n+1), A136939(n+1)]`
-/

namespace A136936.P16840670559199414971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136936.P16840670559199414971

/-! ## A136936.P18432606990461160383

`∩[A136937(n+1), A136939(n+1)]`
-/

namespace A136936.P18432606990461160383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136936.P18432606990461160383

/-! ## A136936.P8299595469819151248

`∩[A136843(n+1), A136937(n+1)]`
-/

namespace A136936.P8299595469819151248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136936.P8299595469819151248

/-! ## A136936.P13029249371027713631

`∩[A136927(n+1), A136938(n+1)]`
-/

namespace A136936.P13029249371027713631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136936.P13029249371027713631

/-!
# A136937: Numbers k such that k and k^2 use only the digits 0, 3, 5, 6 and 7.

The programs for A136937, there is no canonical definition to state claims against.
-/

/-! ## A136937.P18373821655703694763

`A217657(A136964(n+1))`
-/

namespace A136937.P18373821655703694763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A136964 (n + 1)).toNat

end

end A136937.P18373821655703694763

/-!
# A136939: Numbers k such that k and k^2 use only the digits 0, 3, 5, 6 and 9.

The programs for A136939, there is no canonical definition to state claims against.
-/

/-! ## A136939.P13781672371592461155

`A014682(2*A136944(n+1))`
-/

namespace A136939.P13781672371592461155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A136944 (n + 1)).toNat

end

end A136939.P13781672371592461155

/-! ## A136939.P10376272337452171815

`A014682(2*A136946(n+1))`
-/

namespace A136939.P10376272337452171815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A136946 (n + 1)).toNat

end

end A136939.P10376272337452171815

/-! ## A136939.P12847908691694013155

`A273943(2*A136944(n+1))`
-/

namespace A136939.P12847908691694013155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * A136944 (n + 1)).toNat

end

end A136939.P12847908691694013155

/-! ## A136939.P12052765429916327176

`A273943(2*A136946(n+1))`
-/

namespace A136939.P12052765429916327176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * A136946 (n + 1)).toNat

end

end A136939.P12052765429916327176

/-! ## A136939.P9634906312951050420

`A136944(n+1)%A132839(n)`
-/

namespace A136939.P9634906312951050420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136944 (n + 1)) (A132839 n)

end

end A136939.P9634906312951050420

/-!
# A136942: Numbers k such that k and k^2 use only the digits 0, 3, 5 and 9.

The programs for A136942, there is no canonical definition to state claims against.
-/

/-! ## A136942.P3291407498297199025

`∩[A136929(n+1), A136940(n+1)]`
-/

namespace A136942.P3291407498297199025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136942.P3291407498297199025

/-! ## A136942.P18345828388382610889

`∩[A136846(n+1), A136941(n+1)]`
-/

namespace A136942.P18345828388382610889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136942.P18345828388382610889

/-! ## A136942.P978099484587806816

`∩[A136846(n+1), A136939(n+1)]`
-/

namespace A136942.P978099484587806816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136942.P978099484587806816

/-! ## A136942.P6645859605170595349

`∩[A136939(n+1), A136941(n+1)]`
-/

namespace A136942.P6645859605170595349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136942.P6645859605170595349

/-! ## A136942.P6797474884396809485

`∩[A136929(n+1), A136941(n+1)]`
-/

namespace A136942.P6797474884396809485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136942.P6797474884396809485

/-!
# A136943: Numbers k such that k and k^2 use only the digits 0, 3, 6, 7 and 8.

The programs for A136943, there is no canonical definition to state claims against.
-/

/-! ## A136943.P5438944963810369148

`6*A029797(A292125(n+1))`
-/

namespace A136943.P5438944963810369148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A029797 (A292125 (n + 1)).toNat

end

end A136943.P5438944963810369148

/-! ## A136943.P11431429104907000842

`A004396(9*A029797(n+1))`
-/

namespace A136943.P11431429104907000842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (9 * A029797 (n + 1)).toNat

end

end A136943.P11431429104907000842

/-!
# A136944: Numbers k such that k and k^2 use only the digits 0, 3, 6, 7 and 9.

The programs for A136944, there is no canonical definition to state claims against.
-/

/-! ## A136944.P11078925725746330777

`A136946(∑[∑[A097479(n)]])`
-/

namespace A136944.P11078925725746330777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136946 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136944.P11078925725746330777

/-! ## A136944.P13716930749159492362

`record[A136946(A299481(n+1))]`
-/

namespace A136944.P13716930749159492362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136946 (A299481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136944.P13716930749159492362

/-! ## A136944.P16312462490250816225

`A136946(n+1)%A002919(n)`
-/

namespace A136944.P16312462490250816225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136946 (n + 1)) (A002919 n)

end

end A136944.P16312462490250816225

/-! ## A136944.P13897150032024938544

`filter[A136939(n+1), A093719(#)]`
-/

namespace A136944.P13897150032024938544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A136944.P13897150032024938544

/-! ## A136944.P9252374195927909242

`filter[A136946(n+1), A093719(#)]`
-/

namespace A136944.P9252374195927909242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A136944.P9252374195927909242

/-!
# A136946: Numbers k such that k and k^2 use only the digits 0, 3, 6 and 9.

The programs for A136946, there is no canonical definition to state claims against.
-/

/-! ## A136946.P17879356431752407093

`∩[A136894(n+1), A136944(n+1)]`
-/

namespace A136946.P17879356431752407093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P17879356431752407093

/-! ## A136946.P6947185047019751798

`∩[A136932(n+1), A136944(n+1)]`
-/

namespace A136946.P6947185047019751798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P6947185047019751798

/-! ## A136946.P560908698818898633

`∩[A136894(n+1), A136932(n+1)]`
-/

namespace A136946.P560908698818898633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P560908698818898633

/-! ## A136946.P8150128990298565691

`∩[A136850(n+1), A136945(n+1)]`
-/

namespace A136946.P8150128990298565691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P8150128990298565691

/-! ## A136946.P6856020071770007599

`∩[A136932(n+1), A136939(n+1)]`
-/

namespace A136946.P6856020071770007599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P6856020071770007599

/-! ## A136946.P15220531230687969288

`∩[A136939(n+1), A136944(n+1)]`
-/

namespace A136946.P15220531230687969288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P15220531230687969288

/-! ## A136946.P6717351393572936339

`∩[A136894(n+1), A136939(n+1)]`
-/

namespace A136946.P6717351393572936339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P6717351393572936339

/-! ## A136946.P10773973070117681798

`∩[A136939(n+1), A136945(n+1)]`
-/

namespace A136946.P10773973070117681798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P10773973070117681798

/-! ## A136946.P6813567416322580464

`∩[A136932(n+1), A136945(n+1)]`
-/

namespace A136946.P6813567416322580464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P6813567416322580464

/-! ## A136946.P8669680887786292495

`∩[A136850(n+1), A136939(n+1)]`
-/

namespace A136946.P8669680887786292495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P8669680887786292495

/-! ## A136946.P17048238432162639066

`∩[A136944(n+1), A136945(n+1)]`
-/

namespace A136946.P17048238432162639066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P17048238432162639066

/-! ## A136946.P1863771976772513395

`∩[A136894(n+1), A136945(n+1)]`
-/

namespace A136946.P1863771976772513395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P1863771976772513395

/-! ## A136946.P13812181866358269486

`∩[A136850(n+1), A136932(n+1)]`
-/

namespace A136946.P13812181866358269486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P13812181866358269486

/-! ## A136946.P8631279618313220017

`∩[A136850(n+1), A136944(n+1)]`
-/

namespace A136946.P8631279618313220017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P8631279618313220017

/-! ## A136946.P2986991611493749973

`∩[A136850(n+1), A136894(n+1)]`
-/

namespace A136946.P2986991611493749973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136946.P2986991611493749973

/-!
# A136949: Numbers k such that k and k^2 use only the digits 0, 4, 5, 6 and 8.

The programs for A136949, there is no canonical definition to state claims against.
-/

/-! ## A136949.P16607585360925041496

`A008592(a(n-1))` with `a(0)=0, a(1)=8`
-/

namespace A136949.P16607585360925041496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  A008592 (a (n - 1)).toNat

end

end A136949.P16607585360925041496

/-! ## A136949.P3801333664880845036

`A057169(a(n-1))` with `a(0)=0, a(1)=8`
-/

namespace A136949.P3801333664880845036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  A057169 (a (n - 1)).toNat

end

end A136949.P3801333664880845036

/-!
# A136950: Numbers k such that k and k^2 use only the digits 0, 4, 5, 6 and 9.

The programs for A136950, there is no canonical definition to state claims against.
-/

/-! ## A136950.P9745494346198386887

`A136957(A004918(n+1)+1)`
-/

namespace A136950.P9745494346198386887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136957 (A004918 (n + 1) + 1).toNat

end

end A136950.P9745494346198386887

/-! ## A136950.P13238655049970587040

`A047900(n+1)%A166219(n)`
-/

namespace A136950.P13238655049970587040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047900 (n + 1)) (A166219 n)

end

end A136950.P13238655049970587040

/-! ## A136950.P2088561300992780826

`A136957(n+1)%A166219(n)`
-/

namespace A136950.P2088561300992780826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136957 (n + 1)) (A166219 n)

end

end A136950.P2088561300992780826

/-! ## A136950.P16238602796350935771

`∩[A136862(n+1), A136932(n+1)]`
-/

namespace A136950.P16238602796350935771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136950.P16238602796350935771

/-! ## A136950.P14062765878203278517

`∩[A136862(n+1), A136955(n+1)]`
-/

namespace A136950.P14062765878203278517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136950.P14062765878203278517

/-!
# A136952: Numbers k such that k and k^2 use only the digits 0, 4, 5, 7 and 9.

The programs for A136952, there is no canonical definition to state claims against.
-/

/-! ## A136952.P11601273805117536418

`A136960((val(n+1, 10)+1)^n+n)`
-/

namespace A136952.P11601273805117536418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136960 ((SequenceMachineLib.valuation (n + 1) 10 + 1) ^ n + n)

end

end A136952.P11601273805117536418

/-! ## A136952.P12098090280827170978

`A136960(A032555(n+1))`
-/

namespace A136952.P12098090280827170978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136960 (A032555 (n + 1)).toNat

end

end A136952.P12098090280827170978

/-! ## A136952.P5726048097017475748

`A136960(A032557(n+1))`
-/

namespace A136952.P5726048097017475748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136960 (A032557 (n + 1)).toNat

end

end A136952.P5726048097017475748

/-! ## A136952.P6716395010735933766

`A136960(A032559(n+1))`
-/

namespace A136952.P6716395010735933766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136960 (A032559 (n + 1)).toNat

end

end A136952.P6716395010735933766

/-! ## A136952.P18409365903115495614

`A136960(A032563(n+1))`
-/

namespace A136952.P18409365903115495614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136960 (A032563 (n + 1)).toNat

end

end A136952.P18409365903115495614

/-!
# A136955: Numbers k such that k and k^2 use only the digits 0, 4, 6, 7 and 9.

The programs for A136955, there is no canonical definition to state claims against.
-/

/-! ## A136955.P9339064867798179107

`A136956(n+1)-A025669(A095837(n+1))`
-/

namespace A136955.P9339064867798179107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136956 (n + 1) - A025669 (A095837 (n + 1)).toNat

end

end A136955.P9339064867798179107

/-!
# A136956: Numbers k such that k and k^2 use only the digits 0, 4, 6, 8 and 9.

The programs for A136956, there is no canonical definition to state claims against.
-/

/-! ## A136956.P7183764749865523989

`record[and((-1)^n, A107626(A002265(n)+1))]`
-/

namespace A136956.P7183764749865523989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A107626 (A002265 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136956.P7183764749865523989

/-! ## A136956.P5233967542381179098

`A057427(n)*A107626(A028310(n))`
-/

namespace A136956.P5233967542381179098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A107626 (A028310 n).toNat

end

end A136956.P5233967542381179098

/-! ## A136956.P524485126394932950

`A107626(A028310(n))%A027849(n)²`
-/

namespace A136956.P524485126394932950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107626 (A028310 n).toNat) (A027849 n ^ 2)

end

end A136956.P524485126394932950

/-! ## A136956.P3536875945604437694

`A107626(A028310(n))-4*A000038(n)`
-/

namespace A136956.P3536875945604437694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107626 (A028310 n).toNat - 4 * A000038 n

end

end A136956.P3536875945604437694

/-! ## A136956.P17165810178470672817

`A107626(A028310(n))%A333344(n)`
-/

namespace A136956.P17165810178470672817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107626 (A028310 n).toNat) (A333344 n)

end

end A136956.P17165810178470672817

/-!
# A136957: Numbers k such that k and k^2 use only the digits 0, 4, 6 and 9.

The programs for A136957, there is no canonical definition to state claims against.
-/

/-! ## A136957.P5371910891446714440

`10*a(n-1)` with `a(0)=0, a(1)=64`
-/

namespace A136957.P5371910891446714440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 64] fun n a =>
  10 * a (n - 1)

end

end A136957.P5371910891446714440

/-! ## A136957.P7304664989560976220

`64*floor(10^(n-1))`
-/

namespace A136957.P7304664989560976220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A136957.P7304664989560976220

/-! ## A136957.P17755912871049729448

`and(-10, A047900(n+1))`
-/

namespace A136957.P17755912871049729448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-10) (A047900 (n + 1))

end

end A136957.P17755912871049729448

/-! ## A136957.P6295641042230330571

`record[64*A182979(n+1)]`
-/

namespace A136957.P6295641042230330571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A182979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136957.P6295641042230330571

/-! ## A136957.P2319183192190926748

`record[64*A276379(n+1)]`
-/

namespace A136957.P2319183192190926748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A276379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136957.P2319183192190926748

/-!
# A136958: Numbers k such that k and k^2 use only the digits 0, 4, 7 and 8.

The programs for A136958, there is no canonical definition to state claims against.
-/

/-! ## A136958.P9581005357841364955

`∩[A136864(n+1), A136954(n+1)]`
-/

namespace A136958.P9581005357841364955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136958.P9581005357841364955

/-! ## A136958.P16623063336155921799

`∩[A136864(n+1), A136951(n+1)]`
-/

namespace A136958.P16623063336155921799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136958.P16623063336155921799

/-! ## A136958.P8295023510209625737

`∩[A136906(n+1), A136959(n+1)]`
-/

namespace A136958.P8295023510209625737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136958.P8295023510209625737

/-! ## A136958.P14120351998100895317

`∩[A136951(n+1), A136954(n+1)]`
-/

namespace A136958.P14120351998100895317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136958.P14120351998100895317

/-! ## A136958.P7395741978807544677

`∩[A136864(n+1), A136959(n+1)]`
-/

namespace A136958.P7395741978807544677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136958.P7395741978807544677

/-!
# A136960: Numbers k such that k and k^2 use only the digits 0, 4, 7 and 9.

The programs for A136960, there is no canonical definition to state claims against.
-/

/-! ## A136960.P15053125707755776182

`∩[A136865(n+1), A136959(n+1)]`
-/

namespace A136960.P15053125707755776182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P15053125707755776182

/-! ## A136960.P9803467501072702795

`∩[A136952(n+1), A136955(n+1)]`
-/

namespace A136960.P9803467501072702795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P9803467501072702795

/-! ## A136960.P3609111252877824875

`∩[A136865(n+1), A136907(n+1)]`
-/

namespace A136960.P3609111252877824875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P3609111252877824875

/-! ## A136960.P2423600680241978713

`∩[A136907(n+1), A136959(n+1)]`
-/

namespace A136960.P2423600680241978713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P2423600680241978713

/-! ## A136960.P16981605318686505698

`∩[A136907(n+1), A136955(n+1)]`
-/

namespace A136960.P16981605318686505698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P16981605318686505698

/-! ## A136960.P9900535412995244989

`∩[A136907(n+1), A136952(n+1)]`
-/

namespace A136960.P9900535412995244989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P9900535412995244989

/-! ## A136960.P1862934969578169149

`∩[A076643(n+1)-1, A136952(n+1)]`
-/

namespace A136960.P1862934969578169149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076643 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P1862934969578169149

/-! ## A136960.P11113129574182293650

`∩[A136865(n+1), A136955(n+1)]`
-/

namespace A136960.P11113129574182293650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P11113129574182293650

/-! ## A136960.P10884420674004651130

`∩[A136952(n+1), A136959(n+1)]`
-/

namespace A136960.P10884420674004651130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P10884420674004651130

/-! ## A136960.P15991828808333901058

`∩[A136955(n+1), A136959(n+1)]`
-/

namespace A136960.P15991828808333901058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136960.P15991828808333901058

/-!
# A136961: Numbers k such that k and k^2 use only the digits 0, 4, 8 and 9.

The programs for A136961, there is no canonical definition to state claims against.
-/

/-! ## A136961.P4843564705819257057

`∩[A136935(n+1), A136956(n+1)]`
-/

namespace A136961.P4843564705819257057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136961.P4843564705819257057

/-! ## A136961.P7604722926459331391

`∩[A136956(n+1), A136959(n+1)]`
-/

namespace A136961.P7604722926459331391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136961.P7604722926459331391

/-! ## A136961.P16079349144218745403

`∩[A136935(n+1), A136959(n+1)]`
-/

namespace A136961.P16079349144218745403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136961.P16079349144218745403

/-!
# A136962: Numbers k such that k and k^2 use only the digits 0, 5, 6 and 7.

The programs for A136962, there is no canonical definition to state claims against.
-/

/-! ## A136962.P1696678361620409226

`10*a(n-1)` with `a(0)=0, a(1)=76`
-/

namespace A136962.P1696678361620409226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 76] fun n a =>
  10 * a (n - 1)

end

end A136962.P1696678361620409226

/-! ## A136962.P521934635480100096

`2*38*round(10^(n-1))`
-/

namespace A136962.P521934635480100096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (38 * SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A136962.P521934635480100096

/-! ## A136962.P18265405388063804845

`record[76*A054841(n+1)]`
-/

namespace A136962.P18265405388063804845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  76 * A054841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136962.P18265405388063804845

/-! ## A136962.P9964064161866405360

`∩[A029943(n+1), A136963(n+1)]`
-/

namespace A136962.P9964064161866405360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136962.P9964064161866405360

/-! ## A136962.P15147350493615728835

`∩[A018834(n+1), A136963(n+1)]`
-/

namespace A136962.P15147350493615728835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136962.P15147350493615728835

/-!
# A136967: Numbers k such that k and k^2 use only the digits 1, 2, 3 and 4.

The programs for A136967, there is no canonical definition to state claims against.
-/

/-! ## A136967.P3735877831429680374

`A007931(or(n+1, C(n, 4)))`
-/

namespace A136967.P3735877831429680374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Nat.lor (n + 1) (Nat.choose n 4))

end

end A136967.P3735877831429680374

/-! ## A136967.P12527818413457577755

`eq[n, A065031(floor(2*ϕ*n))]`
-/

namespace A136967.P12527818413457577755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136967.P12527818413457577755

/-! ## A136967.P14695520797368542073

`record[A275536(∑[(n+1)/∏{p}[n+1, #]])]`
-/

namespace A136967.P14695520797368542073
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136967.P14695520797368542073

/-!
# A136968: Numbers k such that k and k^2 use only the digits 1, 2, 3, 4 and 5.

The programs for A136968, there is no canonical definition to state claims against.
-/

/-! ## A136968.P14143144855610890054

`eq[A329792(n²)², A329792(n)]`
-/

namespace A136968.P14143144855610890054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329792 (n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329792 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136968.P14143144855610890054

/-! ## A136968.P11810857772291229346

`∪[A136967(A044818(n+1)), A136973(n+1)]`
-/

namespace A136968.P11810857772291229346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136967 (A044818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136968.P11810857772291229346

/-! ## A136968.P5954273236617384936

`∪[A136967(A044818(n+1)), A136975(n+1)]`
-/

namespace A136968.P5954273236617384936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136967 (A044818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136968.P5954273236617384936

/-! ## A136968.P4557529381805124921

`∪[A136967(n+1), A136973(A228050(n+3))]`
-/

namespace A136968.P4557529381805124921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136973 (A228050 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136968.P4557529381805124921

/-!
# A136969: Numbers k such that k and k^2 use only the digits 1, 2, 3, 4 and 6.

The programs for A136969, there is no canonical definition to state claims against.
-/

/-! ## A136969.P7896352070329900019

`A342126(n)+A051125(A029759(n))`
-/

namespace A136969.P7896352070329900019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 n + A051125 (A029759 n).toNat

end

end A136969.P7896352070329900019

/-!
# A136970: Numbers k such that k and k^2 use only the digits 1, 2, 3, 4 and 7.

The programs for A136970, there is no canonical definition to state claims against.
-/

/-! ## A136970.P7373016024903412900

`A136967(n+1)%∑[A090866(n+1)]`
-/

namespace A136970.P7373016024903412900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136967 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136970.P7373016024903412900

/-! ## A136970.P12411212713901796261

`record[A007931(n+1)%A336778(n+2)]`
-/

namespace A136970.P12411212713901796261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007931 (n + 1)) (A336778 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136970.P12411212713901796261

/-! ## A136970.P5560736580959639054

`A083019(A292399(n+1))*A114034(n+1)`
-/

namespace A136970.P5560736580959639054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083019 (A292399 (n + 1)).toNat * A114034 (n + 1)

end

end A136970.P5560736580959639054

/-!
# A136972: Numbers k such that k and k^2 use only the digits 1, 2, 3, 4 and 9.

The programs for A136972, there is no canonical definition to state claims against.
-/

/-! ## A136972.P5644487861853673209

`∪[A136985(n+1), A137001(n+2)]`
-/

namespace A136972.P5644487861853673209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137001 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136972.P5644487861853673209

/-! ## A136972.P8418421562467714954

`∪[A136967(n+1), A136985(n+1)]`
-/

namespace A136972.P8418421562467714954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136972.P8418421562467714954

/-! ## A136972.P11603192697168752435

`∪[A136970(n+1), A136985(n+1)]`
-/

namespace A136972.P11603192697168752435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136972.P11603192697168752435

/-! ## A136972.P5165370532386068742

`∪[A136985(n+1), A136996(n+1)]`
-/

namespace A136972.P5165370532386068742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136972.P5165370532386068742

/-!
# A136973: Numbers k such that k and k^2 use only the digits 1, 2, 3 and 5.

The programs for A136973, there is no canonical definition to state claims against.
-/

/-! ## A136973.P10803941743961621729

`∩[A136968(n+1), A136975(n+1)]`
-/

namespace A136973.P10803941743961621729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136973.P10803941743961621729

/-! ## A136973.P5687785579226543096

`∩[A136976(n+1), A136977(n+1)]`
-/

namespace A136973.P5687785579226543096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136973.P5687785579226543096

/-! ## A136973.P10672025235906220218

`∩[A136968(n+1), A136977(n+1)]`
-/

namespace A136973.P10672025235906220218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136973.P10672025235906220218

/-! ## A136973.P1616166585333142303

`∩[A136975(n+1), A136977(n+1)]`
-/

namespace A136973.P1616166585333142303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136973.P1616166585333142303

/-! ## A136973.P1658496815821348834

`∩[A136968(n+1), A136976(n+1)]`
-/

namespace A136973.P1658496815821348834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136973.P1658496815821348834

/-!
# A136974: Numbers k such that k and k^2 use only the digits 1, 2, 3, 5 and 6.

The programs for A136974, there is no canonical definition to state claims against.
-/

/-! ## A136974.P9873395235985835255

`∩[A008851(n+1), A035057(n+1)]`
-/

namespace A136974.P9873395235985835255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136974.P9873395235985835255

/-!
# A136975: Numbers k such that k and k^2 use only the digits 1, 2, 3, 5 and 7.

The programs for A136975, there is no canonical definition to state claims against.
-/

/-! ## A136975.P1692643550699149376

`∩[A001742(n+1), A034905(n+1)]`
-/

namespace A136975.P1692643550699149376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136975.P1692643550699149376

/-! ## A136975.P4942682200377047016

`∪[A137007(n+1), A136973(n+5)]`
-/

namespace A136975.P4942682200377047016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136973 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136975.P4942682200377047016

/-!
# A136976: Numbers k such that k and k^2 use only the digits 1, 2, 3, 5 and 8.

The programs for A136976, there is no canonical definition to state claims against.
-/

/-! ## A136976.P5348169671949171549

`A107128(A136975(n+1)^A044931(n+1))`
-/

namespace A136976.P5348169671949171549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (SequenceMachineLib.roundAway ((A136975 (n + 1) : ℚ) ^ (A044931 (n + 1) : ℤ))).toNat

end

end A136976.P5348169671949171549

/-! ## A136976.P591446810465462890

`A107128(A136975(n+1)^A076398(n+1))`
-/

namespace A136976.P591446810465462890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (SequenceMachineLib.roundAway ((A136975 (n + 1) : ℚ) ^ (A076398 (n + 1) : ℤ))).toNat

end

end A136976.P591446810465462890

/-! ## A136976.P12999151999492165980

`A107128(A136975(n+1)^A096670(n+1))`
-/

namespace A136976.P12999151999492165980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (SequenceMachineLib.roundAway ((A136975 (n + 1) : ℚ) ^ (A096670 (n + 1) : ℤ))).toNat

end

end A136976.P12999151999492165980

/-! ## A136976.P13200435263772674613

`A327539(A136975(n+1)^A044931(n+1))`
-/

namespace A136976.P13200435263772674613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (SequenceMachineLib.roundAway ((A136975 (n + 1) : ℚ) ^ (A044931 (n + 1) : ℤ))).toNat

end

end A136976.P13200435263772674613

/-!
# A136978: Numbers k such that k and k^2 use only the digits 1, 2, 3 and 6.

The programs for A136978, there is no canonical definition to state claims against.
-/

/-! ## A136978.P7053626484206870566

`∩[A136812(n+1), A136974(n+1)]`
-/

namespace A136978.P7053626484206870566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136978.P7053626484206870566

/-! ## A136978.P5781464983755877957

`∩[A136969(n+1), A136974(n+1)]`
-/

namespace A136978.P5781464983755877957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136978.P5781464983755877957

/-! ## A136978.P10469273545866398600

`∩[A136969(n+1), A136979(n+1)]`
-/

namespace A136978.P10469273545866398600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136978.P10469273545866398600

/-!
# A136979: Numbers k such that k and k^2 use only the digits 1, 2, 3, 6 and 7.

The programs for A136979, there is no canonical definition to state claims against.
-/

/-! ## A136979.P11216676986290730197

`∩[A061203(n+1), A160532(n+1)]`
-/

namespace A136979.P11216676986290730197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136979.P11216676986290730197

/-!
# A136980: Numbers k such that k and k^2 use only the digits 1, 2, 3, 6 and 8.

The programs for A136980, there is no canonical definition to state claims against.
-/

/-! ## A136980.P3482466288402007826

`A315550(eq[A315597(n), A315656(n)])`
-/

namespace A136980.P3482466288402007826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315550 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136980.P3482466288402007826

/-!
# A136982: Numbers k such that k and k^2 use only the digits 1, 2, 3, 7 and 8.

The programs for A136982, there is no canonical definition to state claims against.
-/

/-! ## A136982.P7185963183235534201

`A244047(A093866(n))`
-/

namespace A136982.P7185963183235534201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244047 (A093866 n).toNat

end

end A136982.P7185963183235534201

/-!
# A136983: Numbers k such that k and k^2 use only the digits 1, 2, 3, 7 and 9.

The programs for A136983, there is no canonical definition to state claims against.
-/

/-! ## A136983.P5079529796778310755

`∑[A136499(A002805(n+1))]`
-/

namespace A136983.P5079529796778310755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136499 (A002805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136983.P5079529796778310755

/-! ## A136983.P17024458518985125566

`∑[A100795(A103931(n+1))]`
-/

namespace A136983.P17024458518985125566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A103931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136983.P17024458518985125566

/-!
# A136984: Numbers k such that k and k^2 use only the digits 1, 2, 3, 8 and 9.

The programs for A136984, there is no canonical definition to state claims against.
-/

/-! ## A136984.P8812346636747413128

`∪[A136985(n+1), A137020(n+1)]`
-/

namespace A136984.P8812346636747413128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136984.P8812346636747413128

/-! ## A136984.P15217263858861861908

`∪[A136981(A136992(n+1)), A137020(n+1)]`
-/

namespace A136984.P15217263858861861908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136981 (A136992 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136984.P15217263858861861908

/-! ## A136984.P18280416804306838426

`∪[A136981(A136993(n+1)), A137020(n+1)]`
-/

namespace A136984.P18280416804306838426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136981 (A136993 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136984.P18280416804306838426

/-! ## A136984.P18189719216381824329

`∪[A136981(A136995(n+1)), A137020(n+1)]`
-/

namespace A136984.P18189719216381824329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136981 (A136995 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136984.P18189719216381824329

/-!
# A136985: Numbers k such that k and k^2 use only the digits 1, 2, 3 and 9.

The programs for A136985, there is no canonical definition to state claims against.
-/

/-! ## A136985.P8072848276128824024

`2*C(and(10*n, 3*n), n)-1`
-/

namespace A136985.P8072848276128824024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (Nat.land (10 * n) (3 * n)) n : ℤ) - 1

end

end A136985.P8072848276128824024

/-!
# A136987: Numbers k such that k and k^2 use only the digits 1, 2, 4 and 5.

The programs for A136987, there is no canonical definition to state claims against.
-/

/-! ## A136987.P16732103115405643827

`∩[A136968(n+1), A136988(n+1)]`
-/

namespace A136987.P16732103115405643827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136987.P16732103115405643827

/-! ## A136987.P8456878012028550215

`∩[A136968(n+1), A136989(n+1)]`
-/

namespace A136987.P8456878012028550215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136987.P8456878012028550215

/-! ## A136987.P10109959239090325242

`∩[A136968(n+1), A136990(n+1)]`
-/

namespace A136987.P10109959239090325242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136987.P10109959239090325242

/-! ## A136987.P10781787379744430697

`∩[A136968(n+1), A136991(n+1)]`
-/

namespace A136987.P10781787379744430697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136987.P10781787379744430697

/-! ## A136987.P12747355404209947785

`∩[A136988(n+1), A136989(n+1)]`
-/

namespace A136987.P12747355404209947785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136987.P12747355404209947785

/-!
# A136992: Numbers k such that k and k^2 use only the digits 1, 2, 4 and 6.

The programs for A136992, there is no canonical definition to state claims against.
-/

/-! ## A136992.P10912306570075734463

`∩[A136969(n+1), A136988(n+1)]`
-/

namespace A136992.P10912306570075734463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136992.P10912306570075734463

/-! ## A136992.P11727035456808234278

`∩[A136969(n+1), A136993(n+1)]`
-/

namespace A136992.P11727035456808234278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136992.P11727035456808234278

/-! ## A136992.P12661223794309389747

`∩[A136969(n+1), A136994(n+1)]`
-/

namespace A136992.P12661223794309389747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136992.P12661223794309389747

/-! ## A136992.P12088248994519918654

`∩[A136969(n+1), A136995(n+1)]`
-/

namespace A136992.P12088248994519918654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136992.P12088248994519918654

/-! ## A136992.P4040998064794488877

`∩[A136988(n+1), A136993(n+1)]`
-/

namespace A136992.P4040998064794488877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136992.P4040998064794488877

/-!
# A136996: Numbers k such that k and k^2 use only the digits 1, 2, 4 and 7.

The programs for A136996, there is no canonical definition to state claims against.
-/

/-! ## A136996.P8045740790297755725

`∩[A136970(n+1), A136989(n+1)]`
-/

namespace A136996.P8045740790297755725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136996.P8045740790297755725

/-! ## A136996.P2713479940197863433

`∩[A136970(n+1), A136993(n+1)]`
-/

namespace A136996.P2713479940197863433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136996.P2713479940197863433

/-! ## A136996.P3070263998861006985

`∩[A136970(n+1), A136997(n+1)]`
-/

namespace A136996.P3070263998861006985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136996.P3070263998861006985

/-! ## A136996.P3977078514470522940

`∩[A136970(n+1), A136998(n+1)]`
-/

namespace A136996.P3977078514470522940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136996.P3977078514470522940

/-!
# A136999: Numbers k such that k and k^2 use only the digits 1, 2, 4 and 8.

The programs for A136999, there is no canonical definition to state claims against.
-/

/-! ## A136999.P11365073917095330542

`∩[A136820(n+1), A136971(n+1)]`
-/

namespace A136999.P11365073917095330542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136999.P11365073917095330542

/-! ## A136999.P1265620498167240672

`∩[A136820(n+1), A136990(n+1)]`
-/

namespace A136999.P1265620498167240672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136999.P1265620498167240672

/-! ## A136999.P11901228567888368730

`∩[A136820(n+1), A136994(n+1)]`
-/

namespace A136999.P11901228567888368730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136999.P11901228567888368730

/-! ## A136999.P12279894137843064186

`∩[A136820(n+1), A136997(n+1)]`
-/

namespace A136999.P12279894137843064186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136999.P12279894137843064186

/-! ## A136999.P16902561930784238768

`∩[A136820(n+1), A137000(n+1)]`
-/

namespace A136999.P16902561930784238768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136999.P16902561930784238768

