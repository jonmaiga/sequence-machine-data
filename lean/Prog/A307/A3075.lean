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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

/-!
# A307502: Self-convolution of the Dedekind psi function (A001615).

The programs for A307502, there is no canonical definition to state claims against.
-/

/-! ## A307502.P6644607415106134077

`∑[A113220(∑[A030978(n)])]`
-/

namespace A307502.P6644607415106134077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307502.P6644607415106134077

/-! ## A307502.P7567765057203063901

`A135551(A001147(n))+A000330(n)`
-/

namespace A307502.P7567765057203063901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (A001147 n).toNat + A000330 n

end

end A307502.P7567765057203063901

/-! ## A307502.P17621807189432814864

`A338233(A348808(n)+A005994(n))`
-/

namespace A307502.P17621807189432814864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338233 (A348808 n + A005994 n).toNat

end

end A307502.P17621807189432814864

/-!
# A307503: Least prime containing at least n consecutive 1's in its binary representation.

The programs for A307503, there is no canonical definition to state claims against.
-/

/-! ## A307503.P17154486471717216378

`A090593(A038374(A087522(n)))`
-/

namespace A307503.P17154486471717216378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090593 (A038374 (A087522 n).toNat).toNat

end

end A307503.P17154486471717216378

/-! ## A307503.P16274592957811080524

`p?[A060546(n)-A025864(n)]`
-/

namespace A307503.P16274592957811080524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - A025864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307503.P16274592957811080524

/-! ## A307503.P7381531162987696227

`p?[A137399(n)-A025864(n)]`
-/

namespace A307503.P7381531162987696227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137399 n - A025864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307503.P7381531162987696227

/-! ## A307503.P2905673396922843582

`p?[lcm(A033880(n+2), A164022(n+1))]`
-/

namespace A307503.P2905673396922843582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033880 (n + 2)) (A164022 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A307503.P2905673396922843582

/-! ## A307503.P16113852416999609495

`A090593(or(A004903(n+1), A045847(n)))`
-/

namespace A307503.P16113852416999609495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090593 (Int.lor (A004903 (n + 1)) (A045847 n)).toNat

end

end A307503.P16113852416999609495

/-!
# A307504: Expansion of Product_{k>=1} 1/(1-x^k)^((-1)^k*k^k).

The programs for A307504, there is no canonical definition to state claims against.
-/

/-! ## A307504.P12481889058894227576

`A307497(n)-A357630(A000142(n))`
-/

namespace A307504.P12481889058894227576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307497 n - A357630 (A000142 n).toNat

end

end A307504.P12481889058894227576

/-!
# A307505: Number T(n,k) of partitions of n into distinct parts whose bitwise XOR equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A307505, there is no canonical definition to state claims against.
-/

/-! ## A307505.P12509900018301360686

`A280751(A130824(comp[2^n]))`
-/

namespace A307505.P12509900018301360686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 (A130824 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A307505.P12509900018301360686

/-! ## A307505.P6711424899632144393

`A035162(lcm(n+2, A171661(n)))`
-/

namespace A307505.P6711424899632144393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (Int.lcm (n + 2 : ℤ) (A171661 n))

end

end A307505.P6711424899632144393

/-! ## A307505.P13321395222623791985

`and(A002033(n), A038548(A000726(2*(n+1))))`
-/

namespace A307505.P13321395222623791985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A038548 (A000726 (2 * (n + 1))).toNat)

end

end A307505.P13321395222623791985

/-! ## A307505.P3264564372675242767

`A170958(A023859(n+2))`
-/

namespace A307505.P3264564372675242767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 (A023859 (n + 2)).toNat

end

end A307505.P3264564372675242767

/-! ## A307505.P2712122317698746388

`A060951(A364280(n+2))`
-/

namespace A307505.P2712122317698746388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A364280 (n + 2)).toNat

end

end A307505.P2712122317698746388

/-!
# A307506: Number of partitions of 2n into distinct parts whose bitwise XOR equals 0.

The programs for A307506, there is no canonical definition to state claims against.
-/

/-! ## A307506.P15873272590915687671

`A307505(C(Δ[n²], 2))`
-/

namespace A307506.P15873272590915687671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307505 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A307506.P15873272590915687671

/-! ## A307506.P15335017170072287775

`A307505(n*Δ[n²])`
-/

namespace A307506.P15335017170072287775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307505 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A307506.P15335017170072287775

/-! ## A307506.P11150782654462689582

`or(char[3], A307505(A014105(n)))`
-/

namespace A307506.P11150782654462689582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A307505 (A014105 n).toNat)

end

end A307506.P11150782654462689582

/-! ## A307506.P2782310190864561209

`gcd(A000038(n), A307505(A014105(n)))`
-/

namespace A307506.P2782310190864561209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A307505 (A014105 n).toNat)

end

end A307506.P2782310190864561209

/-! ## A307506.P10381621967670915653

`lcm(A033999(n), A307505(A014105(n)))`
-/

namespace A307506.P10381621967670915653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A307505 (A014105 n).toNat)

end

end A307506.P10381621967670915653

/-! ## A307506.P5021214287488602104

`and(A052551(n), A307505(A014105(n)))`
-/

namespace A307506.P5021214287488602104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A307505 (A014105 n).toNat)

end

end A307506.P5021214287488602104

/-! ## A307506.P9877836191683314887

`char[A153152(n)]*A307505(A014105(n))`
-/

namespace A307506.P9877836191683314887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A307505 (A014105 n).toNat

end

end A307506.P9877836191683314887

/-! ## A307506.P14837131386538112248

`A307505(A014105(n))%A082565(n+1)`
-/

namespace A307506.P14837131386538112248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307505 (A014105 n).toNat) (A082565 (n + 1))

end

end A307506.P14837131386538112248

/-! ## A307506.P8256402119556497142

`A307505(A014105(n))/A000040(n+2)%2`
-/

namespace A307506.P8256402119556497142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307505 (A014105 n).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A307506.P8256402119556497142

/-! ## A307506.P2798870620621531501

`A307505(A014105(n))+A000045(C(n, n+2))`
-/

namespace A307506.P2798870620621531501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307505 (A014105 n).toNat + A000045 (Nat.choose n (n + 2))

end

end A307506.P2798870620621531501

/-! ## A307506.P14828949931105541066

`A000203(((-1)^n)²)*A307505(A014105(n))`
-/

namespace A307506.P14828949931105541066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A307505 (A014105 n).toNat

end

end A307506.P14828949931105541066

/-! ## A307506.P15727409437121965935

`A307505(A014105(n))/A008683(n+1)²!`
-/

namespace A307506.P15727409437121965935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307505 (A014105 n).toNat : ℚ) / (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℚ)

end

end A307506.P15727409437121965935

/-! ## A307506.P13470014770140219245

`A307505(A014105(n))^A008683(n+2)²!`
-/

namespace A307506.P13470014770140219245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307505 (A014105 n).toNat ^ Nat.factorial (A008683 (n + 2) ^ 2).toNat

end

end A307506.P13470014770140219245

/-! ## A307506.P2207666379267662848

`A346238(A023218(n+1))+A307505(A014105(n))`
-/

namespace A307506.P2207666379267662848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (A023218 (n + 1)).toNat + A307505 (A014105 n).toNat

end

end A307506.P2207666379267662848

/-!
# A307507: Brazilian semiprimes.

The programs for A307507, there is no canonical definition to state claims against.
-/

/-! ## A307507.P2478788411459489576

`record[A066048(A220571(n+2))]`
-/

namespace A307507.P2478788411459489576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A220571 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307507.P2478788411459489576

/-! ## A307507.P5955191073707871949

`filter[A220571(n+1), A064911(#)]`
-/

namespace A307507.P5955191073707871949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A307507.P5955191073707871949

/-! ## A307507.P6505335491827051346

`filter[A220571(n+1), A101040(#)]`
-/

namespace A307507.P6505335491827051346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A307507.P6505335491827051346

/-! ## A307507.P11564485102462764008

`filter[A001358(n+3), A348737(#)]`
-/

namespace A307507.P11564485102462764008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A307507.P11564485102462764008

/-! ## A307507.P16940654630270176234

`∩[A001358(n+1), A220571(n+1)]`
-/

namespace A307507.P16940654630270176234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307507.P16940654630270176234

/-! ## A307507.P13460597367016962014

`∩[A037143(n+1), A220571(n+1)]`
-/

namespace A307507.P13460597367016962014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307507.P13460597367016962014

/-! ## A307507.P9389823087941133395

`∩[A176540(n+1), A220571(n+1)]`
-/

namespace A307507.P9389823087941133395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307507.P9389823087941133395

/-! ## A307507.P11827929031730527528

`∪[A049048(n+1), A006881(n+2)]`
-/

namespace A307507.P11827929031730527528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307507.P11827929031730527528

/-! ## A307507.P4029484223121706484

`∪[A056809(n+1), A006881(n+2)]`
-/

namespace A307507.P4029484223121706484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307507.P4029484223121706484

/-! ## A307507.P4925799282203862273

`∪[A161918(n+3), A046328(n+5)]`
-/

namespace A307507.P4925799282203862273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307507.P4925799282203862273

/-!
# A307508: Primes p for which the continued fraction expansion of sqrt(p) does not have a 1 in the second position.

The programs for A307508, the canonical program `A307508.P1138066095491844169` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307508 has offset 1).

The definition of A307508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307508.P1138066095491844169

`A000040(A247514(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A307508

/-- `A000040(A247514(n+1))` -/
def P1138066095491844169.Spec : Prop :=
  ∀ n, P1138066095491844169.a n = A307508 (n + 1)

theorem P1138066095491844169.correct : P1138066095491844169.Spec := by
  intro n
  simp only [A307508, Nat.add_sub_cancel]

end A307508

/-! ## A307508.P13730028700677944069

`A000040(comp[A247515(n+1)-1]+1)`
-/

namespace A307508.P13730028700677944069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247515 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A307508.P13730028700677944069

namespace A307508

/-- `A000040(comp[A247515(n+1)-1]+1)` -/
def P13730028700677944069.Spec : Prop :=
  ∀ n, P13730028700677944069.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P11788972954275206002

`p?[n+3-floor((n-3)/(n-2-a(n-1)))]` with `a(0)=2`
-/

namespace A307508.P11788972954275206002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 3 : ℤ) - ⌊((n : ℤ) - 3 : ℚ) / ((n : ℤ) - 2 - f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P11788972954275206002

namespace A307508

/-- `p?[n+3-floor((n-3)/(n-2-a(n-1)))]` -/
def P11788972954275206002.Spec : Prop :=
  ∀ n, P11788972954275206002.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P3498925528449411412

`p?[A002260(n+1)+A038722(n+1)+n]`
-/

namespace A307508.P3498925528449411412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A038722 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P3498925528449411412

namespace A307508

/-- `p?[A002260(n+1)+A038722(n+1)+n]` -/
def P3498925528449411412.Spec : Prop :=
  ∀ n, P3498925528449411412.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P9864645378182486009

`p?[a(n-1)+A007318(C(n+1, A007318(n)²))]` with `a(0)=0`
-/

namespace A307508.P9864645378182486009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + A007318 (Nat.choose (n + 1) (A007318 n ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P9864645378182486009

namespace A307508

/-- `p?[a(n-1)+A007318(C(n+1, A007318(n)²))]` -/
def P9864645378182486009.Spec : Prop :=
  ∀ n, P9864645378182486009.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P11710232182966887845

`p?[A004202(n+1)]`
-/

namespace A307508.P11710232182966887845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P11710232182966887845

namespace A307508

/-- `p?[A004202(n+1)]` -/
def P11710232182966887845.Spec : Prop :=
  ∀ n, P11710232182966887845.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P15371198986307537127

`p?[A127739(n+1)+1+n]`
-/

namespace A307508.P15371198986307537127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P15371198986307537127

namespace A307508

/-- `p?[A127739(n+1)+1+n]` -/
def P15371198986307537127.Spec : Prop :=
  ∀ n, P15371198986307537127.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P7369243484547073339

`p?[A025581(n)+2*(n+1)]`
-/

namespace A307508.P7369243484547073339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P7369243484547073339

namespace A307508

/-- `p?[A025581(n)+2*(n+1)]` -/
def P7369243484547073339.Spec : Prop :=
  ∀ n, P7369243484547073339.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P18164394648441263874

`p?[A004736(n+1)+2*n+1]`
-/

namespace A307508.P18164394648441263874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P18164394648441263874

namespace A307508

/-- `p?[A004736(n+1)+2*n+1]` -/
def P18164394648441263874.Spec : Prop :=
  ∀ n, P18164394648441263874.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P874249882321016826

`p?[A334869(A217575(n+1))]`
-/

namespace A307508.P874249882321016826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334869 (A217575 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P874249882321016826

namespace A307508

/-- `p?[A334869(A217575(n+1))]` -/
def P874249882321016826.Spec : Prop :=
  ∀ n, P874249882321016826.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P2821487858904882297

`filter[A004202(n+1), A010051(#)]`
-/

namespace A307508.P2821487858904882297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A307508.P2821487858904882297

namespace A307508

/-- `filter[A004202(n+1), A010051(#)]` -/
def P2821487858904882297.Spec : Prop :=
  ∀ n, P2821487858904882297.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P10286477079304251409

`filter[A004202(n+1), A302777(#)]`
-/

namespace A307508.P10286477079304251409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A307508.P10286477079304251409

namespace A307508

/-- `filter[A004202(n+1), A302777(#)]` -/
def P10286477079304251409.Spec : Prop :=
  ∀ n, P10286477079304251409.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P13227189465918037682

`filter[A004202(n+1), A355937(#)]`
-/

namespace A307508.P13227189465918037682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A307508.P13227189465918037682

namespace A307508

/-- `filter[A004202(n+1), A355937(#)]` -/
def P13227189465918037682.Spec : Prop :=
  ∀ n, P13227189465918037682.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P8165786470457898246

`record[A006530(A064801(n+1)+1)]`
-/

namespace A307508.P8165786470457898246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064801 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307508.P8165786470457898246

namespace A307508

/-- `record[A006530(A064801(n+1)+1)]` -/
def P8165786470457898246.Spec : Prop :=
  ∀ n, P8165786470457898246.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P9082294416414654433

`p?[A000124(A002024(n+1))+n]`
-/

namespace A307508.P9082294416414654433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002024 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P9082294416414654433

namespace A307508

/-- `p?[A000124(A002024(n+1))+n]` -/
def P9082294416414654433.Spec : Prop :=
  ∀ n, P9082294416414654433.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P11059553056033145374

`p?[A000124(A003056(n)+1)+n]`
-/

namespace A307508.P11059553056033145374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003056 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307508.P11059553056033145374

namespace A307508

/-- `p?[A000124(A003056(n)+1)+n]` -/
def P11059553056033145374.Spec : Prop :=
  ∀ n, P11059553056033145374.a n = A307508 (n + 1)

end A307508

/-! ## A307508.P14629261082591837363

`∩[A000040(n+1), A004202(n+1)]`
-/

namespace A307508.P14629261082591837363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307508.P14629261082591837363

namespace A307508

/-- `∩[A000040(n+1), A004202(n+1)]` -/
def P14629261082591837363.Spec : Prop :=
  ∀ n, (P14629261082591837363.a n : ℤ) = A307508 (n + 1)

end A307508

/-! ## A307508.P3523829250842076516

`∩[A000430(n+1), A004202(n+1)]`
-/

namespace A307508.P3523829250842076516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307508.P3523829250842076516

namespace A307508

/-- `∩[A000430(n+1), A004202(n+1)]` -/
def P3523829250842076516.Spec : Prop :=
  ∀ n, (P3523829250842076516.a n : ℤ) = A307508 (n + 1)

end A307508

/-! ## A307508.P7078670545169204196

`∩[A004202(n+1), A008578(n+1)]`
-/

namespace A307508.P7078670545169204196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307508.P7078670545169204196

namespace A307508

/-- `∩[A004202(n+1), A008578(n+1)]` -/
def P7078670545169204196.Spec : Prop :=
  ∀ n, (P7078670545169204196.a n : ℤ) = A307508 (n + 1)

end A307508

/-!
# A307510: a(n) is the greatest product i*j*k*l where i^2 + j^2 + k^2 + l^2 = n and 0 <= i <= j <= k <= l.

The programs for A307510, there is no canonical definition to state claims against.
-/

/-! ## A307510.P8387767783144421589

`A302242(xor(A000051(n+2), A300650(n)))`
-/

namespace A307510.P8387767783144421589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (Int.xor (A000051 (n + 2)) (A300650 n)).toNat

end

end A307510.P8387767783144421589

/-! ## A307510.P15269942567795014973

`A055089(A091809(n+1))*A285716(n+1)`
-/

namespace A307510.P15269942567795014973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A091809 (n + 1)).toNat * A285716 (n + 1)

end

end A307510.P15269942567795014973

/-! ## A307510.P17937371313540174291

`A062383(A204519(n+1))%A124794(n+2)`
-/

namespace A307510.P17937371313540174291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062383 (A204519 (n + 1)).toNat) (A124794 (n + 2))

end

end A307510.P17937371313540174291

/-! ## A307510.P14757597790576703020

`A000108(A277252(n+2))%A108104(n+2)`
-/

namespace A307510.P14757597790576703020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A277252 (n + 2)).toNat) (A108104 (n + 2))

end

end A307510.P14757597790576703020

/-! ## A307510.P4366307708386947

`A074698(n+5)%A001156(A175969(n+1))`
-/

namespace A307510.P4366307708386947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074698 (n + 5)) (A001156 (A175969 (n + 1)).toNat)

end

end A307510.P4366307708386947

/-!
# A307511: a(n) is the smallest number not occurring earlier whose concatenation with the previous term contains the smallest possible number of numeric substrings strictly larger than for the preceding term; a(0) = 0.

The programs for A307511, there is no canonical definition to state claims against.
-/

/-! ## A307511.P8680387180765802211

`A004086(∑[char[n!]]*A288297(n))`
-/

namespace A307511.P8680387180765802211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A288297 n).toNat

end

end A307511.P8680387180765802211

/-!
# A307512: a(n) is the smallest k > 2^n such that 2^(k-1) == 1 (mod (2^n-1)*k).

The programs for A307512, there is no canonical definition to state claims against.
-/

/-! ## A307512.P12423460379257296295

`p?[A072716(A237716(n)+A233279(n))]`
-/

namespace A307512.P12423460379257296295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072716 (A237716 n + A233279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307512.P12423460379257296295

/-! ## A307512.P972699323826214524

`A330225(A321680(n)+A029931(n+1))`
-/

namespace A307512.P972699323826214524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (A321680 n + A029931 (n + 1)).toNat

end

end A307512.P972699323826214524

/-! ## A307512.P15833325078731256956

`A339501(A056654(n+1)+A034973(n+2))`
-/

namespace A307512.P15833325078731256956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339501 (A056654 (n + 1) + A034973 (n + 2)).toNat

end

end A307512.P15833325078731256956

/-!
# A307513: Beatty sequence for 1/log(2).

The programs for A307513, the canonical program `A307513.P10097634644987608462` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307513 has offset 1).

The definition of A307513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307513.P15659939131852262222

`floor((n+1)/log(2))`
-/

namespace A307513.P15659939131852262222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.log (2 : ℝ)⌋

end

end A307513.P15659939131852262222

namespace A307513

/-- `floor((n+1)/log(2))` -/
def P15659939131852262222.Spec : Prop :=
  ∀ n, P15659939131852262222.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P8029358188298812008

`∑[Δ[floor(n/log(2))]!]`
-/

namespace A307513.P8029358188298812008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307513.P8029358188298812008

namespace A307513

/-- `∑[Δ[floor(n/log(2))]!]` -/
def P8029358188298812008.Spec : Prop :=
  ∀ n, (P8029358188298812008.a n : ℤ) = A307513 (n + 1)

end A307513

/-! ## A307513.P10379390047560659016

`∑[dr(Δ[floor(n/log(2))])]`
-/

namespace A307513.P10379390047560659016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307513.P10379390047560659016

namespace A307513

/-- `∑[dr(Δ[floor(n/log(2))])]` -/
def P10379390047560659016.Spec : Prop :=
  ∀ n, (P10379390047560659016.a n : ℤ) = A307513 (n + 1)

end A307513

/-! ## A307513.P10097634644987608462

`∑[A022934(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A307513

/-- `∑[A022934(n)]` -/
def P10097634644987608462.Spec : Prop :=
  ∀ n, P10097634644987608462.a n = A307513 (n + 1)

theorem P10097634644987608462.correct : P10097634644987608462.Spec := by
  intro n
  simp only [A307513, Nat.add_sub_cancel]

end A307513

/-! ## A307513.P16329590540890534260

`A059542(n+1)-(n+1)`
-/

namespace A307513.P16329590540890534260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 1) - (n + 1 : ℤ)

end

end A307513.P16329590540890534260

namespace A307513

/-- `A059542(n+1)-(n+1)` -/
def P16329590540890534260.Spec : Prop :=
  ∀ n, P16329590540890534260.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P2853301628673961178

`∑[A000005(Δ[floor(n/log(2))])]`
-/

namespace A307513.P2853301628673961178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307513.P2853301628673961178

namespace A307513

/-- `∑[A000005(Δ[floor(n/log(2))])]` -/
def P2853301628673961178.Spec : Prop :=
  ∀ n, P2853301628673961178.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P13027566868246061018

`∑[A000041(Δ[floor(n/log(2))])]`
-/

namespace A307513.P13027566868246061018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307513.P13027566868246061018

namespace A307513

/-- `∑[A000041(Δ[floor(n/log(2))])]` -/
def P13027566868246061018.Spec : Prop :=
  ∀ n, P13027566868246061018.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P10900006979450924915

`∑[A000108(Δ[floor(n/log(2))])]`
-/

namespace A307513.P10900006979450924915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307513.P10900006979450924915

namespace A307513

/-- `∑[A000108(Δ[floor(n/log(2))])]` -/
def P10900006979450924915.Spec : Prop :=
  ∀ n, P10900006979450924915.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P4619204351891585997

`A330213(n+1)-A206807(n+1)`
-/

namespace A307513.P4619204351891585997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330213 (n + 1) - A206807 (n + 1)

end

end A307513.P4619204351891585997

namespace A307513

/-- `A330213(n+1)-A206807(n+1)` -/
def P4619204351891585997.Spec : Prop :=
  ∀ n, P4619204351891585997.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P5197474470249859431

`filter[n+1, A022933(#)]`
-/

namespace A307513.P5197474470249859431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022933 (f1 j) = 1) n)

end

end A307513.P5197474470249859431

namespace A307513

/-- `filter[n+1, A022933(#)]` -/
def P5197474470249859431.Spec : Prop :=
  ∀ n, (P5197474470249859431.a n : ℤ) = A307513 (n + 1)

end A307513

/-! ## A307513.P15765828485603313855

`A373112(n+1)-1`
-/

namespace A307513.P15765828485603313855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373112 (n + 1) - 1

end

end A307513.P15765828485603313855

namespace A307513

/-- `A373112(n+1)-1` -/
def P15765828485603313855.Spec : Prop :=
  ∀ n, P15765828485603313855.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P7391371856255483437

`A023443(A373112(n+1))`
-/

namespace A307513.P7391371856255483437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A373112 (n + 1)).toNat

end

end A307513.P7391371856255483437

namespace A307513

/-- `A023443(A373112(n+1))` -/
def P7391371856255483437.Spec : Prop :=
  ∀ n, P7391371856255483437.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P1775651422001014928

`A065033(A078608(n+1)-1)`
-/

namespace A307513.P1775651422001014928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A078608 (n + 1) - 1).toNat

end

end A307513.P1775651422001014928

namespace A307513

/-- `A065033(A078608(n+1)-1)` -/
def P1775651422001014928.Spec : Prop :=
  ∀ n, P1775651422001014928.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P3111460894614329681

`A008619(A078608(n+1)-2)`
-/

namespace A307513.P3111460894614329681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A078608 (n + 1) - 2).toNat

end

end A307513.P3111460894614329681

namespace A307513

/-- `A008619(A078608(n+1)-2)` -/
def P3111460894614329681.Spec : Prop :=
  ∀ n, P3111460894614329681.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P16993373480477441781

`A004526(A078608(n+1))`
-/

namespace A307513.P16993373480477441781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078608 (n + 1)).toNat

end

end A307513.P16993373480477441781

namespace A307513

/-- `A004526(A078608(n+1))` -/
def P16993373480477441781.Spec : Prop :=
  ∀ n, P16993373480477441781.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P15656691736656362011

`A140106(A342831(n+1)+1)`
-/

namespace A307513.P15656691736656362011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A342831 (n + 1) + 1).toNat

end

end A307513.P15656691736656362011

namespace A307513

/-- `A140106(A342831(n+1)+1)` -/
def P15656691736656362011.Spec : Prop :=
  ∀ n, P15656691736656362011.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P3873066176767515965

`A004526(A342831(n+1)-1)`
-/

namespace A307513.P3873066176767515965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342831 (n + 1) - 1).toNat

end

end A307513.P3873066176767515965

namespace A307513

/-- `A004526(A342831(n+1)-1)` -/
def P3873066176767515965.Spec : Prop :=
  ∀ n, P3873066176767515965.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P9412681796358063077

`A123108(A342831(n+1)-1)`
-/

namespace A307513.P9412681796358063077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A342831 (n + 1) - 1).toNat

end

end A307513.P9412681796358063077

namespace A307513

/-- `A123108(A342831(n+1)-1)` -/
def P9412681796358063077.Spec : Prop :=
  ∀ n, P9412681796358063077.a n = A307513 (n + 1)

end A307513

/-! ## A307513.P1900802663971304082

`record[floor(log2(exp(abs(1-n))))]`
-/

namespace A307513.P1900802663971304082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.exp (|1 - (n : ℤ)| : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307513.P1900802663971304082

namespace A307513

/-- `record[floor(log2(exp(abs(1-n))))]` -/
def P1900802663971304082.Spec : Prop :=
  ∀ n, P1900802663971304082.a n = A307513 (n + 1)

end A307513

/-!
# A307514: Expansion of Product_{k>=1} (1-x^k)^((-1)^k*k^k).

The programs for A307514, there is no canonical definition to state claims against.
-/

/-! ## A307514.P1715322016451326852

`A196958(n)+A086008(A007820(n))`
-/

namespace A307514.P1715322016451326852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196958 n + A086008 (A007820 n).toNat

end

end A307514.P1715322016451326852

/-!
# A307516: Numbers whose maximum prime index and minimum prime index differ by more than 1.

The programs for A307516, there is no canonical definition to state claims against.
-/

/-! ## A307516.P12938436535654139855

`lt[0, A117370(n+1)]+1`
-/

namespace A307516.P12938436535654139855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307516.P12938436535654139855

/-! ## A307516.P14572219088974250116

`lt[1, A243055(n+1)]+1`
-/

namespace A307516.P14572219088974250116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307516.P14572219088974250116

/-! ## A307516.P6564513119743035525

`lt[6, A273258(n+1)]+1`
-/

namespace A307516.P6564513119743035525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307516.P6564513119743035525

/-! ## A307516.P12859955750573047763

`lt[1, A243055(gcd(n, C(2, n)))]`
-/

namespace A307516.P12859955750573047763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307516.P12859955750573047763

/-! ## A307516.P16817256737436392885

`eq[0, C(a(A243055(n)), 3)]` with `a(0)=3, a(1)=3`
-/

namespace A307516.P16817256737436392885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  Nat.choose (f2 (A243055 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307516.P16817256737436392885

/-! ## A307516.P1877273716705992843

`lt[0, A117370(A028310(n))]`
-/

namespace A307516.P1877273716705992843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A307516.P1877273716705992843

/-! ## A307516.P16535060142348304825

`∪[A069900(n+1), A027865(n)]`
-/

namespace A307516.P16535060142348304825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307516.P16535060142348304825

/-! ## A307516.P3799205926013308756

`∪[A069900(n+1), A168109(n)]`
-/

namespace A307516.P3799205926013308756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307516.P3799205926013308756

/-! ## A307516.P8736812715777850866

`eq[0, A001221(a(A243055(n))!)]` with `a(0)=2, a(1)=2`
-/

namespace A307516.P8736812715777850866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A001221 (Nat.factorial (f2 (A243055 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307516.P8736812715777850866

/-! ## A307516.P193767095492075581

`∪[A000864(n+1), A069900(n+1)]`
-/

namespace A307516.P193767095492075581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307516.P193767095492075581

/-!
# A307517: Numbers with at least two not necessarily distinct prime factors less than the largest prime factor.

The programs for A307517, the canonical program `A307517.P14369856607167828946` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307517 has offset 1).

The definition of A307517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307517.P8592773408869290050

`lt[0, A085393(n+1)]+1`
-/

namespace A307517.P8592773408869290050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307517.P8592773408869290050

namespace A307517

/-- `lt[0, A085393(n+1)]+1` -/
def P8592773408869290050.Spec : Prop :=
  ∀ n, (P8592773408869290050.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P6566538865460517782

`lt[1, A325226(n+1)]+1`
-/

namespace A307517.P6566538865460517782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307517.P6566538865460517782

namespace A307517

/-- `lt[1, A325226(n+1)]+1` -/
def P6566538865460517782.Spec : Prop :=
  ∀ n, (P6566538865460517782.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P13495698061989836108

`lt[2, A322373(n+1)]+1`
-/

namespace A307517.P13495698061989836108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307517.P13495698061989836108

namespace A307517

/-- `lt[2, A322373(n+1)]+1` -/
def P13495698061989836108.Spec : Prop :=
  ∀ n, (P13495698061989836108.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P10770503548047596985

`eq[1, A000010(a(A085393(n)))]` with `a(0)=3`
-/

namespace A307517.P10770503548047596985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A085393 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307517.P10770503548047596985

namespace A307517

/-- `eq[1, A000010(a(A085393(n)))]` -/
def P10770503548047596985.Spec : Prop :=
  ∀ n, (P10770503548047596985.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P15882147485592596084

`eq[1, A000045(a(A085393(n)))]` with `a(0)=3`
-/

namespace A307517.P15882147485592596084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A085393 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307517.P15882147485592596084

namespace A307517

/-- `eq[1, A000045(a(A085393(n)))]` -/
def P15882147485592596084.Spec : Prop :=
  ∀ n, (P15882147485592596084.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P18067545279153049193

`eq[1, A001222(a(A085393(n)))!]` with `a(0)=4`
-/

namespace A307517.P18067545279153049193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  Nat.factorial (A001222 (f2 (A085393 n).toNat)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307517.P18067545279153049193

namespace A307517

/-- `eq[1, A001222(a(A085393(n)))!]` -/
def P18067545279153049193.Spec : Prop :=
  ∀ n, (P18067545279153049193.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P6021131709987138234

`eq[1, A008683(a(A085393(n))!)]` with `a(0)=4`
-/

namespace A307517.P6021131709987138234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A008683 (Nat.factorial (f2 (A085393 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307517.P6021131709987138234

namespace A307517

/-- `eq[1, A008683(a(A085393(n))!)]` -/
def P6021131709987138234.Spec : Prop :=
  ∀ n, (P6021131709987138234.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P14369856607167828946

`∪[A000977(n+1), A065201(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A307517

/-- `∪[A000977(n+1), A065201(n+1)]` -/
def P14369856607167828946.Spec : Prop :=
  ∀ n, (P14369856607167828946.a n : ℤ) = A307517 (n + 1)

theorem P14369856607167828946.correct : P14369856607167828946.Spec := by
  intro n
  simp only [A307517, Nat.add_sub_cancel]

end A307517

/-! ## A307517.P15417424513194101450

`∪[A065201(n+1), A349794(n+1)]`
-/

namespace A307517.P15417424513194101450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307517.P15417424513194101450

namespace A307517

/-- `∪[A065201(n+1), A349794(n+1)]` -/
def P15417424513194101450.Spec : Prop :=
  ∀ n, (P15417424513194101450.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P14730269309953960935

`lt[3, A095960(n+1)]+1`
-/

namespace A307517.P14730269309953960935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307517.P14730269309953960935

namespace A307517

/-- `lt[3, A095960(n+1)]+1` -/
def P14730269309953960935.Spec : Prop :=
  ∀ n, (P14730269309953960935.a n : ℤ) = A307517 (n + 1)

end A307517

/-! ## A307517.P14954075844484845904

`lt[3, A136164(n+1)]+1`
-/

namespace A307517.P14954075844484845904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307517.P14954075844484845904

namespace A307517

/-- `lt[3, A136164(n+1)]+1` -/
def P14954075844484845904.Spec : Prop :=
  ∀ n, (P14954075844484845904.a n : ℤ) = A307517 (n + 1)

end A307517

/-!
# A307518: Positive integers m where |m*sin(m)| increases to a new record.

The programs for A307518, there is no canonical definition to state claims against.
-/

/-! ## A307518.P9894227432940098206

`A307558(n)+a(n-1)` with `a(0)=1`
-/

namespace A307518.P9894227432940098206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307558 n + a (n - 1)

end

end A307518.P9894227432940098206

/-! ## A307518.P1183592934401546810

`∑[A307558(A028310(n))]`
-/

namespace A307518.P1183592934401546810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307518.P1183592934401546810

/-! ## A307518.P17755122764180094781

`∑[A307558(A000007(n)+n)]`
-/

namespace A307518.P17755122764180094781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307518.P17755122764180094781

/-! ## A307518.P17078835821079141781

`∑[A307558(xor(n, A000007(n)))]`
-/

namespace A307518.P17078835821079141781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307518.P17078835821079141781

/-! ## A307518.P13784691124464656565

`∑[A307558(n+1)]+1-A307558(n+1)`
-/

namespace A307518.P13784691124464656565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A307558 (n + 1))

end

end A307518.P13784691124464656565

/-! ## A307518.P15992585160973192837

`∑[A307558(A008619(A004273(n)))]`
-/

namespace A307518.P15992585160973192837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307518.P15992585160973192837

/-!
# A307522: Expansion of Product_{k>=1} ((1 + x)^k - x^k)/((1 + x)^k + x^k).

The programs for A307522, there is no canonical definition to state claims against.
-/

/-! ## A307522.P11568265565855195349

`A103198(n)*A280560(n)`
-/

namespace A307522.P11568265565855195349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103198 n * A280560 n

end

end A307522.P11568265565855195349

/-! ## A307522.P18208900475789683670

`(A033999(n)-A062157(n))*A103198(n)`
-/

namespace A307522.P18208900475789683670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n - A062157 n) * A103198 n

end

end A307522.P18208900475789683670

/-! ## A307522.P716614822964184076

`A002448(n²)*A103198(n)`
-/

namespace A307522.P716614822964184076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2) * A103198 n

end

end A307522.P716614822964184076

/-! ## A307522.P6154060674021844832

`A103198(n)*A257076(A033428(n))`
-/

namespace A307522.P6154060674021844832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103198 n * A257076 (A033428 n).toNat

end

end A307522.P6154060674021844832

/-! ## A307522.P555305844064258264

`A103198(n)*A158522(A000079(n))`
-/

namespace A307522.P555305844064258264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103198 n * A158522 (A000079 n).toNat

end

end A307522.P555305844064258264

/-!
# A307523: Expansion of e.g.f. Product_{k>=1} (1 + log(1 + x)^k)/(1 - log(1 + x)^k).

The programs for A307523, there is no canonical definition to state claims against.
-/

/-! ## A307523.P5325216441499230444

`A071995(3*(n+1)!)`
-/

namespace A307523.P5325216441499230444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071995 (3 * Nat.factorial (n + 1))

end

end A307523.P5325216441499230444

/-! ## A307523.P58583920910203633

`A071995(3*∏[n+1])`
-/

namespace A307523.P58583920910203633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071995 (3 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A307523.P58583920910203633

/-!
# A307524: Expansion of e.g.f. Product_{k>=1} (1 + log(1/(1 - x))^k)/(1 - log(1/(1 - x))^k).

The programs for A307524, there is no canonical definition to state claims against.
-/

/-! ## A307524.P4474913578112936369

`∑[A186023(2*(n+1)²)]`
-/

namespace A307524.P4474913578112936369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186023 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307524.P4474913578112936369

/-!
# A307525: Expansion of e.g.f. Product_{k>=1} 1/(1 - log(1/(1 - x))^k/k!).

The programs for A307525, there is no canonical definition to state claims against.
-/

/-! ## A307525.P4701094095241889830

`A361149(A023361(n))+A270665(n)`
-/

namespace A307525.P4701094095241889830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361149 (A023361 n).toNat + A270665 n

end

end A307525.P4701094095241889830

/-! ## A307525.P6547325618008933511

`A302405(A349331(n))+A052787(n)`
-/

namespace A307525.P6547325618008933511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A349331 n).toNat + A052787 n

end

end A307525.P6547325618008933511

/-!
# A307526: Expansion of 1/theta_4(1/theta_4(x) - 1), where theta_4() is the Jacobi theta function.

The programs for A307526, there is no canonical definition to state claims against.
-/

/-! ## A307526.P1616786144188272630

`A235262(∏[2*n+1]+n)`
-/

namespace A307526.P1616786144188272630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235262 (∏ j ∈ Finset.range (n + 1), f1 j + n)

end

end A307526.P1616786144188272630

/-!
# A307527: Odd terms in A305236.

The programs for A307527, there is no canonical definition to state claims against.
-/

/-! ## A307527.P2766513635567060030

`∩[or(1, A305236(n+1)), A305236(n+1)]`
-/

namespace A307527.P2766513635567060030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A305236 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307527.P2766513635567060030

/-! ## A307527.P5529800125021817210

`∩[A305236(n+1), A359564(n+1)]`
-/

namespace A307527.P5529800125021817210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307527.P5529800125021817210

/-! ## A307527.P229751494055249841

`∩[A324745(n+1), A359564(n+1)]`
-/

namespace A307527.P229751494055249841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307527.P229751494055249841

/-!
# A307530: Primes p for which the continued fraction expansion of sqrt(p) has a single 1 starting at second position.

The programs for A307530, there is no canonical definition to state claims against.
-/

/-! ## A307530.P7837920394669537474

`p?[A000969(A000194(3*n+1))+n]`
-/

namespace A307530.P7837920394669537474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 (A000194 (3 * n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307530.P7837920394669537474

/-! ## A307530.P17276769957318920942

`p?[A131380(A068527(n))+A038608(n)]`
-/

namespace A307530.P17276769957318920942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (A068527 n).toNat + A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307530.P17276769957318920942

/-! ## A307530.P12032358886861103281

`p?[A093995(n+1)-A092942(A025581(n))]`
-/

namespace A307530.P12032358886861103281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A092942 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307530.P12032358886861103281

/-! ## A307530.P14763586174654293343

`p?[A000010(A010766(n+1))*A004201(n+1)]`
-/

namespace A307530.P14763586174654293343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A010766 (n + 1)).toNat * A004201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307530.P14763586174654293343

/-! ## A307530.P7664482274532298027

`p?[(A061885(n)+1)*A000009(A010766(n+1))]`
-/

namespace A307530.P7664482274532298027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061885 n + 1) * A000009 (A010766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307530.P7664482274532298027

/-!
# A307531: a(n) is the greatest sum i + j + k + l where i^2 + j^2 + k^2 + l^2 = n and 0 <= i <= j <= k <= l.

The programs for A307531, there is no canonical definition to state claims against.
-/

/-! ## A307531.P1615010399844634321

`A116939(comp[or(2, n)-1]%A111030(n))`
-/

namespace A307531.P1615010399844634321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A111030 n)).toNat

end

end A307531.P1615010399844634321

/-! ## A307531.P9958911810449435422

`A116939(or(2*n, n%4)%A111030(n))`
-/

namespace A307531.P9958911810449435422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.tmod (Nat.lor (2 * n) (n % 4) : ℤ) (A111030 n)).toNat

end

end A307531.P9958911810449435422

/-! ## A307531.P9267918317706999334

`A076622(A368638(n+1))`
-/

namespace A307531.P9267918317706999334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076622 (A368638 (n + 1)).toNat

end

end A307531.P9267918317706999334

/-! ## A307531.P14214992079117170888

`A257564(A072834(n))`
-/

namespace A307531.P14214992079117170888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A072834 n).toNat

end

end A307531.P14214992079117170888

/-! ## A307531.P4052501258400217283

`A257564(A047393(n+1))`
-/

namespace A307531.P4052501258400217283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A047393 (n + 1)).toNat

end

end A307531.P4052501258400217283

/-!
# A307532: a(n) is the smallest k > 2^(2^n)+1 such that 2^(k-1) == 1 (mod (2^(2^n)-1)*k).

The programs for A307532, there is no canonical definition to state claims against.
-/

/-! ## A307532.P14815844634837234727

`A151800(A007717(n)+A001146(n))`
-/

namespace A307532.P14815844634837234727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007717 n + A001146 n).toNat

end

end A307532.P14815844634837234727

/-!
# A307533: Primes p such that p+2 has exactly two distinct prime factors.

The programs for A307533, the canonical program `A307533.P10396454960199393413` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307533 has offset 1).

The definition of A307533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307533.P10396454960199393413

`p?[n*A001221(n+2)-n]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307533

/-- `p?[n*A001221(n+2)-n]` -/
def P10396454960199393413.Spec : Prop :=
  ∀ n, P10396454960199393413.a n = A307533 (n + 1)

theorem P10396454960199393413.correct : P10396454960199393413.Spec := by
  intro n
  simp only [A307533, Nat.add_sub_cancel]

end A307533

/-! ## A307533.P2872950386176188112

`p?[A392386(n+3)]`
-/

namespace A307533.P2872950386176188112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307533.P2872950386176188112

namespace A307533

/-- `p?[A392386(n+3)]` -/
def P2872950386176188112.Spec : Prop :=
  ∀ n, P2872950386176188112.a n = A307533 (n + 1)

end A307533

/-! ## A307533.P14350627215678896486

`filter[A392386(n+3), A010051(#)]`
-/

namespace A307533.P14350627215678896486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A307533.P14350627215678896486

namespace A307533

/-- `filter[A392386(n+3), A010051(#)]` -/
def P14350627215678896486.Spec : Prop :=
  ∀ n, P14350627215678896486.a n = A307533 (n + 1)

end A307533

/-! ## A307533.P11413215042711238138

`filter[A392386(n+3), A323152(#)]`
-/

namespace A307533.P11413215042711238138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A307533.P11413215042711238138

namespace A307533

/-- `filter[A392386(n+3), A323152(#)]` -/
def P11413215042711238138.Spec : Prop :=
  ∀ n, P11413215042711238138.a n = A307533 (n + 1)

end A307533

/-! ## A307533.P18389250267271941550

`filter[A392386(n+3), A323153(#)]`
-/

namespace A307533.P18389250267271941550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A307533.P18389250267271941550

namespace A307533

/-- `filter[A392386(n+3), A323153(#)]` -/
def P18389250267271941550.Spec : Prop :=
  ∀ n, P18389250267271941550.a n = A307533 (n + 1)

end A307533

/-! ## A307533.P7010305517351027042

`∩[A004139(n+1), A392386(n+1)]`
-/

namespace A307533.P7010305517351027042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P7010305517351027042

namespace A307533

/-- `∩[A004139(n+1), A392386(n+1)]` -/
def P7010305517351027042.Spec : Prop :=
  ∀ n, (P7010305517351027042.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P5589586613143755685

`∩[A049591(n+1), A392386(n+1)]`
-/

namespace A307533.P5589586613143755685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P5589586613143755685

namespace A307533

/-- `∩[A049591(n+1), A392386(n+1)]` -/
def P5589586613143755685.Spec : Prop :=
  ∀ n, (P5589586613143755685.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P17560856962375536717

`∩[A065091(n+1), A392386(n+1)]`
-/

namespace A307533.P17560856962375536717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P17560856962375536717

namespace A307533

/-- `∩[A065091(n+1), A392386(n+1)]` -/
def P17560856962375536717.Spec : Prop :=
  ∀ n, (P17560856962375536717.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P15408429370151240595

`∩[A066542(n+1), A392386(n+1)]`
-/

namespace A307533.P15408429370151240595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P15408429370151240595

namespace A307533

/-- `∩[A066542(n+1), A392386(n+1)]` -/
def P15408429370151240595.Spec : Prop :=
  ∀ n, (P15408429370151240595.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P1314904109574368166

`∩[A071621(n+1), A392386(n+1)]`
-/

namespace A307533.P1314904109574368166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P1314904109574368166

namespace A307533

/-- `∩[A071621(n+1), A392386(n+1)]` -/
def P1314904109574368166.Spec : Prop :=
  ∀ n, (P1314904109574368166.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P13420413737508184703

`∩[A083249(n+1), A392386(n+1)]`
-/

namespace A307533.P13420413737508184703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P13420413737508184703

namespace A307533

/-- `∩[A083249(n+1), A392386(n+1)]` -/
def P13420413737508184703.Spec : Prop :=
  ∀ n, (P13420413737508184703.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P7658657194780429066

`∩[A108719(n+1), A392386(n+1)]`
-/

namespace A307533.P7658657194780429066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P7658657194780429066

namespace A307533

/-- `∩[A108719(n+1), A392386(n+1)]` -/
def P7658657194780429066.Spec : Prop :=
  ∀ n, (P7658657194780429066.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P5891298937486797739

`∩[A161346(n+1), A392386(n+1)]`
-/

namespace A307533.P5891298937486797739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P5891298937486797739

namespace A307533

/-- `∩[A161346(n+1), A392386(n+1)]` -/
def P5891298937486797739.Spec : Prop :=
  ∀ n, (P5891298937486797739.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P3603387809393792263

`∩[A161428(n+1), A392386(n+1)]`
-/

namespace A307533.P3603387809393792263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P3603387809393792263

namespace A307533

/-- `∩[A161428(n+1), A392386(n+1)]` -/
def P3603387809393792263.Spec : Prop :=
  ∀ n, (P3603387809393792263.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P15898237889137258982

`∩[A215848(n+1), A392386(n+1)]`
-/

namespace A307533.P15898237889137258982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P15898237889137258982

namespace A307533

/-- `∩[A215848(n+1), A392386(n+1)]` -/
def P15898237889137258982.Spec : Prop :=
  ∀ n, (P15898237889137258982.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P11855391890292432445

`p?[eq[A001221(n+2), A020639(n+1)]]`
-/

namespace A307533.P11855391890292432445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A307533.P11855391890292432445

namespace A307533

/-- `p?[eq[A001221(n+2), A020639(n+1)]]` -/
def P11855391890292432445.Spec : Prop :=
  ∀ n, (P11855391890292432445.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P6650845683665474894

`p?[A007774(n+1)-2]`
-/

namespace A307533.P6650845683665474894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307533.P6650845683665474894

namespace A307533

/-- `p?[A007774(n+1)-2]` -/
def P6650845683665474894.Spec : Prop :=
  ∀ n, P6650845683665474894.a n = A307533 (n + 1)

end A307533

/-! ## A307533.P1689508934196442348

`p?[eq[2, A001221(n+2)]]`
-/

namespace A307533.P1689508934196442348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A307533.P1689508934196442348

namespace A307533

/-- `p?[eq[2, A001221(n+2)]]` -/
def P1689508934196442348.Spec : Prop :=
  ∀ n, (P1689508934196442348.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P15557526528087433858

`p?[eq[2, A001222(A007947(n+2))]]`
-/

namespace A307533.P15557526528087433858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A307533.P15557526528087433858

namespace A307533

/-- `p?[eq[2, A001222(A007947(n+2))]]` -/
def P15557526528087433858.Spec : Prop :=
  ∀ n, (P15557526528087433858.a n : ℤ) = A307533 (n + 1)

end A307533

/-! ## A307533.P7437197395465473688

`∩[A093515(2*(n+1)), A007774(n+2)-2]`
-/

namespace A307533.P7437197395465473688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307533.P7437197395465473688

namespace A307533

/-- `∩[A093515(2*(n+1)), A007774(n+2)-2]` -/
def P7437197395465473688.Spec : Prop :=
  ∀ n, (P7437197395465473688.a n : ℤ) = A307533 (n + 1)

end A307533

/-!
# A307534: Heinz numbers of strict integer partitions with 3 parts, all of which are odd.

The programs for A307534, there is no canonical definition to state claims against.
-/

/-! ## A307534.P13204761825081279384

`filter[A338471(n+1), A008966(#)]`
-/

namespace A307534.P13204761825081279384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A307534.P13204761825081279384

/-! ## A307534.P5417895871219493371

`filter[A338471(n+1), A122895(#)]`
-/

namespace A307534.P5417895871219493371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A307534.P5417895871219493371

/-! ## A307534.P2535063704696772608

`filter[A338471(n+1), A252233(#)]`
-/

namespace A307534.P2535063704696772608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A307534.P2535063704696772608

/-! ## A307534.P8184147939968894305

`filter[A338471(n+1), A323154(#)]`
-/

namespace A307534.P8184147939968894305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A307534.P8184147939968894305

/-! ## A307534.P7519571636126996283

`filter[A338471(n+1), A353519(#)]`
-/

namespace A307534.P7519571636126996283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A307534.P7519571636126996283

/-!
# A307539: Heinz numbers of square integer partitions, where the Heinz number of an integer partition (y_1,...,y_k) is prime(y_1)*...*prime(y_k).

The programs for A307539, there is no canonical definition to state claims against.
-/

/-! ## A307539.P9786944234029984673

`record[∑{p}[n, #]]^n`
-/

namespace A307539.P9786944234029984673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A307539.P9786944234029984673

/-! ## A307539.P15949020840003009900

`eq[n, ∏{d}[n, #]]^n`
-/

namespace A307539.P15949020840003009900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ n

end

end A307539.P15949020840003009900

/-! ## A307539.P613339764400301811

`eq[n, ∑{p}[n, #]]^n`
-/

namespace A307539.P613339764400301811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ n

end

end A307539.P613339764400301811

/-! ## A307539.P3631749467609009092

`p?[∑[n²%3]]^n`
-/

namespace A307539.P3631749467609009092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ n

end

end A307539.P3631749467609009092

/-! ## A307539.P1301539660050646938

`p?[floor(n-sqrt(n))]^n`
-/

namespace A307539.P1301539660050646938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.sqrt (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ n

end

end A307539.P1301539660050646938

/-!
# A307540: Irregular triangle T(n,k) such that squarefree m with gpf(m) = prime(n) in each row are arranged according to increasing values of phi(m)/m.

The programs for A307540, there is no canonical definition to state claims against.
-/

/-! ## A307540.P14337261581698624672

`A019565(A307544(n))`
-/

namespace A307540.P14337261581698624672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A307544 n).toNat

end

end A307540.P14337261581698624672

/-! ## A307540.P15365587870434606999

`A019565(∑{e}[A000079(n), A059894(#)])`
-/

namespace A307540.P15365587870434606999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A059894 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A307540.P15365587870434606999

/-! ## A307540.P9081576444229749377

`A331288(2^A307544(n))`
-/

namespace A307540.P9081576444229749377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A307544 n : ℤ))).toNat

end

end A307540.P9081576444229749377

/-! ## A307540.P9777355017120900518

`A331288(2^(A056539(2*n)/2))`
-/

namespace A307540.P9777355017120900518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A056539 (2 * n) : ℚ) / 2 : ℝ))).toNat

end

end A307540.P9777355017120900518

/-! ## A307540.P17887521462978882088

`A334870(A019565(A005940(A122111(A005940(n+1)))))`
-/

namespace A307540.P17887521462978882088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334870 (A019565 (A005940 (A122111 (A005940 (n + 1)).toNat).toNat).toNat).toNat

end

end A307540.P17887521462978882088

/-!
# A307542: Even integers k such that there exists a prime p with p = min{q: q prime and (k - q) prime} and (k - p) < p^2.

The programs for A307542, there is no canonical definition to state claims against.
-/

/-! ## A307542.P14825405056782707767

`A167791(n+1)+A070748(A089472(n))`
-/

namespace A307542.P14825405056782707767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1) + A070748 (A089472 n).toNat

end

end A307542.P14825405056782707767

/-! ## A307542.P3100510079555521784

`A005361(A325839(n+1))+3`
-/

namespace A307542.P3100510079555521784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A325839 (n + 1)).toNat + 3

end

end A307542.P3100510079555521784

/-! ## A307542.P1862771490598833017

`A005361(A363333(n+1))+3`
-/

namespace A307542.P1862771490598833017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A363333 (n + 1)).toNat + 3

end

end A307542.P1862771490598833017

/-! ## A307542.P10422587203711545912

`eq[A268173(n), A289944(n+1)]`
-/

namespace A307542.P10422587203711545912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307542.P10422587203711545912

/-! ## A307542.P14627149204703136409

`record[Δ[A000015(A215886(n+1))]]`
-/

namespace A307542.P14627149204703136409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A215886 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307542.P14627149204703136409

/-!
# A307543: G.f. A(x) satisfies: A(x) = 1/(1 + (-x)^a(0)/(1 + (-x)^a(1)/(1 + (-x)^a(2)/(1 + (-x)^a(3)/(1 + ...))))), a continued fraction.

The programs for A307543, there is no canonical definition to state claims against.
-/

/-! ## A307543.P3176148914182593974

`A026819(A091964(n)+n)`
-/

namespace A307543.P3176148914182593974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A091964 n + (n : ℤ)).toNat

end

end A307543.P3176148914182593974

/-! ## A307543.P13843081065279943489

`A046155(A091964(n)+n)`
-/

namespace A307543.P13843081065279943489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A091964 n + (n : ℤ)).toNat

end

end A307543.P13843081065279943489

/-! ## A307543.P18142778806049205815

`A185283(or(n, A049219(n+1)))`
-/

namespace A307543.P18142778806049205815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.lor (n : ℤ) (A049219 (n + 1))).toNat

end

end A307543.P18142778806049205815

/-! ## A307543.P4173481034974624532

`A026819(A307128(n)+A267529(n))`
-/

namespace A307543.P4173481034974624532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A307128 n + A267529 n).toNat

end

end A307543.P4173481034974624532

/-! ## A307543.P9445528439956783172

`A046155(A307128(n)+A267529(n))`
-/

namespace A307543.P9445528439956783172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A307128 n + A267529 n).toNat

end

end A307543.P9445528439956783172

/-!
# A307544: Irregular triangle read by rows: T(n,k) = A087207(A307540(n,k)).

The programs for A307544, there is no canonical definition to state claims against.
-/

/-! ## A307544.P7378083439239031436

`A087207(A307540(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307544.P7378083439239031436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A307540 n).toNat

end

end A307544.P7378083439239031436

/-! ## A307544.P6520004796822437474

`∑{p}[A307540(n), A248663(#)]`
-/

namespace A307544.P6520004796822437474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A307544.P6520004796822437474

/-! ## A307544.P3988482931450781002

`∑{p}[A307540(n), A277333(#)]`
-/

namespace A307544.P3988482931450781002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A307544.P3988482931450781002

/-! ## A307544.P5324970030271862087

`A123108(A345401(n))%A214963(2*n+1)`
-/

namespace A307544.P5324970030271862087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (A345401 n).toNat) (A214963 (2 * n + 1))

end

end A307544.P5324970030271862087

/-! ## A307544.P14813790346516221287

`A056539(2*n)/A000005(A181669(2*n+1))`
-/

namespace A307544.P14813790346516221287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056539 (2 * n) : ℚ) / (A000005 (A181669 (2 * n + 1)).toNat : ℚ)

end

end A307544.P14813790346516221287

/-!
# A307545: G.f. A(x) satisfies: A(x) = 1/(1 - x^a(0) - x^a(1) - x^a(2) - x^a(3) - ...) - x.

The programs for A307545, there is no canonical definition to state claims against.
-/

/-! ## A307545.P2696045232338224906

`A109167(A292884(n+1)-1)`
-/

namespace A307545.P2696045232338224906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109167 (A292884 (n + 1) - 1).toNat

end

end A307545.P2696045232338224906

/-! ## A307545.P12726547850039632663

`A034888(A124741(4-3*(1-a(n-1)-a(n-2))))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A307545.P12726547850039632663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A034888 (A124741 (4 - 3 * (1 - a (n - 1) - a (n - 2))).toNat).toNat

end

end A307545.P12726547850039632663

/-! ## A307545.P12749589505694801771

`A001462(A256030(n+1)-A006257(n))`
-/

namespace A307545.P12749589505694801771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A256030 (n + 1) - A006257 n).toNat

end

end A307545.P12749589505694801771

/-! ## A307545.P10761450704727525927

`A001462(A256030(n+1)-A106617(n))`
-/

namespace A307545.P10761450704727525927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A256030 (n + 1) - A106617 n).toNat

end

end A307545.P10761450704727525927

/-! ## A307545.P14953020138064256275

`A001462(A256030(n+1)-A001065(n+1))`
-/

namespace A307545.P14953020138064256275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A256030 (n + 1) - A001065 (n + 1)).toNat

end

end A307545.P14953020138064256275

/-!
# A307546: Prime indices of A195685.

The programs for A307546, there is no canonical definition to state claims against.
-/

/-! ## A307546.P12385149566915951831

`A000720(A195685(n+1))`
-/

namespace A307546.P12385149566915951831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A195685 (n + 1)).toNat

end

end A307546.P12385149566915951831

/-! ## A307546.P15155140131015984558

`A000720(A248201(n+1)/2)`
-/

namespace A307546.P15155140131015984558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A248201 (n + 1) : ℚ) / 2)).toNat

end

end A307546.P15155140131015984558

/-! ## A307546.P3064368634956230771

`A061395(A248201(n+1)/2)`
-/

namespace A307546.P3064368634956230771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A248201 (n + 1) : ℚ) / 2)).toNat

end

end A307546.P3064368634956230771

/-! ## A307546.P14358727892635719235

`∏{p}[A248201(n+1), A000720(#)]`
-/

namespace A307546.P14358727892635719235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A307546.P14358727892635719235

/-! ## A307546.P3303015609173326834

`A061395((A039833(n+1)+1)/2)`
-/

namespace A307546.P3303015609173326834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A039833 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A307546.P3303015609173326834

/-! ## A307546.P14971137270944229449

`A297109(A195685(2*n+1-n))`
-/

namespace A307546.P14971137270944229449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A195685 (2 * n + 1 - n)).toNat

end

end A307546.P14971137270944229449

/-! ## A307546.P2195881753262414358

`A061395(A248201(n+1))`
-/

namespace A307546.P2195881753262414358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A248201 (n + 1)).toNat

end

end A307546.P2195881753262414358

/-! ## A307546.P6467246588201734637

`A061395(A039833(n+1)+1)`
-/

namespace A307546.P6467246588201734637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A039833 (n + 1) + 1).toNat

end

end A307546.P6467246588201734637

/-! ## A307546.P6725864139310365912

`A061395(2*A195685(n+1))`
-/

namespace A307546.P6725864139310365912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A195685 (n + 1)).toNat

end

end A307546.P6725864139310365912

/-! ## A307546.P11152969004013613070

`A061395(A173969(n+1)/2)`
-/

namespace A307546.P11152969004013613070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A173969 (n + 1) : ℚ) / 2)).toNat

end

end A307546.P11152969004013613070

/-! ## A307546.P8861701352584018424

`A061395(A173969(n+1))`
-/

namespace A307546.P8861701352584018424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A173969 (n + 1)).toNat

end

end A307546.P8861701352584018424

/-! ## A307546.P13189667430608670563

`A230980(A195685(n+1)+1)`
-/

namespace A307546.P13189667430608670563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A195685 (n + 1) + 1).toNat

end

end A307546.P13189667430608670563

/-! ## A307546.P13640448478592331047

`A003963(A248201(n+1)/2)`
-/

namespace A307546.P13640448478592331047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A248201 (n + 1) : ℚ) / 2)).toNat

end

end A307546.P13640448478592331047

/-! ## A307546.P12698720761389733589

`A055396(or(1, A195685(n+1)))`
-/

namespace A307546.P12698720761389733589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A195685 (n + 1))).toNat

end

end A307546.P12698720761389733589

/-! ## A307546.P1388729997536954765

`A321648(A039833(n+1)+1)`
-/

namespace A307546.P1388729997536954765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A039833 (n + 1) + 1).toNat

end

end A307546.P1388729997536954765

/-!
# A307552: Number of longest paths in the n X n antelope graph.

The programs for A307552, there is no canonical definition to state claims against.
-/

/-! ## A307552.P12393445176395162661

`A165032(A065648(∑[n!]))`
-/

namespace A307552.P12393445176395162661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 (A065648 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A307552.P12393445176395162661

/-! ## A307552.P10486660268373770312

`A002266(A039755(n)*A104150(n))`
-/

namespace A307552.P10486660268373770312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A039755 n * A104150 n).toNat

end

end A307552.P10486660268373770312

/-! ## A307552.P7318944216804395341

`A017461(A064535(n))%A038110(n+1)`
-/

namespace A307552.P7318944216804395341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017461 (A064535 n).toNat) (A038110 (n + 1))

end

end A307552.P7318944216804395341

/-! ## A307552.P4910972173785026581

`A165032(A035628(2*n+3)*A127181(n+1))`
-/

namespace A307552.P4910972173785026581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 (A035628 (2 * n + 3) * A127181 (n + 1)).toNat

end

end A307552.P4910972173785026581

/-!
# A307553: Number of longest paths in the n X n fiveleaper graph.

The programs for A307553, there is no canonical definition to state claims against.
-/

/-! ## A307553.P16746652272364703955

`A076660(A325258(n))-A193592(n)`
-/

namespace A307553.P16746652272364703955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076660 (A325258 n).toNat - A193592 n

end

end A307553.P16746652272364703955

/-!
# A307555: Number of Motzkin meanders of length n with an even number of humps.

The programs for A307555, there is no canonical definition to state claims against.
-/

/-! ## A307555.P12264620853284336325

`A325925(n)+A325921(n)`
-/

namespace A307555.P12264620853284336325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325925 n + A325921 n

end

end A307555.P12264620853284336325

/-! ## A307555.P4215749081425212952

`A005773(n+1)-A307572(n)`
-/

namespace A307555.P4215749081425212952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A307572 n

end

end A307555.P4215749081425212952

/-! ## A307555.P4916157201302853008

`A001006(n)+A005774(n)-A307572(n)`
-/

namespace A307555.P4916157201302853008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (A005774 n - A307572 n)

end

end A307555.P4916157201302853008

/-! ## A307555.P15958059757396417769

`A307575(n)+A307577(n)-A307572(n)`
-/

namespace A307555.P15958059757396417769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n + (A307577 n - A307572 n)

end

end A307555.P15958059757396417769

/-! ## A307555.P3237153870354937498

`A307575(n)+A325925(n)-A325923(n)`
-/

namespace A307555.P3237153870354937498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n + (A325925 n - A325923 n)

end

end A307555.P3237153870354937498

/-! ## A307555.P5512788493675750303

`A038622(∑[n])-A307572(n)`
-/

namespace A307555.P5512788493675750303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j) - A307572 n

end

end A307555.P5512788493675750303

/-! ## A307555.P2088322730010067748

`record[A038622(n)]-A307572(n)`
-/

namespace A307555.P2088322730010067748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307572 n

end

end A307555.P2088322730010067748

/-!
# A307556: Number of (undirected) longest paths in the n X n bishop graph.

The programs for A307556, there is no canonical definition to state claims against.
-/

/-! ## A307556.P6926792211755078256

`A000034(n)*A307934(n+1)`
-/

namespace A307556.P6926792211755078256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A307934 (n + 1)

end

end A307556.P6926792211755078256

/-! ## A307556.P1861827040538851252

`A040001(n+1)*A307934(n+1)`
-/

namespace A307556.P1861827040538851252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A307934 (n + 1)

end

end A307556.P1861827040538851252

/-! ## A307556.P729335288347057926

`(2-A059841(n))*A307934(n+1)`
-/

namespace A307556.P729335288347057926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A307934 (n + 1)

end

end A307556.P729335288347057926

/-! ## A307556.P15591027966737730240

`A014709(2*n)*A307934(n+1)`
-/

namespace A307556.P15591027966737730240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (2 * n) * A307934 (n + 1)

end

end A307556.P15591027966737730240

/-! ## A307556.P2240800025675440971

`A020639(A328580(n))*A307934(n+1)`
-/

namespace A307556.P2240800025675440971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328580 n).toNat * A307934 (n + 1)

end

end A307556.P2240800025675440971

/-!
# A307557: Number of Motzkin meanders of length n with no level steps at odd level.

The programs for A307557, there is no canonical definition to state claims against.
-/

/-! ## A307557.P5251817089259311359

`(A026569(n)+A026569(n+1))/2`
-/

namespace A307557.P5251817089259311359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 n + A026569 (n + 1) : ℚ) / 2

end

end A307557.P5251817089259311359

/-! ## A307557.P8295716673177645902

`A026569(n)+Δ[A026569(n)/2]`
-/

namespace A307557.P8295716673177645902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A307557.P8295716673177645902

/-! ## A307557.P16258287436608906633

`A014682(A026585(n+1))+∑[A026585(n)]`
-/

namespace A307557.P16258287436608906633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026585 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307557.P16258287436608906633

/-! ## A307557.P5075354996357863807

`A014682(A026569(n+1)+A026569(n))`
-/

namespace A307557.P5075354996357863807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026569 (n + 1) + A026569 n).toNat

end

end A307557.P5075354996357863807

/-! ## A307557.P108071839605441892

`A038572(A026569(n+1)+A026569(n))`
-/

namespace A307557.P108071839605441892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A026569 (n + 1) + A026569 n).toNat

end

end A307557.P108071839605441892

/-!
# A307558: First differences of A307518.

The programs for A307558, there is no canonical definition to state claims against.
-/

/-! ## A307558.P11907429224446728867

`A307518(n+2)-A307518(n+1)`
-/

namespace A307558.P11907429224446728867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (n + 2) - A307518 (n + 1)

end

end A307558.P11907429224446728867

/-! ## A307558.P12657608485934406090

`Δ[A307518(n+1)]`
-/

namespace A307558.P12657608485934406090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307558.P12657608485934406090

/-! ## A307558.P3714219204593020327

`abs(Δ[A307518(A008619(2*n))])`
-/

namespace A307558.P3714219204593020327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A307558.P3714219204593020327

/-! ## A307558.P15268102359397092326

`Δ[A307518(A008619(2*n))]%A001539(n)`
-/

namespace A307558.P15268102359397092326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001539 n)

end

end A307558.P15268102359397092326

/-! ## A307558.P5880931688316290085

`Δ[A307518(A008619(2*n))%A017126(n)]`
-/

namespace A307558.P5880931688316290085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307518 (A008619 (2 * n)).toNat) (A017126 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307558.P5880931688316290085

/-! ## A307558.P4578283800877992923

`Δ[A307518(A008619(2*n))]*A000034(2*n)`
-/

namespace A307558.P4578283800877992923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000034 (2 * n)

end

end A307558.P4578283800877992923

/-! ## A307558.P15590954865901798165

`abs(Δ[A307518(A110514(2*n))])`
-/

namespace A307558.P15590954865901798165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A307558.P15590954865901798165

/-! ## A307558.P17908542467854373839

`Δ[A307518(A110514(2*n))%A001539(n)]`
-/

namespace A307558.P17908542467854373839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307518 (A110514 (2 * n)).toNat) (A001539 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307558.P17908542467854373839

/-! ## A307558.P2980927859489809770

`Δ[A307518(A110514(2*n))]%A004771(n)`
-/

namespace A307558.P2980927859489809770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004771 n)

end

end A307558.P2980927859489809770

/-! ## A307558.P13388700349812242740

`Δ[A307518(A110514(2*n))]^-A057428(n)`
-/

namespace A307558.P13388700349812242740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A110514 (2 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (-A057428 n : ℤ)

end

end A307558.P13388700349812242740

/-! ## A307558.P8890126341475068861

`Δ[A307518(A110514(2*n))]-A063524(2*n)`
-/

namespace A307558.P8890126341475068861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A063524 (2 * n)

end

end A307558.P8890126341475068861

/-! ## A307558.P15493942625045521717

`Δ[record[A307518(A051340(n))]]`
-/

namespace A307558.P15493942625045521717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307518 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307558.P15493942625045521717

/-!
# A307559: a(n) = floor(n/3)*(n - floor(n/3))*(n - floor(n/3) - 1).

The programs for A307559, the canonical program `A307559.P8321343973763557261` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307559 has offset 1).

The definition of A307559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/3)*(n+1-floor((n+1)/3))*(n+1-floor((n+1)/3)-1)` (program `A307559.P8321343973763557261`, by `A307559.P8321343973763557261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307559.P8321343973763557261

`floor((n+1)/3)*(n+1-floor((n+1)/3))*(n+1-floor((n+1)/3)-1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307559

/-- `floor((n+1)/3)*(n+1-floor((n+1)/3))*(n+1-floor((n+1)/3)-1)` -/
def P8321343973763557261.Spec : Prop :=
  ∀ n, P8321343973763557261.a n = A307559 (n + 1)

theorem P8321343973763557261.correct : P8321343973763557261.Spec := by
  intro n
  simp only [A307559, Nat.add_sub_cancel]

end A307559

/-! ## A307559.P810992569314193107

`∑[∑[lcm(2, floor(2*n/3))]]`
-/

namespace A307559.P810992569314193107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊2 * ((n : ℚ) / 3)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307559.P810992569314193107

namespace A307559

/-- `∑[∑[lcm(2, floor(2*n/3))]]` -/
def P810992569314193107.Spec : Prop :=
  ∀ n, (P810992569314193107.a n : ℤ) = A307559 (n + 1)

end A307559

/-! ## A307559.P6022278485820006115

`a(n-1)+2*A082667(n)` with `a(0)=0`
-/

namespace A307559.P6022278485820006115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A082667 n

end

end A307559.P6022278485820006115

namespace A307559

/-- `a(n-1)+2*A082667(n)` -/
def P6022278485820006115.Spec : Prop :=
  ∀ n, P6022278485820006115.a n = A307559 (n + 1)

end A307559

/-! ## A307559.P334627811885179637

`∑[n²]-A308266(2*n+1)`
-/

namespace A307559.P334627811885179637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A308266 (2 * n + 1)

end

end A307559.P334627811885179637

namespace A307559

/-- `∑[n²]-A308266(2*n+1)` -/
def P334627811885179637.Spec : Prop :=
  ∀ n, P334627811885179637.a n = A307559 (n + 1)

end A307559

/-! ## A307559.P8287185738895914751

`A000292(2*n)-A190798(2*n+1)`
-/

namespace A307559.P8287185738895914751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n) - A190798 (2 * n + 1)

end

end A307559.P8287185738895914751

namespace A307559

/-- `A000292(2*n)-A190798(2*n+1)` -/
def P8287185738895914751.Spec : Prop :=
  ∀ n, P8287185738895914751.a n = A307559 (n + 1)

end A307559

/-! ## A307559.P17373941179742092745

`(A092352(2*n)-A092353(2*n))/2`
-/

namespace A307559.P17373941179742092745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092352 (2 * n) - A092353 (2 * n) : ℚ) / 2

end

end A307559.P17373941179742092745

namespace A307559

/-- `(A092352(2*n)-A092353(2*n))/2` -/
def P17373941179742092745.Spec : Prop :=
  ∀ n, P17373941179742092745.a n = (A307559 (n + 1) : ℚ)

end A307559

/-! ## A307559.P8564968155877111534

`A181120(2*n+1)-A307872(2*n+1)`
-/

namespace A307559.P8564968155877111534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (2 * n + 1) - A307872 (2 * n + 1)

end

end A307559.P8564968155877111534

namespace A307559

/-- `A181120(2*n+1)-A307872(2*n+1)` -/
def P8564968155877111534.Spec : Prop :=
  ∀ n, P8564968155877111534.a n = A307559 (n + 1)

end A307559

/-! ## A307559.P14790564997300004194

`(A092353(2*n)-A211004(2*n+1))/2`
-/

namespace A307559.P14790564997300004194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092353 (2 * n) - A211004 (2 * n + 1) : ℚ) / 2

end

end A307559.P14790564997300004194

namespace A307559

/-- `(A092353(2*n)-A211004(2*n+1))/2` -/
def P14790564997300004194.Spec : Prop :=
  ∀ n, P14790564997300004194.a n = (A307559 (n + 1) : ℚ)

end A307559

/-! ## A307559.P11513829081642000964

`A225566(2*n+1)/2-A211004(2*n+1)`
-/

namespace A307559.P11513829081642000964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225566 (2 * n + 1) : ℚ) / 2 - (A211004 (2 * n + 1) : ℚ)

end

end A307559.P11513829081642000964

namespace A307559

/-- `A225566(2*n+1)/2-A211004(2*n+1)` -/
def P11513829081642000964.Spec : Prop :=
  ∀ n, P11513829081642000964.a n = (A307559 (n + 1) : ℚ)

end A307559

/-!
# A307560: a(n) = smallest m such that A307629(m) = n.

The programs for A307560, there is no canonical definition to state claims against.
-/

/-! ## A307560.P4624400061435946363

`eq[A102685(n), A230099(n)]`
-/

namespace A307560.P4624400061435946363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307560.P4624400061435946363

/-! ## A307560.P1517787337732745847

`A259361(comp[A216556(n)]²)`
-/

namespace A307560.P1517787337732745847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A307560.P1517787337732745847

/-! ## A307560.P13715592631493506494

`A259361(A216589(n+1)²)`
-/

namespace A307560.P13715592631493506494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A216589 (n + 1) ^ 2).toNat

end

end A307560.P13715592631493506494

/-! ## A307560.P13754250438010099454

`eq[A112348(n+1), A185437(2*n+1)]`
-/

namespace A307560.P13754250438010099454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307560.P13754250438010099454

/-! ## A307560.P6766388532786104694

`A028310(eq[2*n, n*A112348(n)])-1`
-/

namespace A307560.P6766388532786104694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A307560.P6766388532786104694

/-!
# A307561: Numbers k such that both 6*k - 1 and 6*k + 5 are prime.

The programs for A307561, the canonical program `A307561.P12180419070007048395` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307561 has offset 1).

The definition of A307561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307561.P5382997139635337502

`∩[A024898(n+1), A059325(n+1)]`
-/

namespace A307561.P5382997139635337502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307561.P5382997139635337502

namespace A307561

/-- `∩[A024898(n+1), A059325(n+1)]` -/
def P5382997139635337502.Spec : Prop :=
  ∀ n, (P5382997139635337502.a n : ℤ) = A307561 (n + 1)

end A307561

/-! ## A307561.P2542775230055868699

`∩[floor(A007528(n+1)/6), A024898(n+1)]`
-/

namespace A307561.P2542775230055868699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007528 (n + 1) : ℚ) / 6⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307561.P2542775230055868699

namespace A307561

/-- `∩[floor(A007528(n+1)/6), A024898(n+1)]` -/
def P2542775230055868699.Spec : Prop :=
  ∀ n, (P2542775230055868699.a n : ℤ) = A307561 (n + 1)

end A307561

/-! ## A307561.P12180419070007048395

`A024898(eq[1, A024898(n+2)-A024898(n+1)]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307561

/-- `A024898(eq[1, A024898(n+2)-A024898(n+1)]+1)` -/
def P12180419070007048395.Spec : Prop :=
  ∀ n, P12180419070007048395.a n = A307561 (n + 1)

theorem P12180419070007048395.correct : P12180419070007048395.Spec := by
  intro n
  simp only [A307561, Nat.add_sub_cancel]

end A307561

/-! ## A307561.P1161049613149351143

`A024898(eq[1, A059325(n+2)/A024898(n+1)]+1)`
-/

namespace A307561.P1161049613149351143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059325 (n + 2) : ℚ) / (A024898 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A307561.P1161049613149351143

namespace A307561

/-- `A024898(eq[1, A059325(n+2)/A024898(n+1)]+1)` -/
def P1161049613149351143.Spec : Prop :=
  ∀ n, P1161049613149351143.a n = A307561 (n + 1)

end A307561

/-! ## A307561.P1015726349681220216

`A024898(eq[1, A024898(n+2)/A153134(n+1)]+1)`
-/

namespace A307561.P1015726349681220216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024898 (n + 2) : ℚ) / (A153134 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A307561.P1015726349681220216

namespace A307561

/-- `A024898(eq[1, A024898(n+2)/A153134(n+1)]+1)` -/
def P1015726349681220216.Spec : Prop :=
  ∀ n, P1015726349681220216.a n = A307561 (n + 1)

end A307561

/-! ## A307561.P7230846068029992290

`1/2+A174786(n+1)/6`
-/

namespace A307561.P7230846068029992290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 + (A174786 (n + 1) : ℚ) / 6

end

end A307561.P7230846068029992290

namespace A307561

/-- `1/2+A174786(n+1)/6` -/
def P7230846068029992290.Spec : Prop :=
  ∀ n, P7230846068029992290.a n = (A307561 (n + 1) : ℚ)

end A307561

/-! ## A307561.P11079304151387384960

`filter[A059325(n+2), A167020(#)]`
-/

namespace A307561.P11079304151387384960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A307561.P11079304151387384960

namespace A307561

/-- `filter[A059325(n+2), A167020(#)]` -/
def P11079304151387384960.Spec : Prop :=
  ∀ n, P11079304151387384960.a n = A307561 (n + 1)

end A307561

/-! ## A307561.P7401599556967541760

`record[(n+1)*A167020(A167020(n+1)+n+1)]`
-/

namespace A307561.P7401599556967541760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167020 (A167020 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307561.P7401599556967541760

namespace A307561

/-- `record[(n+1)*A167020(A167020(n+1)+n+1)]` -/
def P7401599556967541760.Spec : Prop :=
  ∀ n, P7401599556967541760.a n = A307561 (n + 1)

end A307561

/-! ## A307561.P16250872305376559160

`eq[A167020(n+2), A231776(2*(n+1))]+1`
-/

namespace A307561.P16250872305376559160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307561.P16250872305376559160

namespace A307561

/-- `eq[A167020(n+2), A231776(2*(n+1))]+1` -/
def P16250872305376559160.Spec : Prop :=
  ∀ n, (P16250872305376559160.a n : ℤ) = A307561 (n + 1)

end A307561

/-! ## A307561.P10913465203889078743

`eq[1, A284950(3*n+1)]`
-/

namespace A307561.P10913465203889078743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284950 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307561.P10913465203889078743

namespace A307561

/-- `eq[1, A284950(3*n+1)]` -/
def P10913465203889078743.Spec : Prop :=
  ∀ n, (P10913465203889078743.a n : ℤ) = A307561 (n + 1)

end A307561

/-! ## A307561.P15480565866464970757

`record[(n+1)*A284950(3*n+4)]`
-/

namespace A307561.P15480565866464970757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284950 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307561.P15480565866464970757

namespace A307561

/-- `record[(n+1)*A284950(3*n+4)]` -/
def P15480565866464970757.Spec : Prop :=
  ∀ n, P15480565866464970757.a n = A307561 (n + 1)

end A307561

/-! ## A307561.P1609671306677539813

`A008612(A174786(n+1))`
-/

namespace A307561.P1609671306677539813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A174786 (n + 1)).toNat

end

end A307561.P1609671306677539813

namespace A307561

/-- `A008612(A174786(n+1))` -/
def P1609671306677539813.Spec : Prop :=
  ∀ n, P1609671306677539813.a n = A307561 (n + 1)

end A307561

/-! ## A307561.P1354205581563591224

`A008615(A174786(n+1)+1)`
-/

namespace A307561.P1354205581563591224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A174786 (n + 1) + 1).toNat

end

end A307561.P1354205581563591224

namespace A307561

/-- `A008615(A174786(n+1)+1)` -/
def P1354205581563591224.Spec : Prop :=
  ∀ n, P1354205581563591224.a n = A307561 (n + 1)

end A307561

/-!
# A307562: Numbers k such that both 6*k + 1 and 6*k + 7 are prime.

The programs for A307562, the canonical program `A307562.P10947954791019149991` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307562 has offset 1).

The definition of A307562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307562.P14032072468361003678

`∩[A024899(n+1), A153218(n+1)]`
-/

namespace A307562.P14032072468361003678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307562.P14032072468361003678

namespace A307562

/-- `∩[A024899(n+1), A153218(n+1)]` -/
def P14032072468361003678.Spec : Prop :=
  ∀ n, (P14032072468361003678.a n : ℤ) = A307562 (n + 1)

end A307562

/-! ## A307562.P10087880714532206890

`∩[A024892(n+1), A089953(n+1)]/2`
-/

namespace A307562.P10087880714532206890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A307562.P10087880714532206890

namespace A307562

/-- `∩[A024892(n+1), A089953(n+1)]/2` -/
def P10087880714532206890.Spec : Prop :=
  ∀ n, P10087880714532206890.a n = (A307562 (n + 1) : ℚ)

end A307562

/-! ## A307562.P10947954791019149991

`record[gcd(A153218(n+1)+1, A153218(n+2))]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A307562

/-- `record[gcd(A153218(n+1)+1, A153218(n+2))]` -/
def P10947954791019149991.Spec : Prop :=
  ∀ n, (P10947954791019149991.a n : ℤ) = A307562 (n + 1)

theorem P10947954791019149991.correct : P10947954791019149991.Spec := by
  intro n
  simp only [A307562, Nat.add_sub_cancel]

end A307562

/-! ## A307562.P16602047022811102939

`A014682(∩[A024892(n+1), A089953(n+1)])`
-/

namespace A307562.P16602047022811102939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A307562.P16602047022811102939

namespace A307562

/-- `A014682(∩[A024892(n+1), A089953(n+1)])` -/
def P16602047022811102939.Spec : Prop :=
  ∀ n, P16602047022811102939.a n = A307562 (n + 1)

end A307562

/-! ## A307562.P6060936422026627880

`∩[A024899(n+1), A014682(A089953(n+1))]`
-/

namespace A307562.P6060936422026627880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A089953 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307562.P6060936422026627880

namespace A307562

/-- `∩[A024899(n+1), A014682(A089953(n+1))]` -/
def P6060936422026627880.Spec : Prop :=
  ∀ n, (P6060936422026627880.a n : ℤ) = A307562 (n + 1)

end A307562

/-! ## A307562.P5901888812342992135

`A024899(eq[1, A024899(n+2)-A024899(n+1)]+1)`
-/

namespace A307562.P5901888812342992135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 2) - A024899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A307562.P5901888812342992135

namespace A307562

/-- `A024899(eq[1, A024899(n+2)-A024899(n+1)]+1)` -/
def P5901888812342992135.Spec : Prop :=
  ∀ n, P5901888812342992135.a n = A307562 (n + 1)

end A307562

/-! ## A307562.P13346365297478045664

`A024899(eq[1, A153218(n+2)/A024899(n+1)]+1)`
-/

namespace A307562.P13346365297478045664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153218 (n + 2) : ℚ) / (A024899 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A307562.P13346365297478045664

namespace A307562

/-- `A024899(eq[1, A153218(n+2)/A024899(n+1)]+1)` -/
def P13346365297478045664.Spec : Prop :=
  ∀ n, P13346365297478045664.a n = A307562 (n + 1)

end A307562

/-! ## A307562.P8328797713266595731

`filter[A153218(n+2), A167021(#)]`
-/

namespace A307562.P8328797713266595731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A307562.P8328797713266595731

namespace A307562

/-- `filter[A153218(n+2), A167021(#)]` -/
def P8328797713266595731.Spec : Prop :=
  ∀ n, P8328797713266595731.a n = A307562 (n + 1)

end A307562

/-! ## A307562.P18170401557786682190

`eq[A072815(n+1), A072815(n)]`
-/

namespace A307562.P18170401557786682190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307562.P18170401557786682190

namespace A307562

/-- `eq[A072815(n+1), A072815(n)]` -/
def P18170401557786682190.Spec : Prop :=
  ∀ n, (P18170401557786682190.a n : ℤ) = A307562 (n + 1)

end A307562

/-! ## A307562.P6893561421961322079

`eq[3, A264526(3*n+2)]`
-/

namespace A307562.P6893561421961322079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264526 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307562.P6893561421961322079

namespace A307562

/-- `eq[3, A264526(3*n+2)]` -/
def P6893561421961322079.Spec : Prop :=
  ∀ n, (P6893561421961322079.a n : ℤ) = A307562 (n + 1)

end A307562

/-! ## A307562.P16530410096030456220

`record[n^A284950(3*n+2)]`
-/

namespace A307562.P16530410096030456220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A284950 (3 * n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307562.P16530410096030456220

namespace A307562

/-- `record[n^A284950(3*n+2)]` -/
def P16530410096030456220.Spec : Prop :=
  ∀ n, P16530410096030456220.a n = (A307562 (n + 1) : ℚ)

end A307562

/-! ## A307562.P7160850106843677882

`A008615(p?[A002476(n+1)-6])`
-/

namespace A307562.P7160850106843677882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307562.P7160850106843677882

namespace A307562

/-- `A008615(p?[A002476(n+1)-6])` -/
def P7160850106843677882.Spec : Prop :=
  ∀ n, P7160850106843677882.a n = A307562 (n + 1)

end A307562

/-! ## A307562.P3582781155370970649

`A103221(p?[A002476(n+1)-6])`
-/

namespace A307562.P3582781155370970649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307562.P3582781155370970649

namespace A307562

/-- `A103221(p?[A002476(n+1)-6])` -/
def P3582781155370970649.Spec : Prop :=
  ∀ n, P3582781155370970649.a n = A307562 (n + 1)

end A307562

/-! ## A307562.P4860690888941665801

`record[A032742(A002264(A023201(n+1)))]`
-/

namespace A307562.P4860690888941665801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002264 (A023201 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307562.P4860690888941665801

namespace A307562

/-- `record[A032742(A002264(A023201(n+1)))]` -/
def P4860690888941665801.Spec : Prop :=
  ∀ n, P4860690888941665801.a n = A307562 (n + 1)

end A307562

/-! ## A307562.P15288871396352824848

`A008615(p?[A248909(A023201(n+1))])`
-/

namespace A307562.P15288871396352824848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A023201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307562.P15288871396352824848

namespace A307562

/-- `A008615(p?[A248909(A023201(n+1))])` -/
def P15288871396352824848.Spec : Prop :=
  ∀ n, P15288871396352824848.a n = A307562 (n + 1)

end A307562

/-!
# A307563: Numbers k such that both 6k - 1 and 6k + 7 are prime.

The programs for A307563, the canonical program `A307563.P16467976950140794453` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307563 has offset 1).

The definition of A307563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307563.P16467976950140794453

`floor(A164385(n+1)/6)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A307563

/-- `floor(A164385(n+1)/6)` -/
def P16467976950140794453.Spec : Prop :=
  ∀ n, P16467976950140794453.a n = A307563 (n + 1)

theorem P16467976950140794453.correct : P16467976950140794453.Spec := by
  intro n
  simp only [A307563, Nat.add_sub_cancel]

end A307563

/-! ## A307563.P6237088590474573639

`floor(A087680(n+2)/6)`
-/

namespace A307563.P6237088590474573639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087680 (n + 2) : ℚ) / 6⌋

end

end A307563.P6237088590474573639

namespace A307563

/-- `floor(A087680(n+2)/6)` -/
def P6237088590474573639.Spec : Prop :=
  ∀ n, P6237088590474573639.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P4821399283515329340

`ceil(A023202(n+2)/6)`
-/

namespace A307563.P4821399283515329340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023202 (n + 2) : ℚ) / 6⌉

end

end A307563.P4821399283515329340

namespace A307563

/-- `ceil(A023202(n+2)/6)` -/
def P4821399283515329340.Spec : Prop :=
  ∀ n, P4821399283515329340.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P4092478716003004552

`(A088764(n+2)-1)/3`
-/

namespace A307563.P4092478716003004552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088764 (n + 2) - 1 : ℚ) / 3

end

end A307563.P4092478716003004552

namespace A307563

/-- `(A088764(n+2)-1)/3` -/
def P4092478716003004552.Spec : Prop :=
  ∀ n, P4092478716003004552.a n = (A307563 (n + 1) : ℚ)

end A307563

/-! ## A307563.P7546899257274663286

`∩[A024898(n+1), A153218(n+1)]`
-/

namespace A307563.P7546899257274663286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307563.P7546899257274663286

namespace A307563

/-- `∩[A024898(n+1), A153218(n+1)]` -/
def P7546899257274663286.Spec : Prop :=
  ∀ n, (P7546899257274663286.a n : ℤ) = A307563 (n + 1)

end A307563

/-! ## A307563.P1328500761218517801

`∩[A059325(n+1)+1, A153218(n+1)]`
-/

namespace A307563.P1328500761218517801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307563.P1328500761218517801

namespace A307563

/-- `∩[A059325(n+1)+1, A153218(n+1)]` -/
def P1328500761218517801.Spec : Prop :=
  ∀ n, (P1328500761218517801.a n : ℤ) = A307563 (n + 1)

end A307563

/-! ## A307563.P7153648389834522272

`∩[A024898(n+1), A024899(n+1)-1]`
-/

namespace A307563.P7153648389834522272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307563.P7153648389834522272

namespace A307563

/-- `∩[A024898(n+1), A024899(n+1)-1]` -/
def P7153648389834522272.Spec : Prop :=
  ∀ n, (P7153648389834522272.a n : ℤ) = A307563 (n + 1)

end A307563

/-! ## A307563.P13151699036771645213

`record[ceil(A000010(A015915(n+1))/6)]`
-/

namespace A307563.P13151699036771645213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (A015915 (n + 1)).toNat : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307563.P13151699036771645213

namespace A307563

/-- `record[ceil(A000010(A015915(n+1))/6)]` -/
def P13151699036771645213.Spec : Prop :=
  ∀ n, P13151699036771645213.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P9519659379733220928

`filter[A153218(n+2), A167020(#)]`
-/

namespace A307563.P9519659379733220928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A307563.P9519659379733220928

namespace A307563

/-- `filter[A153218(n+2), A167020(#)]` -/
def P9519659379733220928.Spec : Prop :=
  ∀ n, P9519659379733220928.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P10544112292326971502

`A002264(A088764(n+2))`
-/

namespace A307563.P10544112292326971502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A088764 (n + 2)).toNat

end

end A307563.P10544112292326971502

namespace A307563

/-- `A002264(A088764(n+2))` -/
def P10544112292326971502.Spec : Prop :=
  ∀ n, P10544112292326971502.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P13958766085521493311

`A092092(A088764(n+2)-2)`
-/

namespace A307563.P13958766085521493311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A088764 (n + 2) - 2).toNat

end

end A307563.P13958766085521493311

namespace A307563

/-- `A092092(A088764(n+2)-2)` -/
def P13958766085521493311.Spec : Prop :=
  ∀ n, P13958766085521493311.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P1102053041905337501

`A008615(A164385(n+1))`
-/

namespace A307563.P1102053041905337501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A164385 (n + 1)).toNat

end

end A307563.P1102053041905337501

namespace A307563

/-- `A008615(A164385(n+1))` -/
def P1102053041905337501.Spec : Prop :=
  ∀ n, P1102053041905337501.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P16370174816731140516

`A008615(A023202(n+2))`
-/

namespace A307563.P16370174816731140516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A023202 (n + 2)).toNat

end

end A307563.P16370174816731140516

namespace A307563

/-- `A008615(A023202(n+2))` -/
def P16370174816731140516.Spec : Prop :=
  ∀ n, P16370174816731140516.a n = A307563 (n + 1)

end A307563

/-! ## A307563.P14700951514307050371

`A008615(A087680(n+2))`
-/

namespace A307563.P14700951514307050371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A087680 (n + 2)).toNat

end

end A307563.P14700951514307050371

namespace A307563

/-- `A008615(A087680(n+2))` -/
def P14700951514307050371.Spec : Prop :=
  ∀ n, P14700951514307050371.a n = A307563 (n + 1)

end A307563

/-!
# A307564: Number of Motzkin excursions of length n with an even number of humps.

The programs for A307564, there is no canonical definition to state claims against.
-/

/-! ## A307564.P14568137369959806826

`A325926(n)+A325922(n)`
-/

namespace A307564.P14568137369959806826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325926 n + A325922 n

end

end A307564.P14568137369959806826

/-! ## A307564.P13144325313132442992

`A001006(n)-A307573(n)`
-/

namespace A307564.P13144325313132442992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A307573 n

end

end A307564.P13144325313132442992

/-! ## A307564.P10078305499358211580

`Δ[A097332(n)]-A307573(n)`
-/

namespace A307564.P10078305499358211580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307573 n

end

end A307564.P10078305499358211580

/-! ## A307564.P17011921775713312711

`A086246(n+2)-A307573(n)`
-/

namespace A307564.P17011921775713312711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A307573 n

end

end A307564.P17011921775713312711

/-! ## A307564.P14729692264897280204

`A168049(n+2)-A307573(n)`
-/

namespace A307564.P14729692264897280204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) - A307573 n

end

end A307564.P14729692264897280204

/-! ## A307564.P7059854935867928612

`abs(A166587(n+1))-A307573(n)`
-/

namespace A307564.P7059854935867928612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| - A307573 n

end

end A307564.P7059854935867928612

/-! ## A307564.P527407625497147408

`abs(A292440(n+2))-A307573(n)`
-/

namespace A307564.P527407625497147408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 2)| - A307573 n

end

end A307564.P527407625497147408

/-! ## A307564.P9102425658058577480

`abs(Δ[A099323(n+1)])-A307573(n)`
-/

namespace A307564.P9102425658058577480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A307573 n

end

end A307564.P9102425658058577480

/-! ## A307564.P12597756215280415199

`abs(Δ[A174297(n+2)])-A307573(n)`
-/

namespace A307564.P12597756215280415199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A307573 n

end

end A307564.P12597756215280415199

/-! ## A307564.P11324571861151431780

`A064189(∑[n])-A307573(n)`
-/

namespace A307564.P11324571861151431780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) - A307573 n

end

end A307564.P11324571861151431780

/-! ## A307564.P17505105015951508069

`A026300(A000096(n))-A307573(n)`
-/

namespace A307564.P17505105015951508069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000096 n).toNat - A307573 n

end

end A307564.P17505105015951508069

/-!
# A307566: Expansion of Product_{j>=1} (1 + j*(-1 + Product_{k>=1} (1 + k*x^k))^j).

The programs for A307566, there is no canonical definition to state claims against.
-/

/-! ## A307566.P7470317467435831120

`A342518(C(2*n, 2)+1)`
-/

namespace A307566.P7470317467435831120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (Nat.choose (2 * n) 2 + 1)

end

end A307566.P7470317467435831120

/-! ## A307566.P1409329071060789179

`floor(A306180(n+1)/or(1, 2^n))`
-/

namespace A307566.P1409329071060789179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A306180 (n + 1) : ℚ) / (Nat.lor 1 (2 ^ n) : ℚ)⌋

end

end A307566.P1409329071060789179

/-!
# A307567: Expansion of e.g.f. Product_{j>=1} 1/(1 - (-1 + Product_{k>=1} 1/(1 - x^k/k!))^j/j!).

The programs for A307567, there is no canonical definition to state claims against.
-/

/-! ## A307567.P8296835689382253941

`A026424(A246526(n))-A094999(2*n+1)`
-/

namespace A307567.P8296835689382253941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (A246526 n).toNat - A094999 (2 * n + 1)

end

end A307567.P8296835689382253941

/-!
# A307568: Expansion of e.g.f. Product_{j>=1} (1 + (-1 + Product_{k>=1} (1 + x^k/k!))^j/j!).

The programs for A307568, there is no canonical definition to state claims against.
-/

/-! ## A307568.P10515827984576404411

`A159477(A231494(n))`
-/

namespace A307568.P10515827984576404411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A231494 n).toNat

end

end A307568.P10515827984576404411

/-! ## A307568.P9271225617254783011

`A308163(A148286(n))`
-/

namespace A307568.P9271225617254783011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308163 (A148286 n).toNat

end

end A307568.P9271225617254783011

/-!
# A307569: Expansion of Product_{j>=1} (1 + x^j*Product_{k>=1} (1 + x^k)^j).

The programs for A307569, there is no canonical definition to state claims against.
-/

/-! ## A307569.P2521273945439352695

`A100196(A323229(n)-A063032(n))`
-/

namespace A307569.P2521273945439352695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A323229 n - A063032 n).toNat

end

end A307569.P2521273945439352695

/-! ## A307569.P14177541080831398077

`A026819(A355351(n))`
-/

namespace A307569.P14177541080831398077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A355351 n).toNat

end

end A307569.P14177541080831398077

/-! ## A307569.P6998922929166990801

`A026819(A305578(n)-n)`
-/

namespace A307569.P6998922929166990801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A305578 n - (n : ℤ)).toNat

end

end A307569.P6998922929166990801

/-! ## A307569.P9371272790280229018

`A046155(A305578(n)-n)`
-/

namespace A307569.P9371272790280229018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A305578 n - (n : ℤ)).toNat

end

end A307569.P9371272790280229018

/-!
# A307570: Expansion of Product_{j>=1} 1/(1 - x^j*Product_{k>=1} 1/(1 - x^k)^(k*j))^j.

The programs for A307570, there is no canonical definition to state claims against.
-/

/-! ## A307570.P578480168324168874

`A248231(A189177(n+1))-n`
-/

namespace A307570.P578480168324168874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A189177 (n + 1)).toNat - (n : ℤ)

end

end A307570.P578480168324168874

/-! ## A307570.P10378494998410954288

`A248610(A232697(n)+A093131(n))`
-/

namespace A307570.P10378494998410954288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A232697 n + A093131 n).toNat

end

end A307570.P10378494998410954288

/-! ## A307570.P17046051452993298221

`A248610(A093131(n)+A000006(n+1))`
-/

namespace A307570.P17046051452993298221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A093131 n + A000006 (n + 1)).toNat

end

end A307570.P17046051452993298221

/-!
# A307571: Expansion of Product_{j>=1} (1 + x^j*Product_{k>=1} (1 + x^k)^(k*j))^j.

The programs for A307571, there is no canonical definition to state claims against.
-/

/-! ## A307571.P10876495154413155791

`A289494(A267596(n)+A020093(n))`
-/

namespace A307571.P10876495154413155791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A267596 n + A020093 n).toNat

end

end A307571.P10876495154413155791

/-! ## A307571.P13297081806454908576

`A248231(A104629(n)-A055400(n))`
-/

namespace A307571.P13297081806454908576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A104629 n - A055400 n).toNat

end

end A307571.P13297081806454908576

/-! ## A307571.P9157668593522550437

`A122920(n)-A353558(A122898(n))`
-/

namespace A307571.P9157668593522550437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122920 n - A353558 (A122898 n).toNat

end

end A307571.P9157668593522550437

/-!
# A307572: Number of Motzkin meanders of length n with an odd number of humps.

The programs for A307572, there is no canonical definition to state claims against.
-/

/-! ## A307572.P1320146967569267908

`A325927(n)+A325923(n)`
-/

namespace A307572.P1320146967569267908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325927 n + A325923 n

end

end A307572.P1320146967569267908

/-! ## A307572.P9960948993537086762

`A005773(n+1)-A307555(n)`
-/

namespace A307572.P9960948993537086762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A307555 n

end

end A307572.P9960948993537086762

/-! ## A307572.P17953508975537345418

`A307575(n)+A307577(n)-A307555(n)`
-/

namespace A307572.P17953508975537345418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n + (A307577 n - A307555 n)

end

end A307572.P17953508975537345418

/-! ## A307572.P6928266760727922533

`A307575(n)+A325927(n)-A325921(n)`
-/

namespace A307572.P6928266760727922533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n + (A325927 n - A325921 n)

end

end A307572.P6928266760727922533

/-! ## A307572.P4658154603945924493

`A038622(∑[n])-A307555(n)`
-/

namespace A307572.P4658154603945924493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j) - A307555 n

end

end A307572.P4658154603945924493

/-! ## A307572.P4411340649020992809

`record[A038622(n)]-A307555(n)`
-/

namespace A307572.P4411340649020992809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307555 n

end

end A307572.P4411340649020992809

/-!
# A307573: Number of Motzkin excursions of length n with an odd number of humps.

The programs for A307573, there is no canonical definition to state claims against.
-/

/-! ## A307573.P12490562032877156467

`A325928(n)+A325924(n)`
-/

namespace A307573.P12490562032877156467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325928 n + A325924 n

end

end A307573.P12490562032877156467

/-! ## A307573.P8899655424134305341

`A001006(n)-A307564(n)`
-/

namespace A307573.P8899655424134305341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A307564 n

end

end A307573.P8899655424134305341

/-! ## A307573.P15233904393167715331

`Δ[A097332(n)]-A307564(n)`
-/

namespace A307573.P15233904393167715331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307564 n

end

end A307573.P15233904393167715331

/-! ## A307573.P1307976981978274395

`A086246(n+2)-A307564(n)`
-/

namespace A307573.P1307976981978274395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A307564 n

end

end A307573.P1307976981978274395

/-! ## A307573.P14497840960585823286

`A168049(n+2)-A307564(n)`
-/

namespace A307573.P14497840960585823286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) - A307564 n

end

end A307573.P14497840960585823286

/-! ## A307573.P15577696666507396325

`abs(A166587(n+1))-A307564(n)`
-/

namespace A307573.P15577696666507396325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| - A307564 n

end

end A307573.P15577696666507396325

/-! ## A307573.P12948010815138698831

`abs(A168051(n+2))-A307564(n)`
-/

namespace A307573.P12948010815138698831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 (n + 2)| - A307564 n

end

end A307573.P12948010815138698831

/-! ## A307573.P3238156530327712372

`∑[A002026(abs(1-n))]-A307564(n)`
-/

namespace A307573.P3238156530327712372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307564 n

end

end A307573.P3238156530327712372

/-! ## A307573.P3110391399454599652

`abs(Δ[A099323(n+1)])-A307564(n)`
-/

namespace A307573.P3110391399454599652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A307564 n

end

end A307573.P3110391399454599652

/-! ## A307573.P14654392248898475493

`abs(Δ[A174297(n+2)])-A307564(n)`
-/

namespace A307573.P14654392248898475493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A307564 n

end

end A307573.P14654392248898475493

/-! ## A307573.P5103557992858270440

`A091836(∑[n+1])-A307564(n)`
-/

namespace A307573.P5103557992858270440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (∑ j ∈ Finset.range (n + 1), f1 j) - A307564 n

end

end A307573.P5103557992858270440

/-! ## A307573.P1462299655400426690

`A064189(∑[n])-A307564(n)`
-/

namespace A307573.P1462299655400426690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) - A307564 n

end

end A307573.P1462299655400426690

/-! ## A307573.P6124767921147019609

`A026300(A000096(n))-A307564(n)`
-/

namespace A307573.P6124767921147019609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000096 n).toNat - A307564 n

end

end A307573.P6124767921147019609

/-!
# A307575: Number of Motzkin meanders of length n with an even number of peaks.

The programs for A307575, there is no canonical definition to state claims against.
-/

/-! ## A307575.P15287731050887606254

`A325923(n)+A325921(n)`
-/

namespace A307575.P15287731050887606254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325923 n + A325921 n

end

end A307575.P15287731050887606254

/-! ## A307575.P14981842719995504826

`A005773(n+1)-A307577(n)`
-/

namespace A307575.P14981842719995504826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A307577 n

end

end A307575.P14981842719995504826

/-! ## A307575.P5870255564741454742

`A001006(n)+A005774(n)-A307577(n)`
-/

namespace A307575.P5870255564741454742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (A005774 n - A307577 n)

end

end A307575.P5870255564741454742

/-! ## A307575.P725765343342798663

`A307555(n)+A325923(n)-A325925(n)`
-/

namespace A307575.P725765343342798663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307555 n + (A325923 n - A325925 n)

end

end A307575.P725765343342798663

/-! ## A307575.P4650993322434193181

`record[A038622(n)]-A307577(n)`
-/

namespace A307575.P4650993322434193181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307577 n

end

end A307575.P4650993322434193181

/-!
# A307576: Number of Motzkin excursions of length n with an even number of peaks.

The programs for A307576, there is no canonical definition to state claims against.
-/

/-! ## A307576.P14829870226145015989

`A325924(n)+A325922(n)`
-/

namespace A307576.P14829870226145015989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325924 n + A325922 n

end

end A307576.P14829870226145015989

/-! ## A307576.P2167906802237995541

`A307564(n)+A307573(n)-A307578(n)`
-/

namespace A307576.P2167906802237995541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n + (A307573 n - A307578 n)

end

end A307576.P2167906802237995541

/-! ## A307576.P2675271113724106871

`A001006(n)-A307578(n)`
-/

namespace A307576.P2675271113724106871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A307578 n

end

end A307576.P2675271113724106871

/-! ## A307576.P13601942742404275214

`Δ[A097332(n)]-A307578(n)`
-/

namespace A307576.P13601942742404275214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307578 n

end

end A307576.P13601942742404275214

/-! ## A307576.P11418794043557987855

`A086246(n+2)-A307578(n)`
-/

namespace A307576.P11418794043557987855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A307578 n

end

end A307576.P11418794043557987855

/-! ## A307576.P12641345403297817995

`A168049(n+2)-A307578(n)`
-/

namespace A307576.P12641345403297817995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) - A307578 n

end

end A307576.P12641345403297817995

/-! ## A307576.P4084141878237605571

`abs(A166587(n+1))-A307578(n)`
-/

namespace A307576.P4084141878237605571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| - A307578 n

end

end A307576.P4084141878237605571

/-! ## A307576.P5591947785943974263

`abs(A307578(n)+A168051(n+2))`
-/

namespace A307576.P5591947785943974263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307578 n + A168051 (n + 2)|

end

end A307576.P5591947785943974263

/-! ## A307576.P7495293822380384769

`abs(A292440(n+2))-A307578(n)`
-/

namespace A307576.P7495293822380384769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 2)| - A307578 n

end

end A307576.P7495293822380384769

/-! ## A307576.P665181899034636948

`∑[A002026(abs(1-n))]-A307578(n)`
-/

namespace A307576.P665181899034636948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307578 n

end

end A307576.P665181899034636948

/-! ## A307576.P7522040547954367848

`∑[A105695(n+1)]+1-A307578(n)`
-/

namespace A307576.P7522040547954367848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A307578 n

end

end A307576.P7522040547954367848

/-! ## A307576.P16805579520764154192

`A005043(n+1)+A005043(n)-A307578(n)`
-/

namespace A307576.P16805579520764154192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A005043 n - A307578 n)

end

end A307576.P16805579520764154192

/-! ## A307576.P2523456804832294429

`A097332(n+1)-A097332(n)-A307578(n)`
-/

namespace A307576.P2523456804832294429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (n + 1) - A097332 n - A307578 n

end

end A307576.P2523456804832294429

/-! ## A307576.P2619537443633820211

`A064189(∑[n])-A307578(n)`
-/

namespace A307576.P2619537443633820211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) - A307578 n

end

end A307576.P2619537443633820211

/-! ## A307576.P8149432222520435607

`A064645(∑[n])-A307578(n)`
-/

namespace A307576.P8149432222520435607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j) - A307578 n

end

end A307576.P8149432222520435607

/-!
# A307577: Number of Motzkin meanders of length n with an odd number of peaks.

The programs for A307577, there is no canonical definition to state claims against.
-/

/-! ## A307577.P6356472475589268466

`A325927(n)+A325925(n)`
-/

namespace A307577.P6356472475589268466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325927 n + A325925 n

end

end A307577.P6356472475589268466

/-! ## A307577.P10203915764942057510

`A005773(n+1)-A307575(n)`
-/

namespace A307577.P10203915764942057510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A307575 n

end

end A307577.P10203915764942057510

/-! ## A307577.P13843605149740487371

`A005773(floor(acot(n))+1+n)%A307575(n)`
-/

namespace A307577.P13843605149740487371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005773 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (n : ℤ)).toNat) (A307575 n)

end

end A307577.P13843605149740487371

/-! ## A307577.P10759431136796090533

`A005773(round(sqrt(n²+1))+1)%A307575(n)`
-/

namespace A307577.P10759431136796090533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005773 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat) (A307575 n)

end

end A307577.P10759431136796090533

/-! ## A307577.P3840276248965235468

`A307555(n)+A307572(n)-A307575(n)`
-/

namespace A307577.P3840276248965235468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307555 n + (A307572 n - A307575 n)

end

end A307577.P3840276248965235468

/-! ## A307577.P7383543973655839706

`A307555(n)+A325927(n)-A325921(n)`
-/

namespace A307577.P7383543973655839706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307555 n + (A325927 n - A325921 n)

end

end A307577.P7383543973655839706

/-! ## A307577.P1848256459026026784

`A005773(n+1)%(A307575(n)%A134325(n+1))`
-/

namespace A307577.P1848256459026026784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005773 (n + 1)) (Int.tmod (A307575 n) (A134325 (n + 1)))

end

end A307577.P1848256459026026784

/-! ## A307577.P5717572830037605533

`A038622(∑[n])-A307575(n)`
-/

namespace A307577.P5717572830037605533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j) - A307575 n

end

end A307577.P5717572830037605533

/-! ## A307577.P940827591964403411

`record[A038622(n)]-A307575(n)`
-/

namespace A307577.P940827591964403411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307575 n

end

end A307577.P940827591964403411

/-! ## A307577.P17161489469701253286

`A000038(A267047(n))+A005773(n+1)%A307575(n)`
-/

namespace A307577.P17161489469701253286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A267047 n).toNat + Int.tmod (A005773 (n + 1)) (A307575 n)

end

end A307577.P17161489469701253286

/-!
# A307578: Number of Motzkin excursions of length n with an odd number of peaks.

The programs for A307578, there is no canonical definition to state claims against.
-/

/-! ## A307578.P6287052675399209986

`A325928(n)+A325926(n)`
-/

namespace A307578.P6287052675399209986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325928 n + A325926 n

end

end A307578.P6287052675399209986

/-! ## A307578.P7870886546389035804

`A307564(n)+A307573(n)-A307576(n)`
-/

namespace A307578.P7870886546389035804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n + (A307573 n - A307576 n)

end

end A307578.P7870886546389035804

/-! ## A307578.P17178058624556354193

`A001006(n)-A307576(n)`
-/

namespace A307578.P17178058624556354193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A307576 n

end

end A307578.P17178058624556354193

/-! ## A307578.P3958342528921447245

`Δ[A097332(n)]-A307576(n)`
-/

namespace A307578.P3958342528921447245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307576 n

end

end A307578.P3958342528921447245

/-! ## A307578.P2309884672827720411

`A086246(n+2)-A307576(n)`
-/

namespace A307578.P2309884672827720411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A307576 n

end

end A307578.P2309884672827720411

/-! ## A307578.P14084390980390138060

`A168049(n+2)-A307576(n)`
-/

namespace A307578.P14084390980390138060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) - A307576 n

end

end A307578.P14084390980390138060

/-! ## A307578.P6852390884213738521

`abs(A166587(n+1))-A307576(n)`
-/

namespace A307578.P6852390884213738521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| - A307576 n

end

end A307578.P6852390884213738521

/-! ## A307578.P9872696291371296513

`abs(A307576(n)+A168051(n+2))`
-/

namespace A307578.P9872696291371296513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307576 n + A168051 (n + 2)|

end

end A307578.P9872696291371296513

/-! ## A307578.P16857209098704912512

`abs(A292440(n+2))-A307576(n)`
-/

namespace A307578.P16857209098704912512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 2)| - A307576 n

end

end A307578.P16857209098704912512

/-! ## A307578.P3934019728180416024

`∑[A002026(abs(1-n))]-A307576(n)`
-/

namespace A307578.P3934019728180416024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307576 n

end

end A307578.P3934019728180416024

/-! ## A307578.P11270265911540318362

`abs(Δ[A099323(n+1)])-A307576(n)`
-/

namespace A307578.P11270265911540318362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A307576 n

end

end A307578.P11270265911540318362

/-! ## A307578.P4338843097589111524

`∑[A105695(n+1)]+1-A307576(n)`
-/

namespace A307578.P4338843097589111524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A307576 n

end

end A307578.P4338843097589111524

/-! ## A307578.P6749575288122005261

`A005043(n+1)+A005043(n)-A307576(n)`
-/

namespace A307578.P6749575288122005261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A005043 n - A307576 n)

end

end A307578.P6749575288122005261

/-! ## A307578.P17388241705099402882

`A097332(n+1)-A097332(n)-A307576(n)`
-/

namespace A307578.P17388241705099402882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (n + 1) - A097332 n - A307576 n

end

end A307578.P17388241705099402882

/-! ## A307578.P18150040396267200438

`A168051(n+1)+A005554(n+1)-A307576(n)`
-/

namespace A307578.P18150040396267200438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 1) + A005554 (n + 1) - A307576 n

end

end A307578.P18150040396267200438

/-! ## A307578.P2012642409891579263

`A064189(∑[n])-A307576(n)`
-/

namespace A307578.P2012642409891579263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) - A307576 n

end

end A307578.P2012642409891579263

/-! ## A307578.P16389172849117269205

`A064645(∑[n])-A307576(n)`
-/

namespace A307578.P16389172849117269205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j) - A307576 n

end

end A307578.P16389172849117269205

/-! ## A307578.P5828181348453220453

`A258709(∑[n])-A307576(n)`
-/

namespace A307578.P5828181348453220453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (∑ j ∈ Finset.range (n + 1), f1 j) - A307576 n

end

end A307578.P5828181348453220453

/-!
# A307579: Numbers k such that A003958(k) does not divide phi(k).

The programs for A307579, there is no canonical definition to state claims against.
-/

/-! ## A307579.P8792713448106779509

`A038838(record[A140060(A004277(n))])`
-/

namespace A307579.P8792713448106779509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140060 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307579.P8792713448106779509

/-! ## A307579.P10277509494353995484

`lt[A088440(n), A118759(A105570(n))]`
-/

namespace A307579.P10277509494353995484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307579.P10277509494353995484

/-! ## A307579.P6859527414473673381

`A038838(lt[A334491(n+1), A342878(n+1)])`
-/

namespace A307579.P6859527414473673381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307579.P6859527414473673381

/-!
# A307584: Triangle read by rows: T(n,k) is the number of non-backtracking walks on Z^2 of length n that are active for k steps, where the walk is initially active and turns in the walk toggle the activity.

The programs for A307584, there is no canonical definition to state claims against.
-/

/-! ## A307584.P4286547615014933658

`A108417(A245049(n+1))`
-/

namespace A307584.P4286547615014933658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108417 (A245049 (n + 1)).toNat

end

end A307584.P4286547615014933658

/-! ## A307584.P18359728814871309493

`A294371(A336574(n+1))`
-/

namespace A307584.P18359728814871309493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294371 (A336574 (n + 1)).toNat

end

end A307584.P18359728814871309493

/-! ## A307584.P14318986012612267885

`∏{p}[A159964(A113413(n)), #]`
-/

namespace A307584.P14318986012612267885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159964 (A113413 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A307584.P14318986012612267885

/-! ## A307584.P1383306280199385238

`A302797(A029653(n)^A119963(n))`
-/

namespace A307584.P1383306280199385238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (SequenceMachineLib.roundAway ((A029653 n : ℚ) ^ (A119963 n : ℤ))).toNat

end

end A307584.P1383306280199385238

/-! ## A307584.P3009980299923134337

`A004275(A113413(n)%A113412(n))`
-/

namespace A307584.P3009980299923134337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A113413 n) (A113412 n)).toNat

end

end A307584.P3009980299923134337

/-!
# A307585: Positive sums of two distinct cubes (of arbitrary sign).

The programs for A307585, there is no canonical definition to state claims against.
-/

/-! ## A307585.P13130461915250156205

`∪[A038593(n+1), A114090(n+1)]`
-/

namespace A307585.P13130461915250156205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307585.P13130461915250156205

/-! ## A307585.P9139169239387896679

`∪[A024670(n+1), A152043(n+2)]`
-/

namespace A307585.P9139169239387896679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307585.P9139169239387896679

/-! ## A307585.P4831752262337077952

`∪[A114090(n+1), A152043(n+2)]`
-/

namespace A307585.P4831752262337077952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307585.P4831752262337077952

/-! ## A307585.P10320496388622411896

`∩[comp[2*A000578(n)], A045980(n+1)]`
-/

namespace A307585.P10320496388622411896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A307585.P10320496388622411896

/-! ## A307585.P12558967575682880865

`lt[1, A331812(n+1)]+1`
-/

namespace A307585.P12558967575682880865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A307585.P12558967575682880865

/-!
# A307588: Numbers k such that the digits of k^(1/3) begin with k.

The programs for A307588, there is no canonical definition to state claims against.
-/

/-! ## A307588.P7698159627310482853

`eq[1, A124688(n)]`
-/

namespace A307588.P7698159627310482853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307588.P7698159627310482853

/-!
# A307589: Numbers m such that 1 < gcd(m, 35) < m and m does not divide 35^e for e >= 0.

The programs for A307589, there is no canonical definition to state claims against.
-/

/-! ## A307589.P1059478713828761816

`A178859(lt[n+1, A357645(3*(n+1))])`
-/

namespace A307589.P1059478713828761816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357645 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A307589.P1059478713828761816

/-!
# A307592: Expansion of e.g.f. (sec(x) + tan(x))*(1 - LambertW(-x)*(2 + LambertW(-x))/2).

The programs for A307592, there is no canonical definition to state claims against.
-/

/-! ## A307592.P7140996970620032511

`∑[A156562(A356632(n))]`
-/

namespace A307592.P7140996970620032511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A356632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307592.P7140996970620032511

/-! ## A307592.P5574910463435005181

`A087866(A327227(n))+A087860(n)`
-/

namespace A307592.P5574910463435005181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A327227 n).toNat + A087860 n

end

end A307592.P5574910463435005181

/-!
# A307593: Expansion of e.g.f. (sec(x) + tan(x))*exp(x)/(1 - x).

The programs for A307593, there is no canonical definition to state claims against.
-/

/-! ## A307593.P3020114909117875497

`A000667(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A307593.P3020114909117875497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000667 n + (n : ℤ) * a (n - 1)

end

end A307593.P3020114909117875497

/-! ## A307593.P12431266506873047542

`A292975(A034856(n+1))+n*a(n-1)` with `a(0)=1`
-/

namespace A307593.P12431266506873047542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292975 (A034856 (n + 1)).toNat + (n : ℤ) * a (n - 1)

end

end A307593.P12431266506873047542

/-!
# A307594: Expansion of e.g.f. (sec(x) + tan(x))*exp(-x)/(1 - x).

The programs for A307594, there is no canonical definition to state claims against.
-/

/-! ## A307594.P4073573275653015502

`A062162(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A307594.P4073573275653015502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062162 n + (n : ℤ) * a (n - 1)

end

end A307594.P4073573275653015502

/-! ## A307594.P126310013563206526

`floor(sqrt(A067589(n!)))`
-/

namespace A307594.P126310013563206526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A067589 (Nat.factorial n))

end

end A307594.P126310013563206526

/-! ## A307594.P2653603312098203285

`∑[A092533(A240172(n)+2)]-n`
-/

namespace A307594.P2653603312098203285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A240172 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A307594.P2653603312098203285

/-!
# A307595: Expansion of e.g.f. (sec(x) + tan(x))*exp(x/(1 - x)).

The programs for A307595, there is no canonical definition to state claims against.
-/

/-! ## A307595.P4357865993592710672

`A121216(A343595(n+2))-ceil((n-1)/gcd(2, n))`
-/

namespace A307595.P4357865993592710672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (A343595 (n + 2)).toNat - ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉

end

end A307595.P4357865993592710672

/-! ## A307595.P5525647577879652793

`A065033(A000669(n+1)+Δ[floor((n+1)/2*n!)])`
-/

namespace A307595.P5525647577879652793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (Nat.factorial n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000669 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A307595.P5525647577879652793

/-!
# A307596: G.f. A(x) satisfies: A(x) = (1/(1 + x)) * A(x^2)*A(x^3)*A(x^4)* ... *A(x^k)* ...

The programs for A307596, there is no canonical definition to state claims against.
-/

/-! ## A307596.P8047640717089649838

`A057979(n)-A001221(A282427(n+1))`
-/

namespace A307596.P8047640717089649838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - A001221 (A282427 (n + 1)).toNat

end

end A307596.P8047640717089649838

/-! ## A307596.P11196674551632950925

`A057979(n)-A325169(A001597(n+1))`
-/

namespace A307596.P11196674551632950925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - A325169 (A001597 (n + 1)).toNat

end

end A307596.P11196674551632950925

/-!
# A307597: Number of partitions of n into 2 distinct positive triangular numbers.

The programs for A307597, the canonical program `A307597.P12525034653730918067` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307597 has offset 0).

The definition of A307597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307597.P12525034653730918067

`floor(A053603(n)/2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A307597

/-- `floor(A053603(n)/2)` -/
def P12525034653730918067.Spec : Prop :=
  ∀ n, P12525034653730918067.a n = A307597 n

theorem P12525034653730918067.correct : P12525034653730918067.Spec := by
  intro n
  simp only [A307597]

end A307597

/-! ## A307597.P6875139430445678898

`A004526(A053603(n))`
-/

namespace A307597.P6875139430445678898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053603 n).toNat

end

end A307597.P6875139430445678898

namespace A307597

/-- `A004526(A053603(n))` -/
def P6875139430445678898.Spec : Prop :=
  ∀ n, P6875139430445678898.a n = A307597 n

end A307597

/-! ## A307597.P9346343523653043246

`A002265(2*A053603(n))`
-/

namespace A307597.P9346343523653043246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A053603 n).toNat

end

end A307597.P9346343523653043246

namespace A307597

/-- `A002265(2*A053603(n))` -/
def P9346343523653043246.Spec : Prop :=
  ∀ n, P9346343523653043246.a n = A307597 n

end A307597

/-! ## A307597.P4951881189181055056

`A008615(3*A053603(n))`
-/

namespace A307597.P4951881189181055056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A053603 n).toNat

end

end A307597.P4951881189181055056

namespace A307597

/-- `A008615(3*A053603(n))` -/
def P4951881189181055056.Spec : Prop :=
  ∀ n, P4951881189181055056.a n = A307597 n

end A307597

/-! ## A307597.P15549257921907799148

`A053603(n)-A052344(n)`
-/

namespace A307597.P15549257921907799148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n - A052344 n

end

end A307597.P15549257921907799148

namespace A307597

/-- `A053603(n)-A052344(n)` -/
def P15549257921907799148.Spec : Prop :=
  ∀ n, P15549257921907799148.a n = A307597 n

end A307597

/-! ## A307597.P5567309605177006174

`A010054(n)+A053603(n)-A052343(n)`
-/

namespace A307597.P5567309605177006174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A053603 n - A052343 n)

end

end A307597.P5567309605177006174

namespace A307597

/-- `A010054(n)+A053603(n)-A052343(n)` -/
def P5567309605177006174.Spec : Prop :=
  ∀ n, P5567309605177006174.a n = A307597 n

end A307597

/-! ## A307597.P8715231998009143340

`A224326(n)-A307598(n)`
-/

namespace A307597.P8715231998009143340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n - A307598 n

end

end A307597.P8715231998009143340

namespace A307597

/-- `A224326(n)-A307598(n)` -/
def P8715231998009143340.Spec : Prop :=
  ∀ n, P8715231998009143340.a n = A307597 n

end A307597

/-! ## A307597.P1839075320782579253

`A002636(n)-(A307598(n)+A033761(n))`
-/

namespace A307597.P1839075320782579253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - (A307598 n + A033761 n)

end

end A307597.P1839075320782579253

namespace A307597

/-- `A002636(n)-(A307598(n)+A033761(n))` -/
def P1839075320782579253.Spec : Prop :=
  ∀ n, P1839075320782579253.a n = A307597 n

end A307597

/-! ## A307597.P6987295308530945089

`A357070(n)-A010054(n)`
-/

namespace A307597.P6987295308530945089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n - A010054 n

end

end A307597.P6987295308530945089

namespace A307597

/-- `A357070(n)-A010054(n)` -/
def P6987295308530945089.Spec : Prop :=
  ∀ n, P6987295308530945089.a n = A307597 n

end A307597

/-! ## A307597.P1452655766724149603

`A357070(n)+1-A035214(n)`
-/

namespace A307597.P1452655766724149603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + (1 - A035214 n)

end

end A307597.P1452655766724149603

namespace A307597

/-- `A357070(n)+1-A035214(n)` -/
def P1452655766724149603.Spec : Prop :=
  ∀ n, P1452655766724149603.a n = A307597 n

end A307597

/-!
# A307598: Number of partitions of n into 3 distinct positive triangular numbers.

The programs for A307598, there is no canonical definition to state claims against.
-/

/-! ## A307598.P15337884389942454349

`A008615(A339442(n))%10`
-/

namespace A307598.P15337884389942454349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 (A339442 n).toNat) 10

end

end A307598.P15337884389942454349

/-! ## A307598.P13849780315557597823

`A224326(n)-A307597(n)`
-/

namespace A307598.P13849780315557597823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n - A307597 n

end

end A307598.P13849780315557597823

/-! ## A307598.P13826148356849545836

`A224326(n)-floor(A053603(n)/2)`
-/

namespace A307598.P13826148356849545836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n - ⌊(A053603 n : ℚ) / 2⌋

end

end A307598.P13826148356849545836

/-! ## A307598.P5468468246120673463

`A025436(8*n+3)-A307597(n)`
-/

namespace A307598.P5468468246120673463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (8 * n + 3) - A307597 n

end

end A307598.P5468468246120673463

/-! ## A307598.P665338990356368751

`A025442(8*n+3)-A307597(n)`
-/

namespace A307598.P665338990356368751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (8 * n + 3) - A307597 n

end

end A307598.P665338990356368751

/-! ## A307598.P16108728026249324135

`A025442(8*n+3)-floor(A053603(n)/2)`
-/

namespace A307598.P16108728026249324135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (8 * n + 3) - ⌊(A053603 n : ℚ) / 2⌋

end

end A307598.P16108728026249324135

/-! ## A307598.P5851810628590473732

`A224326(n)-A004526(A053603(n))`
-/

namespace A307598.P5851810628590473732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n - A004526 (A053603 n).toNat

end

end A307598.P5851810628590473732

/-! ## A307598.P6957668999626567721

`A357071(n)-A357070(n)`
-/

namespace A307598.P6957668999626567721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357071 n - A357070 n

end

end A307598.P6957668999626567721

