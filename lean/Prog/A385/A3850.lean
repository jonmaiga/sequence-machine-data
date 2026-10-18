import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A385000: Square array read by upward antidiagonals: A(n,k) = 0 except for A(d*(m-1),m*(d-1)) = d, with n >= 0, k >= 0, d >= 1, m >= 1.

The programs for A385000, there is no canonical definition to state claims against.
-/

/-! ## A385000.P460744435436239255

`A035164(A152249(n+1))`
-/

namespace A385000.P460744435436239255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035164 (A152249 (n + 1)).toNat

end

end A385000.P460744435436239255

/-! ## A385000.P16306888249537029233

`A162319(n+1)*A286561(A022171(n))`
-/

namespace A385000.P16306888249537029233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162319 (n + 1) * A286561 (A022171 n).toNat

end

end A385000.P16306888249537029233

/-! ## A385000.P5906295752406707139

`A007814(A307078(n)+A188644(n))`
-/

namespace A385000.P5906295752406707139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A307078 n + A188644 n).toNat

end

end A385000.P5906295752406707139

/-! ## A385000.P7458619354141551161

`A035155(A193789((n+1)²/∏{p}[n+1, #]))`
-/

namespace A385000.P7458619354141551161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (A193789 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A385000.P7458619354141551161

/-! ## A385000.P5609096342340910219

`A374248(2*A248842(n+1))`
-/

namespace A385000.P5609096342340910219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374248 (2 * A248842 (n + 1)).toNat

end

end A385000.P5609096342340910219

/-!
# A385001: Irregular triangle read by rows: T(n,k) is the number of partitions of n with k designated summands, n >= 0, 0 <= k <= A003056(n).

The programs for A385001, there is no canonical definition to state claims against.
-/

/-! ## A385001.P12819344478571414933

`A000523(A000523(n+5)^A321878(n))`
-/

namespace A385001.P12819344478571414933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A000523 (n + 5) : ℚ) ^ (A321878 n : ℤ))).toNat

end

end A385001.P12819344478571414933

/-!
# A385004: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(3*n,k).

The programs for A385004, there is no canonical definition to state claims against.
-/

/-! ## A385004.P13379431121171900991

`A106516(A062728(n))`
-/

namespace A385004.P13379431121171900991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A062728 n).toNat

end

end A385004.P13379431121171900991

/-! ## A385004.P7767431160993264437

`A106516(A027468(n)-n)`
-/

namespace A385004.P7767431160993264437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A027468 n - (n : ℤ)).toNat

end

end A385004.P7767431160993264437

/-!
# A385006: The sum of the biquadratefree divisors of n.

The programs for A385006, the canonical program `A385006.P9769662058316795847` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385006 has offset 1).

The definition of A385006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385006.P9769662058316795847

`∑{d}[∏{p}[n+1, gcd(n+1, #^3)], #]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385006

/-- `∑{d}[∏{p}[n+1, gcd(n+1, #^3)], #]` -/
def P9769662058316795847.Spec : Prop :=
  ∀ n, (P9769662058316795847.a n : ℤ) = A385006 (n + 1)

theorem P9769662058316795847.correct : P9769662058316795847.Spec := by
  intro n
  simp only [A385006, Nat.add_sub_cancel]

end A385006

/-! ## A385006.P17408296898812110018

`∑{d}[A058035(n+1), #]`
-/

namespace A385006.P17408296898812110018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A385006.P17408296898812110018

namespace A385006

/-- `∑{d}[A058035(n+1), #]` -/
def P17408296898812110018.Spec : Prop :=
  ∀ n, (P17408296898812110018.a n : ℤ) = A385006 (n + 1)

end A385006

/-! ## A385006.P9498360668098743600

`∑{d}[n+1, #*A307430(#)]`
-/

namespace A385006.P9498360668098743600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A307430 d

end

end A385006.P9498360668098743600

namespace A385006

/-- `∑{d}[n+1, #*A307430(#)]` -/
def P9498360668098743600.Spec : Prop :=
  ∀ n, P9498360668098743600.a n = A385006 (n + 1)

end A385006

/-! ## A385006.P5106169331995783633

`A000203(A058035(n+1))`
-/

namespace A385006.P5106169331995783633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A058035 (n + 1)).toNat

end

end A385006.P5106169331995783633

namespace A385006

/-- `A000203(A058035(n+1))` -/
def P5106169331995783633.Spec : Prop :=
  ∀ n, P5106169331995783633.a n = A385006 (n + 1)

end A385006

/-! ## A385006.P10131048644981659154

`A000203((n+1)/A062379(n+1))`
-/

namespace A385006.P10131048644981659154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (n + 1) : ℚ))).toNat

end

end A385006.P10131048644981659154

namespace A385006

/-- `A000203((n+1)/A062379(n+1))` -/
def P10131048644981659154.Spec : Prop :=
  ∀ n, P10131048644981659154.a n = A385006 (n + 1)

end A385006

/-! ## A385006.P11954916304537022250

`A385134(n+1)/A062379(n+1)`
-/

namespace A385006.P11954916304537022250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385134 (n + 1) : ℚ) / (A062379 (n + 1) : ℚ)

end

end A385006.P11954916304537022250

namespace A385006

/-- `A385134(n+1)/A062379(n+1)` -/
def P11954916304537022250.Spec : Prop :=
  ∀ n, P11954916304537022250.a n = (A385006 (n + 1) : ℚ)

end A385006

/-!
# A385007: The largest unitary divisor of n that is a biquadratefree number (A046100).

The programs for A385007, the canonical program `A385007.P2853750131647033924` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385007 has offset 1).

The definition of A385007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385007.P2853750131647033924

`A053165((n+1)/A062379(A003557(n+1)))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A385007

/-- `A053165((n+1)/A062379(A003557(n+1)))` -/
def P2853750131647033924.Spec : Prop :=
  ∀ n, P2853750131647033924.a n = A385007 (n + 1)

theorem P2853750131647033924.correct : P2853750131647033924.Spec := by
  intro n
  simp only [A385007, Nat.add_sub_cancel]

end A385007

/-! ## A385007.P2402642187527502106

`A058035(n+1)/A058035(A008835(n+1))`
-/

namespace A385007.P2402642187527502106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058035 (n + 1) : ℚ) / (A058035 (A008835 (n + 1)).toNat : ℚ)

end

end A385007.P2402642187527502106

namespace A385007

/-- `A058035(n+1)/A058035(A008835(n+1))` -/
def P2402642187527502106.Spec : Prop :=
  ∀ n, P2402642187527502106.a n = (A385007 (n + 1) : ℚ)

end A385007

/-! ## A385007.P10093856555799065034

`A053165((n+1)/A062378(A062378(n+1)))`
-/

namespace A385007.P10093856555799065034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (A062378 (n + 1)).toNat : ℚ))).toNat

end

end A385007.P10093856555799065034

namespace A385007

/-- `A053165((n+1)/A062378(A062378(n+1)))` -/
def P10093856555799065034.Spec : Prop :=
  ∀ n, P10093856555799065034.a n = A385007 (n + 1)

end A385007

/-! ## A385007.P4575907916727061745

`gcd(n+1, A242521(A006519(n+1)))`
-/

namespace A385007.P4575907916727061745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A242521 (A006519 (n + 1)).toNat)

end

end A385007.P4575907916727061745

namespace A385007

/-- `gcd(n+1, A242521(A006519(n+1)))` -/
def P4575907916727061745.Spec : Prop :=
  ∀ n, (P4575907916727061745.a n : ℤ) = A385007 (n + 1)

end A385007

/-! ## A385007.P3893073566304727211

`gcd(A000027(n+1), A240328(A077803(2*n+1)))`
-/

namespace A385007.P3893073566304727211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A240328 (A077803 (2 * n + 1)).toNat)

end

end A385007.P3893073566304727211

namespace A385007

/-- `gcd(A000027(n+1), A240328(A077803(2*n+1)))` -/
def P3893073566304727211.Spec : Prop :=
  ∀ n, (P3893073566304727211.a n : ℤ) = A385007 (n + 1)

end A385007

/-!
# A385009: G.f.: Product_{k>=1} (1 + x^(2*k^2)) / (1 - x^k).

The programs for A385009, there is no canonical definition to state claims against.
-/

/-! ## A385009.P17471230571036124067

`A369856(A266775(n))`
-/

namespace A385009.P17471230571036124067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369856 (A266775 n).toNat

end

end A385009.P17471230571036124067

/-! ## A385009.P13418296051442173693

`A369856(A373297(n))`
-/

namespace A385009.P13418296051442173693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369856 (A373297 n).toNat

end

end A385009.P13418296051442173693

/-! ## A385009.P9419687584797871172

`A382019(A304825(n+6))`
-/

namespace A385009.P9419687584797871172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A304825 (n + 6)).toNat

end

end A385009.P9419687584797871172

/-! ## A385009.P18358472136095192731

`A112232(A053993(n))`
-/

namespace A385009.P18358472136095192731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A053993 n).toNat

end

end A385009.P18358472136095192731

/-! ## A385009.P15045134300270897322

`A097366(A299473(n))`
-/

namespace A385009.P15045134300270897322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097366 (A299473 n).toNat

end

end A385009.P15045134300270897322

/-!
# A385010: G.f.: Product_{k>=1} (1 + x^(3*k^2)) / (1 - x^k).

The programs for A385010, there is no canonical definition to state claims against.
-/

/-! ## A385010.P8119873624758759898

`A069911(2*n+1)+A010051(A135988(n+1))`
-/

namespace A385010.P8119873624758759898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069911 (2 * n + 1) + A010051 (A135988 (n + 1)).toNat

end

end A385010.P8119873624758759898

/-! ## A385010.P5022763064571699860

`A295866(A118036(n+1))`
-/

namespace A385010.P5022763064571699860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A118036 (n + 1)).toNat

end

end A385010.P5022763064571699860

/-! ## A385010.P13259222284888577944

`A064876(A069911(2*n+1)²)`
-/

namespace A385010.P13259222284888577944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A069911 (2 * n + 1) ^ 2).toNat

end

end A385010.P13259222284888577944

/-! ## A385010.P18341891233270173227

`filter[A069911(2*n+1), A114213(#)]`
-/

namespace A385010.P18341891233270173227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069911 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A385010.P18341891233270173227

/-! ## A385010.P18024940433141744670

`filter[A069911(2*n+1), A228813(#)]`
-/

namespace A385010.P18024940433141744670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069911 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228813 (f1 j).toNat = 1) n)

end

end A385010.P18024940433141744670

/-!
# A385011: G.f.: 1/Product_{k>=1} (1 - x^(2*k^2)) * (1 - x^k).

The programs for A385011, there is no canonical definition to state claims against.
-/

/-! ## A385011.P7416180967975555695

`A259361(A011782(n+4))-A286378(n)`
-/

namespace A385011.P7416180967975555695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A011782 (n + 4)).toNat - A286378 n

end

end A385011.P7416180967975555695

/-! ## A385011.P8372323876827048389

`A260003(A066739(n))`
-/

namespace A385011.P8372323876827048389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260003 (A066739 n).toNat

end

end A385011.P8372323876827048389

/-! ## A385011.P17681199926383835094

`A260003(A321360(n))`
-/

namespace A385011.P17681199926383835094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260003 (A321360 n).toNat

end

end A385011.P17681199926383835094

/-! ## A385011.P4742074408102092159

`A260003(A321566(n))`
-/

namespace A385011.P4742074408102092159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260003 (A321566 n).toNat

end

end A385011.P4742074408102092159

/-! ## A385011.P677623162074215797

`A029744(n+3)-A357621(A029744(n+3))`
-/

namespace A385011.P677623162074215797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 3) - A357621 (A029744 (n + 3)).toNat

end

end A385011.P677623162074215797

/-!
# A385012: G.f.: 1/Product_{k>=1} (1 - x^(3*k^2)) * (1 - x^k).

The programs for A385012, there is no canonical definition to state claims against.
-/

/-! ## A385012.P5834258139402308520

`filter[A024787(n+3), A114213(#)]`
-/

namespace A385012.P5834258139402308520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A385012.P5834258139402308520

/-! ## A385012.P13746989181886748788

`filter[A024787(n+3), A267959(#)]`
-/

namespace A385012.P13746989181886748788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A385012.P13746989181886748788

/-! ## A385012.P7903730690374875187

`filter[A024787(n+3), A305387(#)]`
-/

namespace A385012.P7903730690374875187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305387 (f1 j).toNat = 1) n)

end

end A385012.P7903730690374875187

/-! ## A385012.P6366402693679626332

`filter[A024787(n+3), A334465(#)]`
-/

namespace A385012.P6366402693679626332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A385012.P6366402693679626332

/-! ## A385012.P14521713865727011966

`∑[A182713(n+3)%A078136(n+4)]`
-/

namespace A385012.P14521713865727011966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182713 (n + 3)) (A078136 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385012.P14521713865727011966

/-!
# A385013: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x)^2).

The programs for A385013, there is no canonical definition to state claims against.
-/

/-! ## A385013.P7314004303541793269

`A385017(∑[n+1]+n)`
-/

namespace A385013.P7314004303541793269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385017 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385013.P7314004303541793269

/-!
# A385014: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x))^2.

The programs for A385014, there is no canonical definition to state claims against.
-/

/-! ## A385014.P4523568630343830592

`A385018(∑[n+1]+n)`
-/

namespace A385014.P4523568630343830592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385018 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385014.P4523568630343830592

/-!
# A385015: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x))^3.

The programs for A385015, there is no canonical definition to state claims against.
-/

/-! ## A385015.P17640310007884959941

`A385019(∑[n+1]+n)`
-/

namespace A385015.P17640310007884959941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385019 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385015.P17640310007884959941

/-!
# A385016: G.f. A(x) satisfies A(x) = 1 + x*A(x)/A(-x*A(x))^4.

The programs for A385016, there is no canonical definition to state claims against.
-/

/-! ## A385016.P12616184819533963584

`A385020(∑[n+1]+n)`
-/

namespace A385016.P12616184819533963584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385020 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385016.P12616184819533963584

/-!
# A385017: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A385013.

The programs for A385017, there is no canonical definition to state claims against.
-/

/-! ## A385017.P14999812641371342295

`A244158(A392379(n))`
-/

namespace A385017.P14999812641371342295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (A392379 n).toNat

end

end A385017.P14999812641371342295

/-! ## A385017.P3414798321223864878

`A007318(n)-A393932(A242472(n+1))`
-/

namespace A385017.P3414798321223864878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A393932 (A242472 (n + 1)).toNat

end

end A385017.P3414798321223864878

/-! ## A385017.P10979593102721513305

`A068063(A294188(n))`
-/

namespace A385017.P10979593102721513305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A294188 n).toNat

end

end A385017.P10979593102721513305

/-! ## A385017.P6742701045461937431

`A384653(n)%A280053(A280017(n+1))`
-/

namespace A385017.P6742701045461937431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384653 n) (A280053 (A280017 (n + 1)).toNat)

end

end A385017.P6742701045461937431

/-! ## A385017.P17809521382920312646

`A384654(n)%A093478(A339190(n+2))`
-/

namespace A385017.P17809521382920312646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384654 n) (A093478 (A339190 (n + 2)).toNat)

end

end A385017.P17809521382920312646

/-!
# A385018: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A385014.

The programs for A385018, there is no canonical definition to state claims against.
-/

/-! ## A385018.P3419191344604033410

`A379599(n)%A002024(A094444(3*n+4))`
-/

namespace A385018.P3419191344604033410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379599 n) (A002024 (A094444 (3 * n + 4)).toNat)

end

end A385018.P3419191344604033410

/-! ## A385018.P4306550134187458999

`A384681(n)%A053674(A384659(n+4))`
-/

namespace A385018.P4306550134187458999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384681 n) (A053674 (A384659 (n + 4)).toNat)

end

end A385018.P4306550134187458999

/-! ## A385018.P1151042409708895495

`or(A085388(n+1), A354097(A320583(n+1)))`
-/

namespace A385018.P1151042409708895495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085388 (n + 1)) (A354097 (A320583 (n + 1)).toNat)

end

end A385018.P1151042409708895495

/-! ## A385018.P2454465201130123679

`and(A006512(A264443(2*n+1)), A297328(n))`
-/

namespace A385018.P2454465201130123679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006512 (A264443 (2 * n + 1)).toNat) (A297328 n)

end

end A385018.P2454465201130123679

/-! ## A385018.P591783895218933597

`A370118(A079611(n+5))+A144074(n)`
-/

namespace A385018.P591783895218933597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 (A079611 (n + 5)).toNat + A144074 n

end

end A385018.P591783895218933597

/-!
# A385019: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A385015.

The programs for A385019, there is no canonical definition to state claims against.
-/

/-! ## A385019.P5585133426623962778

`A384619(n)%A384639(A225630(n))`
-/

namespace A385019.P5585133426623962778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384619 n) (A384639 (A225630 n).toNat)

end

end A385019.P5585133426623962778

/-! ## A385019.P9252570039169251534

`A378323(n)%A196098(A008277(n+1))`
-/

namespace A385019.P9252570039169251534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378323 n) (A196098 (A008277 (n + 1)).toNat)

end

end A385019.P9252570039169251534

/-! ## A385019.P4471719634687724481

`A378290(n)%A217320(A140998(n))`
-/

namespace A385019.P4471719634687724481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378290 n) (A217320 (A140998 n).toNat)

end

end A385019.P4471719634687724481

/-! ## A385019.P6320796657001035476

`A141021(A143858(n+1))*A397930(n)`
-/

namespace A385019.P6320796657001035476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A143858 (n + 1)).toNat * A397930 n

end

end A385019.P6320796657001035476

/-! ## A385019.P3177809822008434868

`A384944(n)^A384963(A384963(n+2))`
-/

namespace A385019.P3177809822008434868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384944 n : ℚ) ^ (A384963 (A384963 (n + 2)).toNat : ℤ)

end

end A385019.P3177809822008434868

/-!
# A385020: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A385016.

The programs for A385020, there is no canonical definition to state claims against.
-/

/-! ## A385020.P5056492789953809143

`gcd(A156390(A138986(n+1)), A381592(n))`
-/

namespace A385020.P5056492789953809143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156390 (A138986 (n + 1)).toNat) (A381592 n)

end

end A385020.P5056492789953809143

/-! ## A385020.P16964481433335274165

`A381592(n)%A205558(A345925(3*n+2))`
-/

namespace A385020.P16964481433335274165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381592 n) (A205558 (A345925 (3 * n + 2)).toNat)

end

end A385020.P16964481433335274165

/-! ## A385020.P1083382153163762598

`A335469(A384620(n)+1)%comp[A339350(2*(n+1))]`
-/

namespace A385020.P1083382153163762598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339350 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335469 (A384620 n + 1).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A385020.P1083382153163762598

/-! ## A385020.P13900831928715800663

`A072089(A384620(n))%A002326(A002326(n))`
-/

namespace A385020.P13900831928715800663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072089 (A384620 n).toNat) (A002326 (A002326 n).toNat)

end

end A385020.P13900831928715800663

/-! ## A385020.P2668908557390115613

`A335469(A384620(n)+1)%A002326(A002326(n))`
-/

namespace A385020.P2668908557390115613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335469 (A384620 n + 1).toNat) (A002326 (A002326 n).toNat)

end

end A385020.P2668908557390115613

/-!
# A385024: Number of face-connected components of tetragonal disphenoidal cells in the tetragonal disphenoidal honeycomb up to translation, rotation, and reflection.

The programs for A385024, there is no canonical definition to state claims against.
-/

/-! ## A385024.P16259253327344149783

`A342498(A062476(n+1))`
-/

namespace A385024.P16259253327344149783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A062476 (n + 1)).toNat

end

end A385024.P16259253327344149783

/-! ## A385024.P14647422163920419086

`A262689(A002110(n)+n)`
-/

namespace A385024.P14647422163920419086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A002110 n + (n : ℤ)).toNat

end

end A385024.P14647422163920419086

/-! ## A385024.P14752527433989733131

`∑[A182530(n)%A378355(n+1)]`
-/

namespace A385024.P14752527433989733131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182530 n) (A378355 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385024.P14752527433989733131

/-!
# A385025: Number of face-connected components of gyrobifastigium cells in the gyrobifastigium honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385025, there is no canonical definition to state claims against.
-/

/-! ## A385025.P17752529285300465879

`∑[A391694(n²+2)]`
-/

namespace A385025.P17752529285300465879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391694 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385025.P17752529285300465879

/-!
# A385026: Number of face-connected components of hexagonal prism cells in the hexagonal prismatic honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385026, there is no canonical definition to state claims against.
-/

/-! ## A385026.P18398867006465247392

`A195770(A360776(n))-A376306(n+1)`
-/

namespace A385026.P18398867006465247392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195770 (A360776 n).toNat - A376306 (n + 1)

end

end A385026.P18398867006465247392

/-! ## A385026.P10651905140918682379

`A074286(A048993(3*n+4)+A005346(n+1))`
-/

namespace A385026.P10651905140918682379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A048993 (3 * n + 4) + A005346 (n + 1)).toNat

end

end A385026.P10651905140918682379

/-!
# A385027: Number of face-connected components of triakis truncated tetrahedral cells in the triakis truncated tetrahedral honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385027, there is no canonical definition to state claims against.
-/

/-! ## A385027.P6074456106789074652

`A283161(A092354(n))`
-/

namespace A385027.P6074456106789074652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283161 (A092354 n).toNat

end

end A385027.P6074456106789074652

/-!
# A385028: Number of face-connected components of polyhedral cells in the bisymmetric hendecahedral honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A385028, there is no canonical definition to state claims against.
-/

/-! ## A385028.P6788872907512305951

`A351348(n!²)`
-/

namespace A385028.P6788872907512305951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351348 (Nat.factorial n ^ 2)

end

end A385028.P6788872907512305951

/-!
# A385029: a(n) = Sum_{-n <= a, b, c <= n} (b^2 - 4*a*c).

The programs for A385029, the canonical program `A385029.P14095818226233158751` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385029 has offset 1).

The definition of A385029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385029.P14095818226233158751

`(n+1)*(n+2)*(2*(n+1)+1)^3/3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385029

/-- `(n+1)*(n+2)*(2*(n+1)+1)^3/3` -/
def P14095818226233158751.Spec : Prop :=
  ∀ n, P14095818226233158751.a n = (A385029 (n + 1) : ℚ)

end A385029

/-! ## A385029.P15177436436229749162

`A006331(n+1)*A016754(n+1)`
-/

namespace A385029.P15177436436229749162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1) * A016754 (n + 1)

end

end A385029.P15177436436229749162

namespace A385029

/-- `A006331(n+1)*A016754(n+1)` -/
def P15177436436229749162.Spec : Prop :=
  ∀ n, P15177436436229749162.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P18347139675708108734

`(A000330(n+1)+A000330(n+1))*A016754(n+1)`
-/

namespace A385029.P18347139675708108734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) + A000330 (n + 1)) * A016754 (n + 1)

end

end A385029.P18347139675708108734

namespace A385029

/-- `(A000330(n+1)+A000330(n+1))*A016754(n+1)` -/
def P18347139675708108734.Spec : Prop :=
  ∀ n, P18347139675708108734.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P18290569112190209466

`(A112524(n+2)-A006331(n))*A006331(n+1)`
-/

namespace A385029.P18290569112190209466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112524 (n + 2) - A006331 n) * A006331 (n + 1)

end

end A385029.P18290569112190209466

namespace A385029

/-- `(A112524(n+2)-A006331(n))*A006331(n+1)` -/
def P18290569112190209466.Spec : Prop :=
  ∀ n, P18290569112190209466.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P7631098735181037307

`(A046092(n+1)+A001844(n+1))*A006331(n+1)`
-/

namespace A385029.P7631098735181037307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (n + 1) + A001844 (n + 1)) * A006331 (n + 1)

end

end A385029.P7631098735181037307

namespace A385029

/-- `(A046092(n+1)+A001844(n+1))*A006331(n+1)` -/
def P7631098735181037307.Spec : Prop :=
  ∀ n, P7631098735181037307.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P8268012164603995854

`A001844(n+1)*A002492(n+1)-A006331(n+1)`
-/

namespace A385029.P8268012164603995854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1) * A002492 (n + 1) - A006331 (n + 1)

end

end A385029.P8268012164603995854

namespace A385029

/-- `A001844(n+1)*A002492(n+1)-A006331(n+1)` -/
def P8268012164603995854.Spec : Prop :=
  ∀ n, P8268012164603995854.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P1128121532814629131

`(A007204(n+1)-A057769(n+1))*A000330(n+1)`
-/

namespace A385029.P1128121532814629131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007204 (n + 1) - A057769 (n + 1)) * A000330 (n + 1)

end

end A385029.P1128121532814629131

namespace A385029

/-- `(A007204(n+1)-A057769(n+1))*A000330(n+1)` -/
def P1128121532814629131.Spec : Prop :=
  ∀ n, P1128121532814629131.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P8220165585086097454

`(A005902(n+1)-A057813(n+1))*A016754(n+1)`
-/

namespace A385029.P8220165585086097454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005902 (n + 1) - A057813 (n + 1)) * A016754 (n + 1)

end

end A385029.P8220165585086097454

namespace A385029

/-- `(A005902(n+1)-A057813(n+1))*A016754(n+1)` -/
def P8220165585086097454.Spec : Prop :=
  ∀ n, P8220165585086097454.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P6255238680086217006

`(A057813(n+1)-A005898(n+1))*A016754(n+1)`
-/

namespace A385029.P6255238680086217006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057813 (n + 1) - A005898 (n + 1)) * A016754 (n + 1)

end

end A385029.P6255238680086217006

namespace A385029

/-- `(A057813(n+1)-A005898(n+1))*A016754(n+1)` -/
def P6255238680086217006.Spec : Prop :=
  ∀ n, P6255238680086217006.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P3658963826953337697

`2*A006414(Δ[n²])`
-/

namespace A385029.P3658963826953337697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A385029.P3658963826953337697

namespace A385029

/-- `2*A006414(Δ[n²])` -/
def P3658963826953337697.Spec : Prop :=
  ∀ n, P3658963826953337697.a n = A385029 (n + 1)

end A385029

/-! ## A385029.P12440599743116732486

`A271663(2*n+1)+A034263(2*n+1)`
-/

namespace A385029.P12440599743116732486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 (2 * n + 1) + A034263 (2 * n + 1)

end

end A385029.P12440599743116732486

namespace A385029

/-- `A271663(2*n+1)+A034263(2*n+1)` -/
def P12440599743116732486.Spec : Prop :=
  ∀ n, P12440599743116732486.a n = A385029 (n + 1)

end A385029

/-!
# A385030: Orders of characteristically simple groups.

The programs for A385030, there is no canonical definition to state claims against.
-/

/-! ## A385030.P661643193191691762

`∩[A316525(n+1), A317589(n+1)]`
-/

namespace A385030.P661643193191691762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385030.P661643193191691762

/-! ## A385030.P6388651484414495466

`∩[A316525(n+1), A325371(n+1)]`
-/

namespace A385030.P6388651484414495466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385030.P6388651484414495466

/-! ## A385030.P2297885008945509927

`filter[A257144(n+1), A092248(#)]`
-/

namespace A385030.P2297885008945509927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A385030.P2297885008945509927

/-! ## A385030.P12527549390807141821

`∩[A030230(n+1), A257144(n+1)]`
-/

namespace A385030.P12527549390807141821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385030.P12527549390807141821

/-! ## A385030.P14721137344917269771

`∩[A071139(n+1), A257144(n+1)]`
-/

namespace A385030.P14721137344917269771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385030.P14721137344917269771

/-!
# A385034: Absolute value squared of the maximal determinant of a matrix of order n with entries in the third roots of unity.

The programs for A385034, there is no canonical definition to state claims against.
-/

/-! ## A385034.P5951510788731025300

`A160798(A151131(n))`
-/

namespace A385034.P5951510788731025300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160798 (A151131 n).toNat

end

end A385034.P5951510788731025300

/-! ## A385034.P479858572585660646

`A317831(A007696(n))`
-/

namespace A385034.P479858572585660646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317831 (A007696 n).toNat

end

end A385034.P479858572585660646

/-!
# A385035: Primes p such that p + 8, p + 14, p + 18 and p + 20 are also primes.

The programs for A385035, there is no canonical definition to state claims against.
-/

/-! ## A385035.P12263201397608111118

`A363638(A321838(n+3))`
-/

namespace A385035.P12263201397608111118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363638 (A321838 (n + 3)).toNat

end

end A385035.P12263201397608111118

/-!
# A385040: Number of isomorphism classes of virtual racks of order n.

The programs for A385040, there is no canonical definition to state claims against.
-/

/-! ## A385040.P366898662706780393

`A103221(A279571(n+2)-n)`
-/

namespace A385040.P366898662706780393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A279571 (n + 2) - (n : ℤ)).toNat

end

end A385040.P366898662706780393

/-! ## A385040.P12817562247194305311

`A187187(A265068(n)+A000351(n))`
-/

namespace A385040.P12817562247194305311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A265068 n + A000351 n).toNat

end

end A385040.P12817562247194305311

/-!
# A385041: Number of isomorphism classes of virtual quandles of order n.

The programs for A385041, there is no canonical definition to state claims against.
-/

/-! ## A385041.P17130152503412283712

`A378294(∑[round(ϕ²*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A385041.P17130152503412283712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385041.P17130152503412283712

/-! ## A385041.P2027664974236549730

`A378294(∑[round(a(n-1)/(2-ϕ))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A385041.P2027664974236549730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (2 - Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385041.P2027664974236549730

/-!
# A385042: The number of unitary divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

The programs for A385042, the canonical program `A385042.P6846705367475182241` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385042 has offset 1).

The definition of A385042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385042.P6846705367475182241

`2^A366074(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A385042

/-- `2^A366074(n+1)` -/
def P6846705367475182241.Spec : Prop :=
  ∀ n, P6846705367475182241.a n = (A385042 (n + 1) : ℚ)

end A385042

/-! ## A385042.P11670216828886061444

`A056671(A331737(n+1))`
-/

namespace A385042.P11670216828886061444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A331737 (n + 1)).toNat

end

end A385042.P11670216828886061444

namespace A385042

/-- `A056671(A331737(n+1))` -/
def P11670216828886061444.Spec : Prop :=
  ∀ n, P11670216828886061444.a n = A385042 (n + 1)

end A385042

/-! ## A385042.P6269158066938500163

`A034444(A367168(n+1))`
-/

namespace A385042.P6269158066938500163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A367168 (n + 1)).toNat

end

end A385042.P6269158066938500163

namespace A385042

/-- `A034444(A367168(n+1))` -/
def P6269158066938500163.Spec : Prop :=
  ∀ n, P6269158066938500163.a n = A385042 (n + 1)

end A385042

/-! ## A385042.P14247585959114572093

`A365498(A338782(n+1))`
-/

namespace A385042.P14247585959114572093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (A338782 (n + 1)).toNat

end

end A385042.P14247585959114572093

namespace A385042

/-- `A365498(A338782(n+1))` -/
def P14247585959114572093.Spec : Prop :=
  ∀ n, P14247585959114572093.a n = A385042 (n + 1)

end A385042

/-! ## A385042.P17914934331357104074

`A034444(n+1)/A359411(n+1)`
-/

namespace A385042.P17914934331357104074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A359411 (n + 1) : ℚ)

end

end A385042.P17914934331357104074

namespace A385042

/-- `A034444(n+1)/A359411(n+1)` -/
def P17914934331357104074.Spec : Prop :=
  ∀ n, P17914934331357104074.a n = (A385042 (n + 1) : ℚ)

end A385042

/-! ## A385042.P1295489465822532919

`∏{e}[(n+1)², A014963(#)]`
-/

namespace A385042.P1295489465822532919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014963 (Nat.factorization (f1 n) p)

end

end A385042.P1295489465822532919

namespace A385042

/-- `∏{e}[(n+1)², A014963(#)]` -/
def P1295489465822532919.Spec : Prop :=
  ∀ n, P1295489465822532919.a n = A385042 (n + 1)

end A385042

/-!
# A385043: The sum of the unitary divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

The programs for A385043, there is no canonical definition to state claims against.
-/

/-! ## A385043.P799097616266538024

`A034448(A367168(n+1))`
-/

namespace A385043.P799097616266538024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A367168 (n + 1)).toNat

end

end A385043.P799097616266538024

/-! ## A385043.P18126781897019402482

`A366743((n+1)/A368540(n+1))`
-/

namespace A385043.P18126781897019402482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368540 (n + 1) : ℚ))).toNat

end

end A385043.P18126781897019402482

/-! ## A385043.P5601479418348891634

`A049417(A367168(2*n+1-n))`
-/

namespace A385043.P5601479418348891634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A367168 (2 * n + 1 - n)).toNat

end

end A385043.P5601479418348891634

/-! ## A385043.P10095055079776851593

`A034448(A367514(n+1)%A297531(n+2))`
-/

namespace A385043.P10095055079776851593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.tmod (A367514 (n + 1)) (A297531 (n + 2))).toNat

end

end A385043.P10095055079776851593

/-! ## A385043.P885515078349630488

`A034448(A367514(n+1))%A324723(n+1)`
-/

namespace A385043.P885515078349630488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (A367514 (n + 1)).toNat) (A324723 (n + 1))

end

end A385043.P885515078349630488

/-! ## A385043.P12465025105142132511

`A034448(A270418(n+1))%A161928(n+1)`
-/

namespace A385043.P12465025105142132511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (A270418 (n + 1)).toNat) (A161928 (n + 1))

end

end A385043.P12465025105142132511

/-!
# A385044: The number of unitary divisors of n that are 5-rough numbers (A007310).

The programs for A385044, the canonical program `A385044.P5009034709205246685` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385044 has offset 1).

The definition of A385044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385044.P5009034709205246685

`A034444(n+1)/A382488(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A385044

/-- `A034444(n+1)/A382488(n+1)` -/
def P5009034709205246685.Spec : Prop :=
  ∀ n, P5009034709205246685.a n = (A385044 (n + 1) : ℚ)

end A385044

/-! ## A385044.P468903292746840021

`∏{p}[n+1, 2-floor(3/#)]`
-/

namespace A385044.P468903292746840021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - ⌊3 / (p : ℚ)⌋)

end

end A385044.P468903292746840021

namespace A385044

/-- `∏{p}[n+1, 2-floor(3/#)]` -/
def P468903292746840021.Spec : Prop :=
  ∀ n, P468903292746840021.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P13713382847485084035

`2^A171157(n+1)`
-/

namespace A385044.P13713382847485084035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A171157 (n + 1) : ℤ)

end

end A385044.P13713382847485084035

namespace A385044

/-- `2^A171157(n+1)` -/
def P13713382847485084035.Spec : Prop :=
  ∀ n, P13713382847485084035.a n = (A385044 (n + 1) : ℚ)

end A385044

/-! ## A385044.P15799140247982574396

`∑{d}[n+1, A373154(#)]`
-/

namespace A385044.P15799140247982574396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A373154 d

end

end A385044.P15799140247982574396

namespace A385044

/-- `∑{d}[n+1, A373154(#)]` -/
def P15799140247982574396.Spec : Prop :=
  ∀ n, P15799140247982574396.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P11593617013426461797

`A035218(∏{p}[n+1, #])`
-/

namespace A385044.P11593617013426461797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A385044.P11593617013426461797

namespace A385044

/-- `A035218(∏{p}[n+1, #])` -/
def P11593617013426461797.Spec : Prop :=
  ∀ n, P11593617013426461797.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P10337560225270992358

`A035218(A007947(n+1))`
-/

namespace A385044.P10337560225270992358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A007947 (n + 1)).toNat

end

end A385044.P10337560225270992358

namespace A385044

/-- `A035218(A007947(n+1))` -/
def P10337560225270992358.Spec : Prop :=
  ∀ n, P10337560225270992358.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P17629445954710410139

`A035218(A015052(n+1))`
-/

namespace A385044.P17629445954710410139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A015052 (n + 1)).toNat

end

end A385044.P17629445954710410139

namespace A385044

/-- `A035218(A015052(n+1))` -/
def P17629445954710410139.Spec : Prop :=
  ∀ n, P17629445954710410139.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P3207206849774790355

`A035218(A015053(n+1))`
-/

namespace A385044.P3207206849774790355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A015053 (n + 1)).toNat

end

end A385044.P3207206849774790355

namespace A385044

/-- `A035218(A015053(n+1))` -/
def P3207206849774790355.Spec : Prop :=
  ∀ n, P3207206849774790355.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P4260584919009623847

`A034444(A065330(n+1))`
-/

namespace A385044.P4260584919009623847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A065330 (n + 1)).toNat

end

end A385044.P4260584919009623847

namespace A385044

/-- `A034444(A065330(n+1))` -/
def P4260584919009623847.Spec : Prop :=
  ∀ n, P4260584919009623847.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P4439159699780822242

`A035218(A066069(n+1))`
-/

namespace A385044.P4439159699780822242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A066069 (n + 1)).toNat

end

end A385044.P4439159699780822242

namespace A385044

/-- `A035218(A066069(n+1))` -/
def P4439159699780822242.Spec : Prop :=
  ∀ n, P4439159699780822242.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P10646021094328652144

`A068068(A038502(n+1))`
-/

namespace A385044.P10646021094328652144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (A038502 (n + 1)).toNat

end

end A385044.P10646021094328652144

namespace A385044

/-- `A068068(A038502(n+1))` -/
def P10646021094328652144.Spec : Prop :=
  ∀ n, P10646021094328652144.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P1228299947753929116

`A068068(n+1)/A177702(n)`
-/

namespace A385044.P1228299947753929116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068068 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A385044.P1228299947753929116

namespace A385044

/-- `A068068(n+1)/A177702(n)` -/
def P1228299947753929116.Spec : Prop :=
  ∀ n, P1228299947753929116.a n = (A385044 (n + 1) : ℚ)

end A385044

/-! ## A385044.P14776098095561817887

`A034444((n+1)/A065331(n+1))`
-/

namespace A385044.P14776098095561817887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A385044.P14776098095561817887

namespace A385044

/-- `A034444((n+1)/A065331(n+1))` -/
def P14776098095561817887.Spec : Prop :=
  ∀ n, P14776098095561817887.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P2123835590766135560

`A365208((n+1)/A065331(n+1))`
-/

namespace A385044.P2123835590766135560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365208 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A385044.P2123835590766135560

namespace A385044

/-- `A365208((n+1)/A065331(n+1))` -/
def P2123835590766135560.Spec : Prop :=
  ∀ n, P2123835590766135560.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P384535701729452030

`A365208(n+1)/A072078(n+1)`
-/

namespace A385044.P384535701729452030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365208 (n + 1) : ℚ) / (A072078 (n + 1) : ℚ)

end

end A385044.P384535701729452030

namespace A385044

/-- `A365208(n+1)/A072078(n+1)` -/
def P384535701729452030.Spec : Prop :=
  ∀ n, P384535701729452030.a n = (A385044 (n + 1) : ℚ)

end A385044

/-! ## A385044.P16370181921722555944

`∑{d}[n+1, A068068(#)*A154271((n+1)/#)]`
-/

namespace A385044.P16370181921722555944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A154271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385044.P16370181921722555944

namespace A385044

/-- `∑{d}[n+1, A068068(#)*A154271((n+1)/#)]` -/
def P16370181921722555944.Spec : Prop :=
  ∀ n, P16370181921722555944.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P411411359601036505

`∑{d}[n+1, A008966(#)*A372574((n+1)/#)]`
-/

namespace A385044.P411411359601036505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A372574 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385044.P411411359601036505

namespace A385044

/-- `∑{d}[n+1, A008966(#)*A372574((n+1)/#)]` -/
def P411411359601036505.Spec : Prop :=
  ∀ n, P411411359601036505.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P8830915313962108344

`∑{d}[n+1, A035263(#)*A359377((n+1)/#)]`
-/

namespace A385044.P8830915313962108344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A359377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385044.P8830915313962108344

namespace A385044

/-- `∑{d}[n+1, A035263(#)*A359377((n+1)/#)]` -/
def P8830915313962108344.Spec : Prop :=
  ∀ n, P8830915313962108344.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P7912752173025674192

`A046644(A318669((n+1)/A003557(n+1)))`
-/

namespace A385044.P7912752173025674192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A318669 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat).toNat

end

end A385044.P7912752173025674192

namespace A385044

/-- `A046644(A318669((n+1)/A003557(n+1)))` -/
def P7912752173025674192.Spec : Prop :=
  ∀ n, P7912752173025674192.a n = A385044 (n + 1)

end A385044

/-! ## A385044.P3723980262430554713

`A001817(A099985(n+1))`
-/

namespace A385044.P3723980262430554713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A099985 (n + 1)).toNat

end

end A385044.P3723980262430554713

namespace A385044

/-- `A001817(A099985(n+1))` -/
def P3723980262430554713.Spec : Prop :=
  ∀ n, P3723980262430554713.a n = A385044 (n + 1)

end A385044

/-!
# A385045: The sum of the unitary divisors of n that are 5-rough numbers (A007310).

The programs for A385045, the canonical program `A385045.P3641014629195364561` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385045 has offset 1).

The definition of A385045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385045.P6918201287995873448

`A034448(n+1)/A385046(n+1)`
-/

namespace A385045.P6918201287995873448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385046 (n + 1) : ℚ)

end

end A385045.P6918201287995873448

namespace A385045

/-- `A034448(n+1)/A385046(n+1)` -/
def P6918201287995873448.Spec : Prop :=
  ∀ n, P6918201287995873448.a n = (A385045 (n + 1) : ℚ)

end A385045

/-! ## A385045.P3641014629195364561

`A034448(A065330(n+1))`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A385045

/-- `A034448(A065330(n+1))` -/
def P3641014629195364561.Spec : Prop :=
  ∀ n, P3641014629195364561.a n = A385045 (n + 1)

theorem P3641014629195364561.correct : P3641014629195364561.Spec := by
  intro n
  simp only [A385045, Nat.add_sub_cancel]

end A385045

/-! ## A385045.P3826468958750654064

`A192066(A038502(n+1))`
-/

namespace A385045.P3826468958750654064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (A038502 (n + 1)).toNat

end

end A385045.P3826468958750654064

namespace A385045

/-- `A192066(A038502(n+1))` -/
def P3826468958750654064.Spec : Prop :=
  ∀ n, P3826468958750654064.a n = A385045 (n + 1)

end A385045

/-! ## A385045.P13819619419830635609

`A034448((n+1)/A065331(n+1))`
-/

namespace A385045.P13819619419830635609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A385045.P13819619419830635609

namespace A385045

/-- `A034448((n+1)/A065331(n+1))` -/
def P13819619419830635609.Spec : Prop :=
  ∀ n, P13819619419830635609.a n = A385045 (n + 1)

end A385045

/-! ## A385045.P2167434921090377600

`A365209((n+1)/A065331(n+1))`
-/

namespace A385045.P2167434921090377600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A385045.P2167434921090377600

namespace A385045

/-- `A365209((n+1)/A065331(n+1))` -/
def P2167434921090377600.Spec : Prop :=
  ∀ n, P2167434921090377600.a n = A385045 (n + 1)

end A385045

/-! ## A385045.P15154987629965694437

`A365209(n+1)/A072079(n+1)`
-/

namespace A385045.P15154987629965694437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365209 (n + 1) : ℚ) / (A072079 (n + 1) : ℚ)

end

end A385045.P15154987629965694437

namespace A385045

/-- `A365209(n+1)/A072079(n+1)` -/
def P15154987629965694437.Spec : Prop :=
  ∀ n, P15154987629965694437.a n = (A385045 (n + 1) : ℚ)

end A385045

/-! ## A385045.P5496321405809449768

`A034448(n+1)*A186099(n+1)/A365211(n+1)`
-/

namespace A385045.P5496321405809449768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) * A186099 (n + 1) : ℚ) / (A365211 (n + 1) : ℚ)

end

end A385045.P5496321405809449768

namespace A385045

/-- `A034448(n+1)*A186099(n+1)/A365211(n+1)` -/
def P5496321405809449768.Spec : Prop :=
  ∀ n, P5496321405809449768.a n = (A385045 (n + 1) : ℚ)

end A385045

/-! ## A385045.P14406401513044035936

`A358346(n+1)*A358347(n+1)/A385046(n+1)`
-/

namespace A385045.P14406401513044035936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358346 (n + 1) * A358347 (n + 1) : ℚ) / (A385046 (n + 1) : ℚ)

end

end A385045.P14406401513044035936

namespace A385045

/-- `A358346(n+1)*A358347(n+1)/A385046(n+1)` -/
def P14406401513044035936.Spec : Prop :=
  ∀ n, P14406401513044035936.a n = (A385045 (n + 1) : ℚ)

end A385045

/-! ## A385045.P8899350467545027993

`A107749(A065330(2*(n+1)))`
-/

namespace A385045.P8899350467545027993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (A065330 (2 * (n + 1))).toNat

end

end A385045.P8899350467545027993

namespace A385045

/-- `A107749(A065330(2*(n+1)))` -/
def P8899350467545027993.Spec : Prop :=
  ∀ n, P8899350467545027993.a n = A385045 (n + 1)

end A385045

/-! ## A385045.P6181221166312247198

`A365481(A140215(n+1))`
-/

namespace A385045.P6181221166312247198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (A140215 (n + 1)).toNat

end

end A385045.P6181221166312247198

namespace A385045

/-- `A365481(A140215(n+1))` -/
def P6181221166312247198.Spec : Prop :=
  ∀ n, P6181221166312247198.a n = A385045 (n + 1)

end A385045

/-! ## A385045.P3534251769921225944

`A360162(A129202(n))`
-/

namespace A385045.P3534251769921225944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A129202 n).toNat

end

end A385045.P3534251769921225944

namespace A385045

/-- `A360162(A129202(n))` -/
def P3534251769921225944.Spec : Prop :=
  ∀ n, P3534251769921225944.a n = A385045 (n + 1)

end A385045

/-! ## A385045.P15270648074645566625

`A360164(A046162(n+2))`
-/

namespace A385045.P15270648074645566625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360164 (A046162 (n + 2)).toNat

end

end A385045.P15270648074645566625

namespace A385045

/-- `A360164(A046162(n+2))` -/
def P15270648074645566625.Spec : Prop :=
  ∀ n, P15270648074645566625.a n = A385045 (n + 1)

end A385045

/-!
# A385046: The sum of the unitary divisors of n that are 3-smooth numbers (A003586).

The programs for A385046, the canonical program `A385046.P393041273059483800` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385046 has offset 1).

The definition of A385046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385046.P393041273059483800

`A034448(n+1)/A385045(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A385046

/-- `A034448(n+1)/A385045(n+1)` -/
def P393041273059483800.Spec : Prop :=
  ∀ n, P393041273059483800.a n = (A385046 (n + 1) : ℚ)

end A385046

/-! ## A385046.P6343373541888292010

`A034448(A065331(n+1))`
-/

namespace A385046.P6343373541888292010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A065331 (n + 1)).toNat

end

end A385046.P6343373541888292010

namespace A385046

/-- `A034448(A065331(n+1))` -/
def P6343373541888292010.Spec : Prop :=
  ∀ n, P6343373541888292010.a n = A385046 (n + 1)

end A385046

/-! ## A385046.P13495866227127768111

`A034448((n+1)/A065330(n+1))`
-/

namespace A385046.P13495866227127768111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A385046.P13495866227127768111

namespace A385046

/-- `A034448((n+1)/A065330(n+1))` -/
def P13495866227127768111.Spec : Prop :=
  ∀ n, P13495866227127768111.a n = A385046 (n + 1)

end A385046

/-! ## A385046.P2095960185947467303

`A365211((n+1)/A065330(n+1))`
-/

namespace A385046.P2095960185947467303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ))).toNat

end

end A385046.P2095960185947467303

namespace A385046

/-- `A365211((n+1)/A065330(n+1))` -/
def P2095960185947467303.Spec : Prop :=
  ∀ n, P2095960185947467303.a n = A385046 (n + 1)

end A385046

/-! ## A385046.P6089123034553612567

`A365211(n+1)/A186099(n+1)`
-/

namespace A385046.P6089123034553612567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365211 (n + 1) : ℚ) / (A186099 (n + 1) : ℚ)

end

end A385046.P6089123034553612567

namespace A385046

/-- `A365211(n+1)/A186099(n+1)` -/
def P6089123034553612567.Spec : Prop :=
  ∀ n, P6089123034553612567.a n = (A385046 (n + 1) : ℚ)

end A385046

/-! ## A385046.P7228724638539232394

`A365211(A065331(2*n+1-n))`
-/

namespace A385046.P7228724638539232394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365211 (A065331 (2 * n + 1 - n)).toNat

end

end A385046.P7228724638539232394

namespace A385046

/-- `A365211(A065331(2*n+1-n))` -/
def P7228724638539232394.Spec : Prop :=
  ∀ n, P7228724638539232394.a n = A385046 (n + 1)

end A385046

/-! ## A385046.P4847330079775744133

`A034448(A006519(n+1)*A038500(n+1))`
-/

namespace A385046.P4847330079775744133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A006519 (n + 1) * A038500 (n + 1)).toNat

end

end A385046.P4847330079775744133

namespace A385046

/-- `A034448(A006519(n+1)*A038500(n+1))` -/
def P4847330079775744133.Spec : Prop :=
  ∀ n, P4847330079775744133.a n = A385046 (n + 1)

end A385046

/-! ## A385046.P3765691660587647147

`A358346(n+1)*A358347(n+1)/A385045(n+1)`
-/

namespace A385046.P3765691660587647147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358346 (n + 1) * A358347 (n + 1) : ℚ) / (A385045 (n + 1) : ℚ)

end

end A385046.P3765691660587647147

namespace A385046

/-- `A358346(n+1)*A358347(n+1)/A385045(n+1)` -/
def P3765691660587647147.Spec : Prop :=
  ∀ n, P3765691660587647147.a n = (A385046 (n + 1) : ℚ)

end A385046

/-!
# A385047: The sum of the unitary divisors of n that are powers of 2.

The programs for A385047, the canonical program `A385047.P12539771583859150340` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385047 has offset 1).

The definition of A385047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385047.P12539771583859150340

`A034448(n+1)/A192066(n+1)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A385047

/-- `A034448(n+1)/A192066(n+1)` -/
def P12539771583859150340.Spec : Prop :=
  ∀ n, P12539771583859150340.a n = (A385047 (n + 1) : ℚ)

end A385047

/-! ## A385047.P14921261500580116527

`A059841(n+1)+A006519(n+1)`
-/

namespace A385047.P14921261500580116527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A006519 (n + 1)

end

end A385047.P14921261500580116527

namespace A385047

/-- `A059841(n+1)+A006519(n+1)` -/
def P14921261500580116527.Spec : Prop :=
  ∀ n, P14921261500580116527.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P17061495272294471749

`or(1, 2^val(n+1, 2))`
-/

namespace A385047.P17061495272294471749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A385047.P17061495272294471749

namespace A385047

/-- `or(1, 2^val(n+1, 2))` -/
def P17061495272294471749.Spec : Prop :=
  ∀ n, (P17061495272294471749.a n : ℤ) = A385047 (n + 1)

end A385047

/-! ## A385047.P11234110129958761350

`or(1, or(n, n+1)-n)`
-/

namespace A385047.P11234110129958761350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A385047.P11234110129958761350

namespace A385047

/-- `or(1, or(n, n+1)-n)` -/
def P11234110129958761350.Spec : Prop :=
  ∀ n, P11234110129958761350.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P5515300581314437804

`-or(n, -or(1, n+1))`
-/

namespace A385047.P5515300581314437804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(Nat.lor 1 (n + 1) : ℤ))

end

end A385047.P5515300581314437804

namespace A385047

/-- `-or(n, -or(1, n+1))` -/
def P5515300581314437804.Spec : Prop :=
  ∀ n, P5515300581314437804.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P16871774654917688361

`or(1, xor(n, or(n, n+1)))`
-/

namespace A385047.P16871774654917688361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.xor n (Nat.lor n (n + 1)))

end

end A385047.P16871774654917688361

namespace A385047

/-- `or(1, xor(n, or(n, n+1)))` -/
def P16871774654917688361.Spec : Prop :=
  ∀ n, (P16871774654917688361.a n : ℤ) = A385047 (n + 1)

end A385047

/-! ## A385047.P13873861864477044657

`and(n+1, xor(n, -2))+1`
-/

namespace A385047.P13873861864477044657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.xor (n : ℤ) (-2)) + 1

end

end A385047.P13873861864477044657

namespace A385047

/-- `and(n+1, xor(n, -2))+1` -/
def P13873861864477044657.Spec : Prop :=
  ∀ n, P13873861864477044657.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P17319539762733842369

`and(n+2, -n)^and(1, n)`
-/

namespace A385047.P17319539762733842369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-(n : ℤ)) ^ Nat.land 1 n

end

end A385047.P17319539762733842369

namespace A385047

/-- `and(n+2, -n)^and(1, n)` -/
def P17319539762733842369.Spec : Prop :=
  ∀ n, P17319539762733842369.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P3367734121491804403

`and(n+1, n-lcm(2, n))+1`
-/

namespace A385047.P3367734121491804403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - (Nat.lcm 2 n : ℤ)) + 1

end

end A385047.P3367734121491804403

namespace A385047

/-- `and(n+1, n-lcm(2, n))+1` -/
def P3367734121491804403.Spec : Prop :=
  ∀ n, P3367734121491804403.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P13572001279567524825

`n+2-and(n+1, xor(1, n))`
-/

namespace A385047.P13572001279567524825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land (n + 1) (Nat.xor 1 n) : ℤ)

end

end A385047.P13572001279567524825

namespace A385047

/-- `n+2-and(n+1, xor(1, n))` -/
def P13572001279567524825.Spec : Prop :=
  ∀ n, P13572001279567524825.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P11240812221589008778

`xor(n+1, and(n, xor(1, n+1)))`
-/

namespace A385047.P11240812221589008778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land n (Nat.xor 1 (n + 1)))

end

end A385047.P11240812221589008778

namespace A385047

/-- `xor(n+1, and(n, xor(1, n+1)))` -/
def P11240812221589008778.Spec : Prop :=
  ∀ n, (P11240812221589008778.a n : ℤ) = A385047 (n + 1)

end A385047

/-! ## A385047.P15848952717187471637

`and(n, -(n+2))+gcd(2, n+1)`
-/

namespace A385047.P15848952717187471637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) + (Nat.gcd 2 (n + 1) : ℤ)

end

end A385047.P15848952717187471637

namespace A385047

/-- `and(n, -(n+2))+gcd(2, n+1)` -/
def P15848952717187471637.Spec : Prop :=
  ∀ n, P15848952717187471637.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P6226003322925216854

`and(1, n)+and(n+1, -(n+1))`
-/

namespace A385047.P6226003322925216854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A385047.P6226003322925216854

namespace A385047

/-- `and(1, n)+and(n+1, -(n+1))` -/
def P6226003322925216854.Spec : Prop :=
  ∀ n, P6226003322925216854.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P4266772619231360676

`and(n+1, and(1, n)-(n+2))+1`
-/

namespace A385047.P4266772619231360676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.land 1 n : ℤ) - (n + 2 : ℤ)) + 1

end

end A385047.P4266772619231360676

namespace A385047

/-- `and(n+1, and(1, n)-(n+2))+1` -/
def P4266772619231360676.Spec : Prop :=
  ∀ n, P4266772619231360676.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P5798716400726132830

`A083318(val(n+1, 2))`
-/

namespace A385047.P5798716400726132830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (SequenceMachineLib.valuation (n + 1) 2)

end

end A385047.P5798716400726132830

namespace A385047

/-- `A083318(val(n+1, 2))` -/
def P5798716400726132830.Spec : Prop :=
  ∀ n, P5798716400726132830.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P10822974065461826249

`or(1, A006519(n+1))`
-/

namespace A385047.P10822974065461826249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006519 (n + 1))

end

end A385047.P10822974065461826249

namespace A385047

/-- `or(1, A006519(n+1))` -/
def P10822974065461826249.Spec : Prop :=
  ∀ n, P10822974065461826249.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P11956536209677975901

`A122155(xor(n, n+1))`
-/

namespace A385047.P11956536209677975901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (Nat.xor n (n + 1))

end

end A385047.P11956536209677975901

namespace A385047

/-- `A122155(xor(n, n+1))` -/
def P11956536209677975901.Spec : Prop :=
  ∀ n, P11956536209677975901.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P5557898146688299984

`A304110(xor(n, n+1))`
-/

namespace A385047.P5557898146688299984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304110 (Nat.xor n (n + 1))

end

end A385047.P5557898146688299984

namespace A385047

/-- `A304110(xor(n, n+1))` -/
def P5557898146688299984.Spec : Prop :=
  ∀ n, P5557898146688299984.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P11779141513875131613

`A319702(xor(n, n+1))`
-/

namespace A385047.P11779141513875131613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (Nat.xor n (n + 1))

end

end A385047.P11779141513875131613

namespace A385047

/-- `A319702(xor(n, n+1))` -/
def P11779141513875131613.Spec : Prop :=
  ∀ n, P11779141513875131613.a n = A385047 (n + 1)

end A385047

/-! ## A385047.P3230227616004994247

`ceil(ratio[A000265(n+1)])`
-/

namespace A385047.P3230227616004994247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A385047.P3230227616004994247

namespace A385047

/-- `ceil(ratio[A000265(n+1)])` -/
def P3230227616004994247.Spec : Prop :=
  ∀ n, P3230227616004994247.a n = A385047 (n + 1)

end A385047

/-!
# A385048: The sum of the unitary divisors of n that are cubefull numbers (A036966).

The programs for A385048, the canonical program `A385048.P15337767966192426689` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385048 has offset 1).

The definition of A385048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A371242, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385048.P15337767966192426689

`A034448(n+1)/A371242(n+1)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A385048

/-- `A034448(n+1)/A371242(n+1)` -/
def P15337767966192426689.Spec : Prop :=
  ∀ n, P15337767966192426689.a n = (A385048 (n + 1) : ℚ)

end A385048

/-! ## A385048.P10680969032938229033

`A360720(A366765(n+1))`
-/

namespace A385048.P10680969032938229033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360720 (A366765 (n + 1)).toNat

end

end A385048.P10680969032938229033

namespace A385048

/-- `A360720(A366765(n+1))` -/
def P10680969032938229033.Spec : Prop :=
  ∀ n, P10680969032938229033.a n = A385048 (n + 1)

end A385048

/-! ## A385048.P9552819742797983657

`A360720(A368886(n+1))`
-/

namespace A385048.P9552819742797983657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360720 (A368886 (n + 1)).toNat

end

end A385048.P9552819742797983657

namespace A385048

/-- `A360720(A368886(n+1))` -/
def P9552819742797983657.Spec : Prop :=
  ∀ n, P9552819742797983657.a n = A385048 (n + 1)

end A385048

/-! ## A385048.P5847212148934695995

`A369718(A360540(n+1))`
-/

namespace A385048.P5847212148934695995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369718 (A360540 (n + 1)).toNat

end

end A385048.P5847212148934695995

namespace A385048

/-- `A369718(A360540(n+1))` -/
def P5847212148934695995.Spec : Prop :=
  ∀ n, P5847212148934695995.a n = A385048 (n + 1)

end A385048

/-! ## A385048.P6788332589767996846

`A034448(n+1)/A385043(A383764(n+1))`
-/

namespace A385048.P6788332589767996846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385043 (A383764 (n + 1)).toNat : ℚ)

end

end A385048.P6788332589767996846

namespace A385048

/-- `A034448(n+1)/A385043(A383764(n+1))` -/
def P6788332589767996846.Spec : Prop :=
  ∀ n, P6788332589767996846.a n = (A385048 (n + 1) : ℚ)

end A385048

/-! ## A385048.P15342038316417429721

`(A034460(n+1)+1+n)/A034448(A360539(n+1))`
-/

namespace A385048.P15342038316417429721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ) : ℚ) / (A034448 (A360539 (n + 1)).toNat : ℚ)

end

end A385048.P15342038316417429721

namespace A385048

/-- `(A034460(n+1)+1+n)/A034448(A360539(n+1))` -/
def P15342038316417429721.Spec : Prop :=
  ∀ n, P15342038316417429721.a n = (A385048 (n + 1) : ℚ)

end A385048

/-! ## A385048.P11309314520709916216

`A369721((n+1)/A360541(A360541(n+1)))`
-/

namespace A385048.P11309314520709916216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360541 (A360541 (n + 1)).toNat : ℚ))).toNat

end

end A385048.P11309314520709916216

namespace A385048

/-- `A369721((n+1)/A360541(A360541(n+1)))` -/
def P11309314520709916216.Spec : Prop :=
  ∀ n, P11309314520709916216.a n = A385048 (n + 1)

end A385048

/-!
# A385049: The sum of the unitary divisors of n that are biquadratefree numbers (A046100).

The programs for A385049, the canonical program `A385049.P4314546345996774465` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385049 has offset 1).

The definition of A385049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385049.P4314546345996774465

`A034448(A385007(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A385049

/-- `A034448(A385007(n+1))` -/
def P4314546345996774465.Spec : Prop :=
  ∀ n, P4314546345996774465.a n = A385049 (n + 1)

theorem P4314546345996774465.correct : P4314546345996774465.Spec := by
  intro n
  simp only [A385049, Nat.add_sub_cancel]

end A385049

/-! ## A385049.P11648718868432511439

`A371242(n+1)*A380396(A385007(n+1))`
-/

namespace A385049.P11648718868432511439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371242 (n + 1) * A380396 (A385007 (n + 1)).toNat

end

end A385049.P11648718868432511439

namespace A385049

/-- `A371242(n+1)*A380396(A385007(n+1))` -/
def P11648718868432511439.Spec : Prop :=
  ∀ n, P11648718868432511439.a n = A385049 (n + 1)

end A385049

/-! ## A385049.P3409276301040468136

`gcd(A001419(4^val(n+1, 4)), A034448(n+1))`
-/

namespace A385049.P3409276301040468136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001419 (4 ^ SequenceMachineLib.valuation (n + 1) 4)) (A034448 (n + 1))

end

end A385049.P3409276301040468136

namespace A385049

/-- `gcd(A001419(4^val(n+1, 4)), A034448(n+1))` -/
def P3409276301040468136.Spec : Prop :=
  ∀ n, (P3409276301040468136.a n : ℤ) = A385049 (n + 1)

end A385049

/-! ## A385049.P2635659188356726950

`A383763(n+1)%A112034(n)`
-/

namespace A385049.P2635659188356726950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383763 (n + 1)) (A112034 n)

end

end A385049.P2635659188356726950

namespace A385049

/-- `A383763(n+1)%A112034(n)` -/
def P2635659188356726950.Spec : Prop :=
  ∀ n, P2635659188356726950.a n = A385049 (n + 1)

end A385049

/-! ## A385049.P5754309917353999791

`A034448(n+1)%A347253(A206787(n+1))`
-/

namespace A385049.P5754309917353999791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1)) (A347253 (A206787 (n + 1)).toNat)

end

end A385049.P5754309917353999791

namespace A385049

/-- `A034448(n+1)%A347253(A206787(n+1))` -/
def P5754309917353999791.Spec : Prop :=
  ∀ n, P5754309917353999791.a n = A385049 (n + 1)

end A385049

/-!
# A385051: a(n) is the least positive number k such that n is the greatest m such that k is a quadratic nonresidue mod prime(i+1) for i=1..m and {k mod prime(i+1): i=1..m} are all distinct.

The programs for A385051, there is no canonical definition to state claims against.
-/

/-! ## A385051.P360857271394567778

`A175542(A107312(n+1))`
-/

namespace A385051.P360857271394567778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A107312 (n + 1)).toNat

end

end A385051.P360857271394567778

/-!
# A385053: Number of non-isomorphic simple games with n players and one minimal winning vector.

The programs for A385053, there is no canonical definition to state claims against.
-/

/-! ## A385053.P15119781483960135769

`∑[A381432(∑[A129852(n)])]`
-/

namespace A385053.P15119781483960135769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385053.P15119781483960135769

/-! ## A385053.P16441386741140313420

`A058695(n)-A333382(A059033(2*n))`
-/

namespace A385053.P16441386741140313420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A333382 (A059033 (2 * n)).toNat

end

end A385053.P16441386741140313420

/-! ## A385053.P9961396753325236535

`A000041(2*n+1)-A287385(A389983(2*n))`
-/

namespace A385053.P9961396753325236535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A287385 (A389983 (2 * n)).toNat

end

end A385053.P9961396753325236535

/-!
# A385055: a(n) = [n = 1 or A076479(n) = Möbius(A067029(n))], where [.] is the Iverson bracket.

The programs for A385055, there is no canonical definition to state claims against.
-/

/-! ## A385055.P3139517107138881458

`A384709(A119416(n+1))`
-/

namespace A385055.P3139517107138881458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A119416 (n + 1)).toNat

end

end A385055.P3139517107138881458

/-! ## A385055.P15871156697583161767

`A384709(A013636(n+1))`
-/

namespace A385055.P15871156697583161767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A013636 (n + 1)).toNat

end

end A385055.P15871156697583161767

/-! ## A385055.P11775279901031445719

`A384709(A020338(n+1))`
-/

namespace A385055.P11775279901031445719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A020338 (n + 1)).toNat

end

end A385055.P11775279901031445719

/-! ## A385055.P2616065592850272224

`A384709(A053024(n+1))`
-/

namespace A385055.P2616065592850272224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A053024 (n + 1)).toNat

end

end A385055.P2616065592850272224

/-! ## A385055.P14424623983921975607

`A384709(A134297(n+1))`
-/

namespace A385055.P14424623983921975607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A134297 (n + 1)).toNat

end

end A385055.P14424623983921975607

/-! ## A385055.P3394002644984008481

`A384709(A138127(n+1))`
-/

namespace A385055.P3394002644984008481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A138127 (n + 1)).toNat

end

end A385055.P3394002644984008481

/-! ## A385055.P1907244391708929350

`A384709(A004926(n+1))`
-/

namespace A385055.P1907244391708929350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A004926 (n + 1)).toNat

end

end A385055.P1907244391708929350

/-!
# A385056: Prime numbers whose digit product is a positive cube.

The programs for A385056, the canonical program `A385056.P8356949584126606895` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385056 has offset 1).

The definition of A385056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385056.P8356949584126606895

`∩[A038618(n+1), A062372(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385056

/-- `∩[A038618(n+1), A062372(n+1)]` -/
def P8356949584126606895.Spec : Prop :=
  ∀ n, (P8356949584126606895.a n : ℤ) = A385056 (n + 1)

theorem P8356949584126606895.correct : P8356949584126606895.Spec := by
  intro n
  simp only [A385056, Nat.add_sub_cancel]

end A385056

/-! ## A385056.P7686109314540016290

`p?[A237767(n+1)]`
-/

namespace A385056.P7686109314540016290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A385056.P7686109314540016290

namespace A385056

/-- `p?[A237767(n+1)]` -/
def P7686109314540016290.Spec : Prop :=
  ∀ n, P7686109314540016290.a n = A385056 (n + 1)

end A385056

/-! ## A385056.P13568306295406837354

`filter[A237767(n+1), A010051(#)]`
-/

namespace A385056.P13568306295406837354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A385056.P13568306295406837354

namespace A385056

/-- `filter[A237767(n+1), A010051(#)]` -/
def P13568306295406837354.Spec : Prop :=
  ∀ n, P13568306295406837354.a n = A385056 (n + 1)

end A385056

/-! ## A385056.P11159740858746951278

`∩[A237767(n+1), A386323(n+1)]`
-/

namespace A385056.P11159740858746951278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385056.P11159740858746951278

namespace A385056

/-- `∩[A237767(n+1), A386323(n+1)]` -/
def P11159740858746951278.Spec : Prop :=
  ∀ n, (P11159740858746951278.a n : ℤ) = A385056 (n + 1)

end A385056

/-! ## A385056.P2328092087167419387

`filter[A237767(n+1), A171387(#)]`
-/

namespace A385056.P2328092087167419387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A385056.P2328092087167419387

namespace A385056

/-- `filter[A237767(n+1), A171387(#)]` -/
def P2328092087167419387.Spec : Prop :=
  ∀ n, P2328092087167419387.a n = A385056 (n + 1)

end A385056

/-! ## A385056.P1897199256287581380

`filter[A237767(n+2), A080339(#)]`
-/

namespace A385056.P1897199256287581380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A385056.P1897199256287581380

namespace A385056

/-- `filter[A237767(n+2), A080339(#)]` -/
def P1897199256287581380.Spec : Prop :=
  ∀ n, P1897199256287581380.a n = A385056 (n + 1)

end A385056

/-! ## A385056.P6591940736838341144

`filter[A237767(n+2), A080545(#)]`
-/

namespace A385056.P6591940736838341144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A385056.P6591940736838341144

namespace A385056

/-- `filter[A237767(n+2), A080545(#)]` -/
def P6591940736838341144.Spec : Prop :=
  ∀ n, P6591940736838341144.a n = A385056 (n + 1)

end A385056

/-! ## A385056.P10748934048740446131

`filter[A237767(n+2), A192280(#)]`
-/

namespace A385056.P10748934048740446131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A385056.P10748934048740446131

namespace A385056

/-- `filter[A237767(n+2), A192280(#)]` -/
def P10748934048740446131.Spec : Prop :=
  ∀ n, P10748934048740446131.a n = A385056 (n + 1)

end A385056

/-! ## A385056.P3929741354591139096

`filter[A237767(n+3), A174282(#)]`
-/

namespace A385056.P3929741354591139096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A385056.P3929741354591139096

namespace A385056

/-- `filter[A237767(n+3), A174282(#)]` -/
def P3929741354591139096.Spec : Prop :=
  ∀ n, P3929741354591139096.a n = A385056 (n + 1)

end A385056

/-! ## A385056.P9584436772723295237

`∩[A038613(n+1), A237767(n+1)]`
-/

namespace A385056.P9584436772723295237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385056.P9584436772723295237

namespace A385056

/-- `∩[A038613(n+1), A237767(n+1)]` -/
def P9584436772723295237.Spec : Prop :=
  ∀ n, (P9584436772723295237.a n : ℤ) = A385056 (n + 1)

end A385056

/-!
# A385057: E.g.f. satisfies A(x) = exp( Sum_{n>=1} (Integral A(x)^n dx)^n / n ).

The programs for A385057, there is no canonical definition to state claims against.
-/

/-! ## A385057.P101424593099196443

`A281687(2^∑[n])`
-/

namespace A385057.P101424593099196443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281687 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A385057.P101424593099196443

/-!
# A385058: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/A(-x*A(x))).

The programs for A385058, there is no canonical definition to state claims against.
-/

/-! ## A385058.P13165535363049344373

`A385061(∑[n+1]+n)`
-/

namespace A385058.P13165535363049344373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385061 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385058.P13165535363049344373

/-!
# A385059: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/A(-x*A(x))^2).

The programs for A385059, there is no canonical definition to state claims against.
-/

/-! ## A385059.P12352814670339845722

`A385062(∑[n+1]+n)`
-/

namespace A385059.P12352814670339845722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385062 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385059.P12352814670339845722

/-!
# A385060: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/A(-x*A(x))^3).

The programs for A385060, there is no canonical definition to state claims against.
-/

/-! ## A385060.P12871900132896456316

`A385063(∑[n+1]+n)`
-/

namespace A385060.P12871900132896456316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385063 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385060.P12871900132896456316

/-!
# A385062: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A385059.

The programs for A385062, there is no canonical definition to state claims against.
-/

/-! ## A385062.P3414274620433704299

`A384788(n)%A193915(A075930(n+3))`
-/

namespace A385062.P3414274620433704299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384788 n) (A193915 (A075930 (n + 3)).toNat)

end

end A385062.P3414274620433704299

/-! ## A385062.P13708556445325471659

`A384692(n)%A063095(A233075(n+1))`
-/

namespace A385062.P13708556445325471659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384692 n) (A063095 (A233075 (n + 1)).toNat)

end

end A385062.P13708556445325471659

/-! ## A385062.P12581113688362099508

`A384690(n)%A194981(A355200(2*n+3))`
-/

namespace A385062.P12581113688362099508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384690 n) (A194981 (A355200 (2 * n + 3)).toNat)

end

end A385062.P12581113688362099508

/-!
# A385063: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A385060.

The programs for A385063, there is no canonical definition to state claims against.
-/

/-! ## A385063.P7015381295505324827

`A384987(n)%A062927(A066412(3*n+1))`
-/

namespace A385063.P7015381295505324827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384987 n) (A062927 (A066412 (3 * n + 1)).toNat)

end

end A385063.P7015381295505324827

/-!
# A385065: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^2*A(x)^3.

The programs for A385065, there is no canonical definition to state claims against.
-/

/-! ## A385065.P1357037039577918063

`A263270(A005809(n))-n`
-/

namespace A385065.P1357037039577918063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A005809 n).toNat - (n : ℤ)

end

end A385065.P1357037039577918063

/-! ## A385065.P5353972489892782316

`A389284(n)-A249507(A141598(n+1))`
-/

namespace A385065.P5353972489892782316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389284 n - A249507 (A141598 (n + 1)).toNat

end

end A385065.P5353972489892782316

/-!
# A385066: E.g.f. A(x) satisfies A(x) = exp(x + x^3*A''(x)).

The programs for A385066, there is no canonical definition to state claims against.
-/

/-! ## A385066.P2456854640732323199

`A249570(∑[n!])`
-/

namespace A385066.P2456854640732323199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385066.P2456854640732323199

/-!
# A385067: G.f.: Sum_{k>=0} x^k * Product_{j=1..3*k} (1 + x^j).

The programs for A385067, there is no canonical definition to state claims against.
-/

/-! ## A385067.P14567989943539471116

`A121900(A296267(n))`
-/

namespace A385067.P14567989943539471116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A296267 n).toNat

end

end A385067.P14567989943539471116

/-! ## A385067.P5323065625624011119

`A328806(A330886(n))`
-/

namespace A385067.P5323065625624011119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A330886 n).toNat

end

end A385067.P5323065625624011119

/-! ## A385067.P16098572954326109880

`A105224(A023622(n+1))`
-/

namespace A385067.P16098572954326109880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A023622 (n + 1)).toNat

end

end A385067.P16098572954326109880

/-! ## A385067.P12398372989637223476

`A263846(A027560(n+1))`
-/

namespace A385067.P12398372989637223476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A027560 (n + 1)).toNat

end

end A385067.P12398372989637223476

/-! ## A385067.P13078622544157678206

`A263846(A107066(n+1))`
-/

namespace A385067.P13078622544157678206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A107066 (n + 1)).toNat

end

end A385067.P13078622544157678206

/-!
# A385068: G.f.: Sum_{k>=0} x^k * Product_{j=1..4*k} (1 + x^j).

The programs for A385068, there is no canonical definition to state claims against.
-/

/-! ## A385068.P6583697319205858537

`A247973(A364345(n+2)-1)`
-/

namespace A385068.P6583697319205858537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A364345 (n + 2) - 1).toNat

end

end A385068.P6583697319205858537

/-! ## A385068.P11947293131213370956

`A127039(n+3)+A069016(A011782(n+1))`
-/

namespace A385068.P11947293131213370956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127039 (n + 3) + A069016 (A011782 (n + 1)).toNat

end

end A385068.P11947293131213370956

/-! ## A385068.P1674096147452259059

`A263846(A005380(n))`
-/

namespace A385068.P1674096147452259059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A005380 n).toNat

end

end A385068.P1674096147452259059

/-! ## A385068.P9014803510268403226

`A373811(A066897(n+1))`
-/

namespace A385068.P9014803510268403226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A066897 (n + 1)).toNat

end

end A385068.P9014803510268403226

/-! ## A385068.P2185941448463029493

`or(A055029(A000081(n)), A067593(n))`
-/

namespace A385068.P2185941448463029493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055029 (A000081 n).toNat) (A067593 n)

end

end A385068.P2185941448463029493

/-!
# A385069: G.f.: Sum_{k>=0} x^k * Product_{j=1..5*k} (1 + x^j).

The programs for A385069, there is no canonical definition to state claims against.
-/

/-! ## A385069.P8203398529177211537

`A180447(A051136(n))`
-/

namespace A385069.P8203398529177211537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A051136 n).toNat

end

end A385069.P8203398529177211537

/-! ## A385069.P8961050605172499341

`A180613(A214076(n+1))`
-/

namespace A385069.P8961050605172499341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180613 (A214076 (n + 1)).toNat

end

end A385069.P8961050605172499341

/-! ## A385069.P1089193632888989682

`A394247(A036880(n+1))`
-/

namespace A385069.P1089193632888989682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A036880 (n + 1)).toNat

end

end A385069.P1089193632888989682

/-! ## A385069.P6697338314686110202

`A330709(A320968(n+1))`
-/

namespace A385069.P6697338314686110202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A320968 (n + 1)).toNat

end

end A385069.P6697338314686110202

/-!
# A385070: G.f.: Sum_{k>=0} x^k * Product_{j=1..6*k} (1 + x^j).

The programs for A385070, there is no canonical definition to state claims against.
-/

/-! ## A385070.P7914193629831736847

`A135662(A000041(2*n+3)-A000121(n))`
-/

namespace A385070.P7914193629831736847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A000041 (2 * n + 3) - A000121 n).toNat

end

end A385070.P7914193629831736847

/-! ## A385070.P6769821128577272203

`A135662(A000041(2*n+3)-A003056(n))`
-/

namespace A385070.P6769821128577272203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A000041 (2 * n + 3) - A003056 n).toNat

end

end A385070.P6769821128577272203

/-! ## A385070.P7829065158562106711

`A135662(A000041(2*n+3)-A079343(n))`
-/

namespace A385070.P7829065158562106711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A000041 (2 * n + 3) - A079343 n).toNat

end

end A385070.P7829065158562106711

/-! ## A385070.P16160343910738604745

`A135662(A000041(2*n+3)-A238279(n))`
-/

namespace A385070.P16160343910738604745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A000041 (2 * n + 3) - A238279 n).toNat

end

end A385070.P16160343910738604745

/-! ## A385070.P6290190999802740223

`A135662(xor(A000041(2*n+3), A238279(n)))`
-/

namespace A385070.P6290190999802740223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (Int.xor (A000041 (2 * n + 3)) (A238279 n)).toNat

end

end A385070.P6290190999802740223

/-!
# A385071: a(n) = number of triangular numbers <= n-th tetrahedral number.

The programs for A385071, the canonical program `A385071.P18157201007924314701` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385071 has offset 0).

The definition of A385071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385071.P18157201007924314701

`round(sqrt(∑[∑[2*n]]+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385071

/-- `round(sqrt(∑[∑[2*n]]+1))` -/
def P18157201007924314701.Spec : Prop :=
  ∀ n, P18157201007924314701.a n = A385071 n

theorem P18157201007924314701.correct : P18157201007924314701.Spec := by
  intro n
  simp only [A385071]

end A385071

/-! ## A385071.P1151588161964100225

`lt[A064766(n), n+2]+1`
-/

namespace A385071.P1151588161964100225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064766 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385071.P1151588161964100225

namespace A385071

/-- `lt[A064766(n), n+2]+1` -/
def P1151588161964100225.Spec : Prop :=
  ∀ n, (P1151588161964100225.a n : ℤ) = A385071 n

end A385071

/-! ## A385071.P15306185298586992024

`A002024(∑[∑[n]]+1)`
-/

namespace A385071.P15306185298586992024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A385071.P15306185298586992024

namespace A385071

/-- `A002024(∑[∑[n]]+1)` -/
def P15306185298586992024.Spec : Prop :=
  ∀ n, P15306185298586992024.a n = A385071 n

end A385071

/-! ## A385071.P15054343684104226038

`A003056(∑[∑[n]])+1`
-/

namespace A385071.P15054343684104226038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A385071.P15054343684104226038

namespace A385071

/-- `A003056(∑[∑[n]])+1` -/
def P15054343684104226038.Spec : Prop :=
  ∀ n, P15054343684104226038.a n = A385071 n

end A385071

/-! ## A385071.P16431433842304814136

`A123578(∑[∑[n]]+1)`
-/

namespace A385071.P16431433842304814136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A385071.P16431433842304814136

namespace A385071

/-- `A123578(∑[∑[n]]+1)` -/
def P16431433842304814136.Spec : Prop :=
  ∀ n, P16431433842304814136.a n = A385071 n

end A385071

/-!
# A385072: a(n) = number of tetrahedral numbers <= n-th triangular number.

The programs for A385072, the canonical program `A385072.P12514858410014300209` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385072 has offset 0).

The definition of A385072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385072.P12514858410014300209

`A360010(∑[n]+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385072

/-- `A360010(∑[n]+1)` -/
def P12514858410014300209.Spec : Prop :=
  ∀ n, P12514858410014300209.a n = A385072 n

theorem P12514858410014300209.correct : P12514858410014300209.Spec := by
  intro n
  simp only [A385072]

end A385072

/-! ## A385072.P388245162609855387

`A002024(A108581(A000217(n)+1))`
-/

namespace A385072.P388245162609855387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A108581 (A000217 n + 1).toNat).toNat

end

end A385072.P388245162609855387

namespace A385072

/-- `A002024(A108581(A000217(n)+1))` -/
def P388245162609855387.Spec : Prop :=
  ∀ n, P388245162609855387.a n = A385072 n

end A385072

/-! ## A385072.P4295080059181850425

`A360010(A000124(n))%A078370(n)`
-/

namespace A385072.P4295080059181850425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360010 (A000124 n).toNat) (A078370 n)

end

end A385072.P4295080059181850425

namespace A385072

/-- `A360010(A000124(n))%A078370(n)` -/
def P4295080059181850425.Spec : Prop :=
  ∀ n, P4295080059181850425.a n = A385072 n

end A385072

/-! ## A385072.P4080922997212619678

`gcd(A000038(n), A360010(A000124(n)))`
-/

namespace A385072.P4080922997212619678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A360010 (A000124 n).toNat)

end

end A385072.P4080922997212619678

namespace A385072

/-- `gcd(A000038(n), A360010(A000124(n)))` -/
def P4080922997212619678.Spec : Prop :=
  ∀ n, (P4080922997212619678.a n : ℤ) = A385072 n

end A385072

/-! ## A385072.P12959145225809451115

`A360010(A000124(n))+A000038(n+1)`
-/

namespace A385072.P12959145225809451115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A000124 n).toNat + A000038 (n + 1)

end

end A385072.P12959145225809451115

namespace A385072

/-- `A360010(A000124(n))+A000038(n+1)` -/
def P12959145225809451115.Spec : Prop :=
  ∀ n, P12959145225809451115.a n = A385072 n

end A385072

/-! ## A385072.P1658169148956060028

`A056556(∑[n])+1`
-/

namespace A385072.P1658169148956060028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A385072.P1658169148956060028

namespace A385072

/-- `A056556(∑[n])+1` -/
def P1658169148956060028.Spec : Prop :=
  ∀ n, P1658169148956060028.a n = A385072 n

end A385072

/-! ## A385072.P5404400075535539614

`A194847(∑[n])-1`
-/

namespace A385072.P5404400075535539614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A385072.P5404400075535539614

namespace A385072

/-- `A194847(∑[n])-1` -/
def P5404400075535539614.Spec : Prop :=
  ∀ n, P5404400075535539614.a n = A385072 n

end A385072

/-! ## A385072.P14078112728653297893

`A023443(A194847(∑[n]))`
-/

namespace A385072.P14078112728653297893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194847 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A385072.P14078112728653297893

namespace A385072

/-- `A023443(A194847(∑[n]))` -/
def P14078112728653297893.Spec : Prop :=
  ∀ n, P14078112728653297893.a n = A385072 n

end A385072

/-! ## A385072.P3742418712197924239

`A002024(A123579(A000124(n)))`
-/

namespace A385072.P3742418712197924239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A123579 (A000124 n).toNat).toNat

end

end A385072.P3742418712197924239

namespace A385072

/-- `A002024(A123579(A000124(n)))` -/
def P3742418712197924239.Spec : Prop :=
  ∀ n, P3742418712197924239.a n = A385072 n

end A385072

/-! ## A385072.P6337593849122450210

`A123578(A123579(A000217(n+1)-n))`
-/

namespace A385072.P6337593849122450210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A123579 (A000217 (n + 1) - (n : ℤ)).toNat).toNat

end

end A385072.P6337593849122450210

namespace A385072

/-- `A123578(A123579(A000217(n+1)-n))` -/
def P6337593849122450210.Spec : Prop :=
  ∀ n, P6337593849122450210.a n = A385072 n

end A385072

/-! ## A385072.P12900346204591981195

`A123578(A123579(A000124(n+1)-(n+1)))`
-/

namespace A385072.P12900346204591981195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A123579 (A000124 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A385072.P12900346204591981195

namespace A385072

/-- `A123578(A123579(A000124(n+1)-(n+1)))` -/
def P12900346204591981195.Spec : Prop :=
  ∀ n, P12900346204591981195.a n = A385072 n

end A385072

/-! ## A385072.P14901933089239588062

`A220104(n²+n+1)`
-/

namespace A385072.P14901933089239588062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (n ^ 2 + (n + 1))

end

end A385072.P14901933089239588062

namespace A385072

/-- `A220104(n²+n+1)` -/
def P14901933089239588062.Spec : Prop :=
  ∀ n, P14901933089239588062.a n = A385072 n

end A385072

/-!
# A385073: a(n) = b^(n-1) mod n, where b = A053669(n) is the least integer greater than 1 and coprime to n.

The programs for A385073, there is no canonical definition to state claims against.
-/

/-! ## A385073.P16846725336770639701

`(A053669(n+1)^n)%(n+1)`
-/

namespace A385073.P16846725336770639701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053669 (n + 1) ^ n) (n + 1 : ℤ)

end

end A385073.P16846725336770639701

/-! ## A385073.P6411531602548646639

`and(∑{d}[n+1, 2^(#-1)], A305611(A285822(n)))`
-/

namespace A385073.P6411531602548646639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))) (A305611 (A285822 n).toNat)

end

end A385073.P6411531602548646639

/-! ## A385073.P6791160383579376077

`A106856(A161409(3*n+2))%(n+1)`
-/

namespace A385073.P6791160383579376077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106856 (A161409 (3 * n + 2)).toNat) (n + 1 : ℤ)

end

end A385073.P6791160383579376077

/-! ## A385073.P13570598956466091374

`A346024(A374760(n))%A008611(3*n+2)`
-/

namespace A385073.P13570598956466091374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346024 (A374760 n).toNat) (A008611 (3 * n + 2))

end

end A385073.P13570598956466091374

/-!
# A385076: a(n) = Sum_{d|n} n^[Omega(d) = 2], where [ ] is the Iverson bracket.

The programs for A385076, the canonical program `A385076.P9368700758001390996` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385076 has offset 1).

The definition of A385076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385076.P9368700758001390996

`A000005(n+1)+n*A086971(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A385076

/-- `A000005(n+1)+n*A086971(n+1)` -/
def P9368700758001390996.Spec : Prop :=
  ∀ n, P9368700758001390996.a n = A385076 (n + 1)

theorem P9368700758001390996.correct : P9368700758001390996.Spec := by
  intro n
  simp only [A385076, Nat.add_sub_cancel]

end A385076

/-!
# A385077: Primes x that cannot be written as x = p + 2*q where p < q are primes.

The programs for A385077, there is no canonical definition to state claims against.
-/

/-! ## A385077.P18426370591895080061

`A130807(A018059(n))`
-/

namespace A385077.P18426370591895080061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130807 (A018059 n).toNat

end

end A385077.P18426370591895080061

/-! ## A385077.P11733338822579303153

`A396480(A271489(n))`
-/

namespace A385077.P11733338822579303153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (A271489 n).toNat

end

end A385077.P11733338822579303153

/-! ## A385077.P15900686094203761099

`A079148(A064278(n+1))`
-/

namespace A385077.P15900686094203761099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (A064278 (n + 1)).toNat

end

end A385077.P15900686094203761099

/-! ## A385077.P2496338823269089666

`A118723(A060733(n+1))`
-/

namespace A385077.P2496338823269089666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118723 (A060733 (n + 1)).toNat

end

end A385077.P2496338823269089666

/-!
# A385082: Sum of squared coefficients of Product_{i=0..n-1} 1+x^(2^i+1)+x^(2^(i+1)+1).

The programs for A385082, there is no canonical definition to state claims against.
-/

/-! ## A385082.P6648736492840134558

`A261585(A290924(n+1))`
-/

namespace A385082.P6648736492840134558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A290924 (n + 1)).toNat

end

end A385082.P6648736492840134558

/-!
# A385083: Expansion of e.g.f. cosh(x)*(x + x^2/2).

The programs for A385083, the canonical program `A385083.P17960936055995275838` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385083 has offset 0).

The definition of A385083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385083.P17960936055995275838

`C(n, gcd(2, n))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385083

/-- `C(n, gcd(2, n))` -/
def P17960936055995275838.Spec : Prop :=
  ∀ n, (P17960936055995275838.a n : ℤ) = A385083 n

theorem P17960936055995275838.correct : P17960936055995275838.Spec := by
  intro n
  simp only [A385083]

end A385083

/-! ## A385083.P17658715334320220850

`C(n, 2-n%2)`
-/

namespace A385083.P17658715334320220850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 - ((n % 2 : ℕ) : ℤ)).toNat

end

end A385083.P17658715334320220850

namespace A385083

/-- `C(n, 2-n%2)` -/
def P17658715334320220850.Spec : Prop :=
  ∀ n, (P17658715334320220850.a n : ℤ) = A385083 n

end A385083

/-! ## A385083.P16152070533405829213

`C(n, 2-and(1, n))`
-/

namespace A385083.P16152070533405829213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 - (Nat.land 1 n : ℤ)).toNat

end

end A385083.P16152070533405829213

namespace A385083

/-- `C(n, 2-and(1, n))` -/
def P16152070533405829213.Spec : Prop :=
  ∀ n, (P16152070533405829213.a n : ℤ) = A385083 n

end A385083

/-! ## A385083.P1287567113331380118

`C(n, -or(n, -2))`
-/

namespace A385083.P1287567113331380118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (-Int.lor (n : ℤ) (-2)).toNat

end

end A385083.P1287567113331380118

namespace A385083

/-- `C(n, -or(n, -2))` -/
def P1287567113331380118.Spec : Prop :=
  ∀ n, (P1287567113331380118.a n : ℤ) = A385083 n

end A385083

/-! ## A385083.P1925806086694228460

`C(n, char[2*n]+1)`
-/

namespace A385083.P1925806086694228460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A385083.P1925806086694228460

namespace A385083

/-- `C(n, char[2*n]+1)` -/
def P1925806086694228460.Spec : Prop :=
  ∀ n, (P1925806086694228460.a n : ℤ) = A385083 n

end A385083

/-! ## A385083.P7879182243341431650

`∑[n]-lcm(n, floor(n/2))`
-/

namespace A385083.P7879182243341431650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.lcm (n : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ)

end

end A385083.P7879182243341431650

namespace A385083

/-- `∑[n]-lcm(n, floor(n/2))` -/
def P7879182243341431650.Spec : Prop :=
  ∀ n, P7879182243341431650.a n = A385083 n

end A385083

/-! ## A385083.P10217505464927928169

`abs(lcm(n+1, ∑[n])-n²)`
-/

namespace A385083.P10217505464927928169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n ^ 2 : ℤ)|

end

end A385083.P10217505464927928169

namespace A385083

/-- `abs(lcm(n+1, ∑[n])-n²)` -/
def P10217505464927928169.Spec : Prop :=
  ∀ n, P10217505464927928169.a n = A385083 n

end A385083

/-! ## A385083.P5016931529761042401

`n/2*gcd(n-1, 2*and(1, n))`
-/

namespace A385083.P5016931529761042401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (Int.gcd ((n : ℤ) - 1) (2 * Nat.land 1 n : ℤ) : ℚ)

end

end A385083.P5016931529761042401

namespace A385083

/-- `n/2*gcd(n-1, 2*and(1, n))` -/
def P5016931529761042401.Spec : Prop :=
  ∀ n, P5016931529761042401.a n = (A385083 n : ℚ)

end A385083

/-! ## A385083.P2037601016322014200

`(n-gcd(a(n-1), a(n-2)))*n/2` with `a(0)=0, a(1)=1`
-/

namespace A385083.P2037601016322014200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℤ) : ℚ) * ((n : ℚ) / 2)

end

end A385083.P2037601016322014200

namespace A385083

/-- `(n-gcd(a(n-1), a(n-2)))*n/2` -/
def P2037601016322014200.Spec : Prop :=
  ∀ n, P2037601016322014200.a n = (A385083 n : ℚ)

end A385083

/-! ## A385083.P1549844208282687897

`∑[n]-A390255(n)`
-/

namespace A385083.P1549844208282687897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A390255 n

end

end A385083.P1549844208282687897

namespace A385083

/-- `∑[n]-A390255(n)` -/
def P1549844208282687897.Spec : Prop :=
  ∀ n, P1549844208282687897.a n = A385083 n

end A385083

/-! ## A385083.P12091536959928497492

`A065530(n)%A027379(n)`
-/

namespace A385083.P12091536959928497492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065530 n) (A027379 n)

end

end A385083.P12091536959928497492

namespace A385083

/-- `A065530(n)%A027379(n)` -/
def P12091536959928497492.Spec : Prop :=
  ∀ n, P12091536959928497492.a n = A385083 n

end A385083

/-! ## A385083.P7489236718345944189

`A129204(n)%A081347(n)`
-/

namespace A385083.P7489236718345944189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129204 n) (A081347 n)

end

end A385083.P7489236718345944189

namespace A385083

/-- `A129204(n)%A081347(n)` -/
def P7489236718345944189.Spec : Prop :=
  ∀ n, P7489236718345944189.a n = A385083 n

end A385083

/-! ## A385083.P11771995702874455492

`A065679(n)%A266221(n)`
-/

namespace A385083.P11771995702874455492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065679 n) (A266221 n)

end

end A385083.P11771995702874455492

namespace A385083

/-- `A065679(n)%A266221(n)` -/
def P11771995702874455492.Spec : Prop :=
  ∀ n, P11771995702874455492.a n = A385083 n

end A385083

/-! ## A385083.P10936863167160374147

`A240134(n+1)-(A237420(n)+A142150(n))`
-/

namespace A385083.P10936863167160374147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240134 (n + 1) - (A237420 n + A142150 n)

end

end A385083.P10936863167160374147

namespace A385083

/-- `A240134(n+1)-(A237420(n)+A142150(n))` -/
def P10936863167160374147.Spec : Prop :=
  ∀ n, P10936863167160374147.a n = A385083 n

end A385083

/-! ## A385083.P3924306049068800515

`A240134(n+1)-A142150(3*n)`
-/

namespace A385083.P3924306049068800515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240134 (n + 1) - A142150 (3 * n)

end

end A385083.P3924306049068800515

namespace A385083

/-- `A240134(n+1)-A142150(3*n)` -/
def P3924306049068800515.Spec : Prop :=
  ∀ n, P3924306049068800515.a n = A385083 n

end A385083

/-! ## A385083.P11332233261378999542

`A212303(n)/A089408(n)`
-/

namespace A385083.P11332233261378999542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 n : ℚ) / (A089408 n : ℚ)

end

end A385083.P11332233261378999542

namespace A385083

/-- `A212303(n)/A089408(n)` -/
def P11332233261378999542.Spec : Prop :=
  ∀ n, P11332233261378999542.a n = (A385083 n : ℚ)

end A385083

/-! ## A385083.P14726953112141884670

`A100071(n)/A241543(n)`
-/

namespace A385083.P14726953112141884670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 n : ℚ) / (A241543 n : ℚ)

end

end A385083.P14726953112141884670

namespace A385083

/-- `A100071(n)/A241543(n)` -/
def P14726953112141884670.Spec : Prop :=
  ∀ n, P14726953112141884670.a n = (A385083 n : ℚ)

end A385083

/-! ## A385083.P17863347605641824482

`A381534(n+1)-A128218(A128918(n))`
-/

namespace A385083.P17863347605641824482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381534 (n + 1) - A128218 (A128918 n).toNat

end

end A385083.P17863347605641824482

namespace A385083

/-- `A381534(n+1)-A128218(A128918(n))` -/
def P17863347605641824482.Spec : Prop :=
  ∀ n, P17863347605641824482.a n = A385083 n

end A385083

/-! ## A385083.P13902637178018258641

`A122433(A374004(n+1))`
-/

namespace A385083.P13902637178018258641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122433 (A374004 (n + 1)).toNat

end

end A385083.P13902637178018258641

namespace A385083

/-- `A122433(A374004(n+1))` -/
def P13902637178018258641.Spec : Prop :=
  ∀ n, P13902637178018258641.a n = A385083 n

end A385083

/-! ## A385083.P4335200960252166121

`A098158(A000982(n+1))`
-/

namespace A385083.P4335200960252166121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A000982 (n + 1)).toNat

end

end A385083.P4335200960252166121

namespace A385083

/-- `A098158(A000982(n+1))` -/
def P4335200960252166121.Spec : Prop :=
  ∀ n, P4335200960252166121.a n = A385083 n

end A385083

/-!
# A385085: a(n) = 2 * (3*n+2)^(n-1).

The programs for A385085, the canonical program `A385085.P12560886625132023276` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385085 has offset 0).

The definition of A385085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385085.P12560886625132023276

`2*(3*n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385085

/-- `2*(3*n+2)^(n-1)` -/
def P12560886625132023276.Spec : Prop :=
  ∀ n, P12560886625132023276.a n = (A385085 n : ℚ)

end A385085

/-! ## A385085.P16137563978042114214

`A396503(∑[n+1]+n)`
-/

namespace A385085.P16137563978042114214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396503 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A385085.P16137563978042114214

namespace A385085

/-- `A396503(∑[n+1]+n)` -/
def P16137563978042114214.Spec : Prop :=
  ∀ n, P16137563978042114214.a n = A385085 n

end A385085

/-!
# A385086: a(n) = 2 * (5*n+2)^(n-1).

The programs for A385086, the canonical program `A385086.P16889082911583328910` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385086 has offset 0).

The definition of A385086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385086.P16889082911583328910

`2*(5*n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385086

/-- `2*(5*n+2)^(n-1)` -/
def P16889082911583328910.Spec : Prop :=
  ∀ n, P16889082911583328910.a n = (A385086 n : ℚ)

end A385086

/-!
# A385088: G.f.: Sum_{k>=0} x^k * Product_{j=1..2*k} (1 + x^j)/(1 - x^j).

The programs for A385088, there is no canonical definition to state claims against.
-/

/-! ## A385088.P15889408427657343155

`A053229(A342528(n)%A259146(n+2))`
-/

namespace A385088.P15889408427657343155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (Int.tmod (A342528 n) (A259146 (n + 2))).toNat

end

end A385088.P15889408427657343155

/-! ## A385088.P626724463207099009

`A003056(A001523(n)*A023894(2*n+3))`
-/

namespace A385088.P626724463207099009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001523 n * A023894 (2 * n + 3)).toNat

end

end A385088.P626724463207099009

/-!
# A385089: G.f.: Sum_{k>=0} x^k * Product_{j=1..3*k} (1 + x^j)/(1 - x^j).

The programs for A385089, there is no canonical definition to state claims against.
-/

/-! ## A385089.P17884455518551353682

`A109599(A025589(n))`
-/

namespace A385089.P17884455518551353682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109599 (A025589 n).toNat

end

end A385089.P17884455518551353682

/-! ## A385089.P9787184233871795036

`A130821(A032908(n+2)-A250120(n))`
-/

namespace A385089.P9787184233871795036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (A032908 (n + 2) - A250120 n).toNat

end

end A385089.P9787184233871795036

/-! ## A385089.P17407468316861102558

`or(A000120(A181769(n)), A111133(3*n))`
-/

namespace A385089.P17407468316861102558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A181769 n).toNat) (A111133 (3 * n))

end

end A385089.P17407468316861102558

/-!
# A385090: G.f.: Sum_{k>=0} x^k * Product_{j=1..4*k} (1 + x^j)/(1 - x^j).

The programs for A385090, there is no canonical definition to state claims against.
-/

/-! ## A385090.P13974100965092213095

`A316355(A116753(n+1))`
-/

namespace A385090.P13974100965092213095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A116753 (n + 1)).toNat

end

end A385090.P13974100965092213095

/-! ## A385090.P4123134472570829898

`A316355(A294797(n+1))`
-/

namespace A385090.P4123134472570829898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A294797 (n + 1)).toNat

end

end A385090.P4123134472570829898

/-! ## A385090.P8260495589716644299

`A321578(A294798(n+1))`
-/

namespace A385090.P8260495589716644299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A294798 (n + 1)).toNat

end

end A385090.P8260495589716644299

/-! ## A385090.P15423345183009132038

`A321578(A294799(n+1))`
-/

namespace A385090.P15423345183009132038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A294799 (n + 1)).toNat

end

end A385090.P15423345183009132038

/-! ## A385090.P4459957037235002127

`A332745(record[A182660(n²)])`
-/

namespace A385090.P4459957037235002127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332745 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A385090.P4459957037235002127

/-!
# A385091: G.f.: Sum_{k>=0} x^k * Product_{j=1..5*k} (1 + x^j)/(1 - x^j).

The programs for A385091, there is no canonical definition to state claims against.
-/

/-! ## A385091.P15331184335951609226

`A316355(A116776(n+1))`
-/

namespace A385091.P15331184335951609226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A116776 (n + 1)).toNat

end

end A385091.P15331184335951609226

/-! ## A385091.P11807788760486708713

`A316355(A217528(n+1))`
-/

namespace A385091.P11807788760486708713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A217528 (n + 1)).toNat

end

end A385091.P11807788760486708713

/-!
# A385092: G.f.: Sum_{k>=0} x^k * Product_{j=1..6*k} (1 + x^j)/(1 - x^j).

The programs for A385092, there is no canonical definition to state claims against.
-/

/-! ## A385092.P11461120382293407058

`A373221(3*n)-A216231(A249517(n+1))`
-/

namespace A385092.P11461120382293407058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373221 (3 * n) - A216231 (A249517 (n + 1)).toNat

end

end A385092.P11461120382293407058

/-! ## A385092.P11033441651186623918

`A316355(A116745(n+1))`
-/

namespace A385092.P11033441651186623918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A116745 (n + 1)).toNat

end

end A385092.P11033441651186623918

/-! ## A385092.P9656818868607920881

`A316355(A116831(n+1))`
-/

namespace A385092.P9656818868607920881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A116831 (n + 1)).toNat

end

end A385092.P9656818868607920881

/-!
# A385094: Primes that are the sum of distinct positive cubes.

The programs for A385094, there is no canonical definition to state claims against.
-/

/-! ## A385094.P13974753452339349201

`p?[A003997(n+1)]`
-/

namespace A385094.P13974753452339349201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A385094.P13974753452339349201

/-! ## A385094.P15727600602812543074

`filter[A003997(n+1), A010051(#)]`
-/

namespace A385094.P15727600602812543074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A385094.P15727600602812543074

/-! ## A385094.P15357030672381900817

`∩[A000040(n+1), A003997(n+1)]`
-/

namespace A385094.P15357030672381900817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P15357030672381900817

/-! ## A385094.P12464128532135168514

`∩[A003997(n+1), A004139(n+1)]`
-/

namespace A385094.P12464128532135168514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P12464128532135168514

/-! ## A385094.P5237166583479120851

`∩[A003997(n+1), A045319(n+1)]`
-/

namespace A385094.P5237166583479120851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P5237166583479120851

/-! ## A385094.P11509650858092446823

`∩[A003997(n+1), A045344(n+1)]`
-/

namespace A385094.P11509650858092446823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P11509650858092446823

/-! ## A385094.P3051157876640655280

`∩[A003997(n+1), A051948(n+1)]`
-/

namespace A385094.P3051157876640655280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P3051157876640655280

/-! ## A385094.P15032540314179522529

`∩[A003997(n+1), A065091(n+1)]`
-/

namespace A385094.P15032540314179522529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P15032540314179522529

/-! ## A385094.P6744088307069322334

`∩[A003997(n+1), A065396(n+1)]`
-/

namespace A385094.P6744088307069322334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P6744088307069322334

/-! ## A385094.P11816061720098205987

`∩[A003997(n+1), A071621(n+1)]`
-/

namespace A385094.P11816061720098205987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P11816061720098205987

/-! ## A385094.P8922623583017673245

`∩[A003997(n+1), A078138(n+1)]`
-/

namespace A385094.P8922623583017673245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P8922623583017673245

/-! ## A385094.P14442280876105370839

`∩[A162792(n+1), A003997(n+1)]`
-/

namespace A385094.P14442280876105370839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P14442280876105370839

/-! ## A385094.P7852258952762934930

`∩[A003997(n+1), A087749(n+1)]`
-/

namespace A385094.P7852258952762934930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P7852258952762934930

/-! ## A385094.P14355752063306758273

`∩[A003997(n+1), A087489(n+1)]`
-/

namespace A385094.P14355752063306758273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385094.P14355752063306758273

/-!
# A385095: Numbers such that (-1)^Omega(k)*Moebius(espf(k)) > 0, where Moebius = A008683 and Omega = A001221, and espf(k) is the exponent of the smallest prime factor of k, with espf(1) = 1.

The programs for A385095, there is no canonical definition to state claims against.
-/

/-! ## A385095.P14402537059692098258

`filter[n+1, A385055(#)]`
-/

namespace A385095.P14402537059692098258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385055 (f1 j) = 1) n)

end

end A385095.P14402537059692098258

/-! ## A385095.P17707346153471381599

`lt[0, A385055(n+1)]+1`
-/

namespace A385095.P17707346153471381599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A385095.P17707346153471381599

/-! ## A385095.P9789254433483502517

`record[A008619(2*n)*A385055(n+1)]`
-/

namespace A385095.P9789254433483502517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A385055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385095.P9789254433483502517

/-!
# A385096: Numbers such that (-1)^Omega(k)*Moebius(espf(k)) < 0, where Moebius = A008683 and Omega = A001221, and espf(k) is the exponent of the smallest prime factor of k, with espf(1) = 1.

The programs for A385096, there is no canonical definition to state claims against.
-/

/-! ## A385096.P17764896345090885237

`filter[n+1, A384709(#)]`
-/

namespace A385096.P17764896345090885237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384709 (f1 j) = 1) n)

end

end A385096.P17764896345090885237

/-! ## A385096.P6544654000011903683

`eq[1, A384709(n+1)]+1`
-/

namespace A385096.P6544654000011903683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385096.P6544654000011903683

/-! ## A385096.P4544507040999437836

`eq[1, A384709(A028310(n))]`
-/

namespace A385096.P4544507040999437836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384709 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385096.P4544507040999437836

/-! ## A385096.P7691605840894058368

`lt[A347082(n+1), A323014(A102377(n)+1)]+1`
-/

namespace A385096.P7691605840894058368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A102377 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A385096.P7691605840894058368

/-! ## A385096.P7385582903274995923

`lt[A092673(n+1), A242931(A078840(3*n)+1)]+1`
-/

namespace A385096.P7385582903274995923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (A078840 (3 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A385096.P7385582903274995923

/-!
# A385097: Numbers k such that Moebius(espf(k)) < 0, where espf(k) is the exponent of the smallest prime factor of k, with espf(1) = 1.

The programs for A385097, there is no canonical definition to state claims against.
-/

/-! ## A385097.P13855123306904554511

`filter[A074661(n+1), A319710(#)]`
-/

namespace A385097.P13855123306904554511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A385097.P13855123306904554511

/-! ## A385097.P9307596575313540997

`filter[A390439(n+1), A319710(#)]`
-/

namespace A385097.P9307596575313540997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A385097.P9307596575313540997

/-! ## A385097.P14204485643589596168

`eq[2, A328673(A067029(n+1))]+1`
-/

namespace A385097.P14204485643589596168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 (A067029 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385097.P14204485643589596168

/-! ## A385097.P9773063562039189109

`∩[A074661(n+1), A283050(n+1)]`
-/

namespace A385097.P9773063562039189109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385097.P9773063562039189109

/-! ## A385097.P6457006183860585399

`∩[A074661(n+1), A371601(n+1)]`
-/

namespace A385097.P6457006183860585399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385097.P6457006183860585399

/-! ## A385097.P464860959394085525

`∩[A283050(n+1), A390439(n+1)]`
-/

namespace A385097.P464860959394085525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385097.P464860959394085525

/-! ## A385097.P10999486351488102180

`∩[A371601(n+1), A390439(n+1)]`
-/

namespace A385097.P10999486351488102180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385097.P10999486351488102180

/-!
# A385098: Numbers k such that Moebius(espf(k)) > 0, where espf(k) is the exponent of the smallest prime factor of k, with espf(1) = 1.

The programs for A385098, there is no canonical definition to state claims against.
-/

/-! ## A385098.P10005498079862301307

`∪[A247180(n+1), A001925(n)]`
-/

namespace A385098.P10005498079862301307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001925 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P10005498079862301307

/-! ## A385098.P9133563279315559807

`∪[A247180(n+1), A016779(n)]`
-/

namespace A385098.P9133563279315559807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P9133563279315559807

/-! ## A385098.P190473489856601897

`∪[A247180(n+1), A016994(n)]`
-/

namespace A385098.P190473489856601897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P190473489856601897

/-! ## A385098.P3989913282377919352

`∪[A247180(n+1), A055797(n)]`
-/

namespace A385098.P3989913282377919352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055797 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P3989913282377919352

/-! ## A385098.P12310800775688276158

`∪[A247180(n+1), A059306(n)]`
-/

namespace A385098.P12310800775688276158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P12310800775688276158

/-! ## A385098.P1256957146103666601

`∪[A247180(n+1), A081271(n)]`
-/

namespace A385098.P1256957146103666601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P1256957146103666601

/-! ## A385098.P13600500102971947736

`∪[A247180(n+1), A085473(n)]`
-/

namespace A385098.P13600500102971947736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P13600500102971947736

/-! ## A385098.P1649291966115606980

`∪[A247180(n+1), A093485(n)]`
-/

namespace A385098.P1649291966115606980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P1649291966115606980

/-! ## A385098.P14431973375049152201

`∪[A247180(n+1), A108538(n)]`
-/

namespace A385098.P14431973375049152201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108538 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P14431973375049152201

/-! ## A385098.P7365484911586489546

`∪[A247180(n+1), A191494(n)]`
-/

namespace A385098.P7365484911586489546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385098.P7365484911586489546

