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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A371901: Number of unlabeled Laman graphs on n vertices of degree at most 4.

The programs for A371901, there is no canonical definition to state claims against.
-/

/-! ## A371901.P13466500845860753943

`A054404(A327504(n)+2)`
-/

namespace A371901.P13466500845860753943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A327504 n + 2).toNat

end

end A371901.P13466500845860753943

/-! ## A371901.P18114558573389424206

`A255350(A103293(n+1)*A325534(n))`
-/

namespace A371901.P18114558573389424206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (A103293 (n + 1) * A325534 n).toNat

end

end A371901.P18114558573389424206

/-! ## A371901.P15606425293962171862

`A053873(A023422(n+3)-A172992(n+1))`
-/

namespace A371901.P15606425293962171862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (A023422 (n + 3) - A172992 (n + 1)).toNat

end

end A371901.P15606425293962171862

/-! ## A371901.P2341175429805908878

`A289494(A086853(n)+A014306(3*n+2))`
-/

namespace A371901.P2341175429805908878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A086853 n + A014306 (3 * n + 2)).toNat

end

end A371901.P2341175429805908878

/-!
# A371902: Positive integers whose binary form follows the periodic pattern 1101110: the concatenation of halftones 2 2 1 2 2 2 1, diminished by one, between successive pitches in the Ionian Major Scale.

The programs for A371902, there is no canonical definition to state claims against.
-/

/-! ## A371902.P7577081138196816292

`A189935(A253585(n+1))`
-/

namespace A371902.P7577081138196816292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189935 (A253585 (n + 1)).toNat

end

end A371902.P7577081138196816292

/-! ## A371902.P17320973604609118058

`A060277(n+1)+A022838(A000079(n))`
-/

namespace A371902.P17320973604609118058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060277 (n + 1) + A022838 (A000079 n).toNat

end

end A371902.P17320973604609118058

/-! ## A371902.P1431328969602386394

`or(A022838(A000079(n)), A190487(n+1))`
-/

namespace A371902.P1431328969602386394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022838 (A000079 n).toNat) (A190487 (n + 1))

end

end A371902.P1431328969602386394

/-! ## A371902.P7520762202862138755

`or(A022838(A000079(n)), A361162(n+1))`
-/

namespace A371902.P7520762202862138755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022838 (A000079 n).toNat) (A361162 (n + 1))

end

end A371902.P7520762202862138755

/-! ## A371902.P15537638365133582161

`or(A094386(n+1), A339255(A000079(n)))`
-/

namespace A371902.P15537638365133582161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094386 (n + 1)) (A339255 (A000079 n).toNat)

end

end A371902.P15537638365133582161

/-!
# A371903: Total number of levels in all Dyck paths of semilength n containing exactly 2 path nodes.

The programs for A371903, there is no canonical definition to state claims against.
-/

/-! ## A371903.P10561779345160940367

`A033099(A000108(n+2)-A001468(n))`
-/

namespace A371903.P10561779345160940367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (A000108 (n + 2) - A001468 n).toNat

end

end A371903.P10561779345160940367

/-! ## A371903.P1675809421507282384

`A277194(A240651(n+1))`
-/

namespace A371903.P1675809421507282384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A240651 (n + 1)).toNat

end

end A371903.P1675809421507282384

/-! ## A371903.P11154993450372709883

`record[A241069(A000041(n+1)+n)]`
-/

namespace A371903.P11154993450372709883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (A000041 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371903.P11154993450372709883

/-!
# A371905: Let k = 0 and let A007814(2*n) = m; If m > k then a(n) = k = k + m, otherwise a(n) = k = k - m.

The programs for A371905, there is no canonical definition to state claims against.
-/

/-! ## A371905.P16241007319361913050

`val(A260850(2*(n+1)), 2)`
-/

namespace A371905.P16241007319361913050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260850 (2 * (n + 1))).toNat 2

end

end A371905.P16241007319361913050

/-! ## A371905.P9101573284732844916

`A371908(n+2)%A013929(A250797(n+1))`
-/

namespace A371905.P9101573284732844916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371908 (n + 2)) (A013929 (A250797 (n + 1)).toNat)

end

end A371905.P9101573284732844916

/-! ## A371905.P11219804459206527285

`A371908(n+2)+A349053(A285406(n+1)-A281264(n+1))`
-/

namespace A371905.P11219804459206527285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371908 (n + 2) + A349053 (A285406 (n + 1) - A281264 (n + 1)).toNat

end

end A371905.P11219804459206527285

/-! ## A371905.P4365982945139229679

`gcd(A007814(A368187(n+1)), A371908(n+2))`
-/

namespace A371905.P4365982945139229679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A368187 (n + 1)).toNat) (A371908 (n + 2))

end

end A371905.P4365982945139229679

/-! ## A371905.P10221465834882149989

`A371908(n+2)%A190814(A054552(n))`
-/

namespace A371905.P10221465834882149989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371908 (n + 2)) (A190814 (A054552 n).toNat)

end

end A371905.P10221465834882149989

/-!
# A371906: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is odd.

The programs for A371906, the canonical program `A371906.P54646913033196370` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371906 has offset 1).

The definition of A371906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371906.P54646913033196370

`xor(a(n-1), A087207(n+1))` with `a(0)=0`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A371906

/-- `xor(a(n-1), A087207(n+1))` -/
def P54646913033196370.Spec : Prop :=
  ∀ n, P54646913033196370.a n = A371906 (n + 1)

theorem P54646913033196370.correct : P54646913033196370.Spec := by
  intro n
  simp only [A371906, Nat.add_sub_cancel]

end A371906

/-! ## A371906.P1746892929901366793

`A357215(n+1)-A371907(n+1)`
-/

namespace A371906.P1746892929901366793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357215 (n + 1) - A371907 (n + 1)

end

end A371906.P1746892929901366793

namespace A371906

/-- `A357215(n+1)-A371907(n+1)` -/
def P1746892929901366793.Spec : Prop :=
  ∀ n, P1746892929901366793.a n = A371906 (n + 1)

end A371906

/-! ## A371906.P13008418973239325891

`xor(A087207(A372007(n+1)), A357215(n+1))`
-/

namespace A371906.P13008418973239325891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087207 (A372007 (n + 1)).toNat) (A357215 (n + 1))

end

end A371906.P13008418973239325891

namespace A371906

/-- `xor(A087207(A372007(n+1)), A357215(n+1))` -/
def P13008418973239325891.Spec : Prop :=
  ∀ n, P13008418973239325891.a n = A371906 (n + 1)

end A371906

/-! ## A371906.P5099595098736641359

`xor(2^A230980(n+1)-1, A087207(A372007(n+1)))`
-/

namespace A371906.P5099595098736641359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A230980 (n + 1) : ℤ) - 1)) (A087207 (A372007 (n + 1)).toNat)

end

end A371906.P5099595098736641359

namespace A371906

/-- `xor(2^A230980(n+1)-1, A087207(A372007(n+1)))` -/
def P5099595098736641359.Spec : Prop :=
  ∀ n, P5099595098736641359.a n = A371906 (n + 1)

end A371906

/-! ## A371906.P11060094641407412073

`A032741(A034386(n+1))-A371907(n+1)`
-/

namespace A371906.P11060094641407412073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A034386 (n + 1)).toNat - A371907 (n + 1)

end

end A371906.P11060094641407412073

namespace A371906

/-- `A032741(A034386(n+1))-A371907(n+1)` -/
def P11060094641407412073.Spec : Prop :=
  ∀ n, P11060094641407412073.a n = A371906 (n + 1)

end A371906

/-!
# A371907: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is even.

The programs for A371907, the canonical program `A371907.P13863929953614005785` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371907 has offset 1).

The definition of A371907 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357215, A371906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371907.P13863929953614005785

`A357215(n+1)-A371906(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A371907

/-- `A357215(n+1)-A371906(n+1)` -/
def P13863929953614005785.Spec : Prop :=
  ∀ n, P13863929953614005785.a n = A371907 (n + 1)

theorem P13863929953614005785.correct : P13863929953614005785.Spec := by
  intro n
  simp only [A371907, Nat.add_sub_cancel]

end A371907

/-! ## A371907.P6879070215589294328

`xor(A000225(A230980(n+1)), A371906(n+1))`
-/

namespace A371907.P6879070215589294328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (A230980 (n + 1)).toNat) (A371906 (n + 1))

end

end A371907.P6879070215589294328

namespace A371907

/-- `xor(A000225(A230980(n+1)), A371906(n+1))` -/
def P6879070215589294328.Spec : Prop :=
  ∀ n, P6879070215589294328.a n = A371907 (n + 1)

end A371907

/-! ## A371907.P7636474095754845838

`∑{p}[A372007(n+1), A087207(#)]`
-/

namespace A371907.P7636474095754845838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A371907.P7636474095754845838

namespace A371907

/-- `∑{p}[A372007(n+1), A087207(#)]` -/
def P7636474095754845838.Spec : Prop :=
  ∀ n, P7636474095754845838.a n = A371907 (n + 1)

end A371907

/-! ## A371907.P9018213224453976812

`∑{p}[A034386(n+1)/A372000(n+1), A087207(#)]`
-/

namespace A371907.P9018213224453976812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A372000 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A087207 p

end

end A371907.P9018213224453976812

namespace A371907

/-- `∑{p}[A034386(n+1)/A372000(n+1), A087207(#)]` -/
def P9018213224453976812.Spec : Prop :=
  ∀ n, P9018213224453976812.a n = A371907 (n + 1)

end A371907

/-! ## A371907.P8552599624487193840

`A048675(A372007(n+1))`
-/

namespace A371907.P8552599624487193840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A372007 (n + 1)).toNat

end

end A371907.P8552599624487193840

namespace A371907

/-- `A048675(A372007(n+1))` -/
def P8552599624487193840.Spec : Prop :=
  ∀ n, P8552599624487193840.a n = A371907 (n + 1)

end A371907

/-!
# A371908: a(n) = 2-adic valuation of A008336(2*n).

The programs for A371908, there is no canonical definition to state claims against.
-/

/-! ## A371908.P12943434376351498905

`val(A008336(2*n+1), 2)`
-/

namespace A371908.P12943434376351498905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008336 (2 * n + 1)).toNat 2

end

end A371908.P12943434376351498905

/-! ## A371908.P13273417199712229044

`A007814(gcd(A000079(n+1), A008336(2*n+1)))`
-/

namespace A371908.P13273417199712229044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A000079 (n + 1)) (A008336 (2 * n + 1)))

end

end A371908.P13273417199712229044

/-! ## A371908.P2519099983404511237

`A061313(n+1)-A372840(A195504(n+1))`
-/

namespace A371908.P2519099983404511237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1) - A372840 (A195504 (n + 1)).toNat

end

end A371908.P2519099983404511237

/-!
# A371909: Number of divisors of the partial sums of A109890.

The programs for A371909, there is no canonical definition to state claims against.
-/

/-! ## A371909.P13969718860576973096

`∏{e}[A109735(n+1), A325044(#)]`
-/

namespace A371909.P13969718860576973096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A325044 (Nat.factorization (f1 n).natAbs p)

end

end A371909.P13969718860576973096

/-! ## A371909.P1323022234209250382

`A000005(A109735(n+1))`
-/

namespace A371909.P1323022234209250382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109735 (n + 1)).toNat

end

end A371909.P1323022234209250382

/-! ## A371909.P15474080012359564696

`A000005(∑[A109890(n+1)])`
-/

namespace A371909.P15474080012359564696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371909.P15474080012359564696

/-!
# A371911: Zeroless analog of tribonacci numbers.

The programs for A371911, there is no canonical definition to state claims against.
-/

/-! ## A371911.P7421085035631798541

`A000213(n)%A140278(A357358(n+3))`
-/

namespace A371911.P7421085035631798541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000213 n) (A140278 (A357358 (n + 3)).toNat)

end

end A371911.P7421085035631798541

/-!
# A371912: Maximum Zagreb index of maximal 3-degenerate graphs with n vertices.

The programs for A371912, the canonical program `A371912.P13597721911526984294` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371912 has offset 3).

The definition of A371912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371912.P13597721911526984294

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=12, a(1)=36, a(2)=66`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A371912

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13597721911526984294.Spec : Prop :=
  ∀ n, P13597721911526984294.a n = A371912 (n + 3)

theorem P13597721911526984294.correct : P13597721911526984294.Spec := by
  intro n
  simp only [A371912, Nat.add_sub_cancel]

end A371912

/-! ## A371912.P10530352587242168747

`6*(∑[n+3]-1)`
-/

namespace A371912.P10530352587242168747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A371912.P10530352587242168747

namespace A371912

/-- `6*(∑[n+3]-1)` -/
def P10530352587242168747.Spec : Prop :=
  ∀ n, P10530352587242168747.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P14451876243108688473

`∑[a(n-1)+6]` with `a(0)=12, a(1)=24`
-/

namespace A371912.P14451876243108688473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 24] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371912.P14451876243108688473

namespace A371912

/-- `∑[a(n-1)+6]` -/
def P14451876243108688473.Spec : Prop :=
  ∀ n, (P14451876243108688473.a n : ℤ) = A371912 (n + 3)

end A371912

/-! ## A371912.P11818429666559899173

`A141694(n)+A049450(n)`
-/

namespace A371912.P11818429666559899173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141694 n + A049450 n

end

end A371912.P11818429666559899173

namespace A371912

/-- `A141694(n)+A049450(n)` -/
def P11818429666559899173.Spec : Prop :=
  ∀ n, P11818429666559899173.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P118381212062838234

`A255842(n)+A132763(n)`
-/

namespace A371912.P118381212062838234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255842 n + A132763 n

end

end A371912.P118381212062838234

namespace A371912

/-- `A255842(n)+A132763(n)` -/
def P118381212062838234.Spec : Prop :=
  ∀ n, P118381212062838234.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P14393722064049843666

`A378569(n)+A242215(n)`
-/

namespace A371912.P14393722064049843666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378569 n + A242215 n

end

end A371912.P14393722064049843666

namespace A371912

/-- `A378569(n)+A242215(n)` -/
def P14393722064049843666.Spec : Prop :=
  ∀ n, P14393722064049843666.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P17983723140526690700

`A077588(n)+A063162(n+1)`
-/

namespace A371912.P17983723140526690700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + A063162 (n + 1)

end

end A371912.P17983723140526690700

namespace A371912

/-- `A077588(n)+A063162(n+1)` -/
def P17983723140526690700.Spec : Prop :=
  ∀ n, P17983723140526690700.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P12797427847824018131

`A166143(n+1)+A017653(n)`
-/

namespace A371912.P12797427847824018131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 1) + A017653 n

end

end A371912.P12797427847824018131

namespace A371912

/-- `A166143(n+1)+A017653(n)` -/
def P12797427847824018131.Spec : Prop :=
  ∀ n, P12797427847824018131.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P4742670140282956242

`A144390(n+1)+A106839(n)`
-/

namespace A371912.P4742670140282956242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (n + 1) + A106839 n

end

end A371912.P4742670140282956242

namespace A371912

/-- `A144390(n+1)+A106839(n)` -/
def P4742670140282956242.Spec : Prop :=
  ∀ n, P4742670140282956242.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P5722846474862964722

`A305074(n+1)+A049451(n)`
-/

namespace A371912.P5722846474862964722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1) + A049451 n

end

end A371912.P5722846474862964722

namespace A371912

/-- `A305074(n+1)+A049451(n)` -/
def P5722846474862964722.Spec : Prop :=
  ∀ n, P5722846474862964722.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P12739697319496978105

`A135453(n+1)-A045945(n)`
-/

namespace A371912.P12739697319496978105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (n + 1) - A045945 n

end

end A371912.P12739697319496978105

namespace A371912

/-- `A135453(n+1)-A045945(n)` -/
def P12739697319496978105.Spec : Prop :=
  ∀ n, P12739697319496978105.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P12460252988448164006

`A157446(n+1)-A387659(n)`
-/

namespace A371912.P12460252988448164006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157446 (n + 1) - A387659 n

end

end A371912.P12460252988448164006

namespace A371912

/-- `A157446(n+1)-A387659(n)` -/
def P12460252988448164006.Spec : Prop :=
  ∀ n, P12460252988448164006.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P1803252746041733048

`A304833(n+2)-A195819(n)`
-/

namespace A371912.P1803252746041733048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304833 (n + 2) - A195819 n

end

end A371912.P1803252746041733048

namespace A371912

/-- `A304833(n+2)-A195819(n)` -/
def P1803252746041733048.Spec : Prop :=
  ∀ n, P1803252746041733048.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P8321814731160921918

`A370238(n)+A341740(n+3)`
-/

namespace A371912.P8321814731160921918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370238 n + A341740 (n + 3)

end

end A371912.P8321814731160921918

namespace A371912

/-- `A370238(n)+A341740(n+3)` -/
def P8321814731160921918.Spec : Prop :=
  ∀ n, P8321814731160921918.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P5229868608822896993

`A372025(n+3)-A163758(n)`
-/

namespace A371912.P5229868608822896993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372025 (n + 3) - A163758 n

end

end A371912.P5229868608822896993

namespace A371912

/-- `A372025(n+3)-A163758(n)` -/
def P5229868608822896993.Spec : Prop :=
  ∀ n, P5229868608822896993.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P5217767753757741519

`A168235(n+1)-A054554(n+1)`
-/

namespace A371912.P5217767753757741519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168235 (n + 1) - A054554 (n + 1)

end

end A371912.P5217767753757741519

namespace A371912

/-- `A168235(n+1)-A054554(n+1)` -/
def P5217767753757741519.Spec : Prop :=
  ∀ n, P5217767753757741519.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P5690228212183269821

`A017341(n)+A049451(n)+A017341(n)`
-/

namespace A371912.P5690228212183269821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n + (A049451 n + A017341 n)

end

end A371912.P5690228212183269821

namespace A371912

/-- `A017341(n)+A049451(n)+A017341(n)` -/
def P5690228212183269821.Spec : Prop :=
  ∀ n, P5690228212183269821.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P12480138629980175321

`A008594(n+1)+A098603(n)+A000384(n)`
-/

namespace A371912.P12480138629980175321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) + (A098603 n + A000384 n)

end

end A371912.P12480138629980175321

namespace A371912

/-- `A008594(n+1)+A098603(n)+A000384(n)` -/
def P12480138629980175321.Spec : Prop :=
  ∀ n, P12480138629980175321.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P9510727334203524436

`A008594(n+1)+A140090(n)+A059845(n)`
-/

namespace A371912.P9510727334203524436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) + (A140090 n + A059845 n)

end

end A371912.P9510727334203524436

namespace A371912

/-- `A008594(n+1)+A140090(n)+A059845(n)` -/
def P9510727334203524436.Spec : Prop :=
  ∀ n, P9510727334203524436.a n = A371912 (n + 3)

end A371912

/-! ## A371912.P11953779735214043958

`A396288(n+1)+A056106(n)-A396289(n)`
-/

namespace A371912.P11953779735214043958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 (n + 1) + (A056106 n - A396289 n)

end

end A371912.P11953779735214043958

namespace A371912

/-- `A396288(n+1)+A056106(n)-A396289(n)` -/
def P11953779735214043958.Spec : Prop :=
  ∀ n, P11953779735214043958.a n = A371912 (n + 3)

end A371912

/-!
# A371914: G.f. A(x) satisfies A(x) = 1 - x/A(x)^3 * (1 - A(x) - A(x)^5).

The programs for A371914, there is no canonical definition to state claims against.
-/

/-! ## A371914.P13527770697495639915

`A232528(A261051(n))`
-/

namespace A371914.P13527770697495639915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232528 (A261051 n).toNat

end

end A371914.P13527770697495639915

/-! ## A371914.P12199378593885480261

`A354908(A215982(n+2))`
-/

namespace A371914.P12199378593885480261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354908 (A215982 (n + 2)).toNat

end

end A371914.P12199378593885480261

/-! ## A371914.P14077949221639597032

`A328195(A244491(n))+A118930(n)`
-/

namespace A371914.P14077949221639597032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A244491 n).toNat + A118930 n

end

end A371914.P14077949221639597032

/-!
# A371915: G.f. A(x) satisfies A(x) = 1 - x/A(x)^2 * (1 - A(x) - A(x)^5).

The programs for A371915, there is no canonical definition to state claims against.
-/

/-! ## A371915.P14633224576760100783

`A077113(A065097(n)-1)`
-/

namespace A371915.P14633224576760100783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (A065097 n - 1).toNat

end

end A371915.P14633224576760100783

/-! ## A371915.P17582157523245984974

`A077113(xor(1, A065097(n)))`
-/

namespace A371915.P17582157523245984974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (Int.xor 1 (A065097 n)).toNat

end

end A371915.P17582157523245984974

/-!
# A371919: Number of almost controllable simple graphs on n vertices.

The programs for A371919, there is no canonical definition to state claims against.
-/

/-! ## A371919.P2555807403472674269

`A352130(A384069(n))+A306346(n+1)`
-/

namespace A371919.P2555807403472674269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A384069 n).toNat + A306346 (n + 1)

end

end A371919.P2555807403472674269

/-! ## A371919.P6528415827080646155

`A241467(n+4)+A000225(A067659(n))`
-/

namespace A371919.P6528415827080646155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241467 (n + 4) + A000225 (A067659 n).toNat

end

end A371919.P6528415827080646155

/-! ## A371919.P16415553990408858018

`A241467(n+4)+A046051(A307730(n+1))`
-/

namespace A371919.P16415553990408858018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241467 (n + 4) + A046051 (A307730 (n + 1)).toNat

end

end A371919.P16415553990408858018

/-!
# A371921: The number of iterations of the map x -> A033880(x) starting at n until the a nonpositive number is reached, or 0 if this does not happen.

The programs for A371921, there is no canonical definition to state claims against.
-/

/-! ## A371921.P5761017495896152578

`A055642(A088722(n+1)*A277741(n+1))`
-/

namespace A371921.P5761017495896152578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A088722 (n + 1) * A277741 (n + 1)).toNat

end

end A371921.P5761017495896152578

/-! ## A371921.P12400873099800516945

`A055642(A264569(n+1)*A336917(n+1))`
-/

namespace A371921.P12400873099800516945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A264569 (n + 1) * A336917 (n + 1)).toNat

end

end A371921.P12400873099800516945

/-! ## A371921.P13932319955645218531

`gcd(A003274(A281116(n+1)), A364141(n+4))`
-/

namespace A371921.P13932319955645218531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003274 (A281116 (n + 1)).toNat) (A364141 (n + 4))

end

end A371921.P13932319955645218531

/-! ## A371921.P11870023548597106060

`A196563(A080224(n+1)*A107931(n+1))`
-/

namespace A371921.P11870023548597106060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A080224 (n + 1) * A107931 (n + 1)).toNat

end

end A371921.P11870023548597106060

/-! ## A371921.P2589319861719471164

`A001399(A063974(n+1)%A339849(2*(n+3)))`
-/

namespace A371921.P2589319861719471164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (Int.tmod (A063974 (n + 1)) (A339849 (2 * (n + 3)))).toNat

end

end A371921.P2589319861719471164

/-!
# A371922: Indices of records in A371921: numbers k such that A371921(k) > A371921(m) for all m < k.

The programs for A371922, there is no canonical definition to state claims against.
-/

/-! ## A371922.P14575834363689157258

`A074258(∑[A006082(3*n+1)])`
-/

namespace A371922.P14575834363689157258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006082 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371922.P14575834363689157258

/-!
# A371924: a(n) is the least b such that prime(n)-1 divides b!.

The programs for A371924, there is no canonical definition to state claims against.
-/

/-! ## A371924.P18242647073920803934

`A002034(A006093(n+1))`
-/

namespace A371924.P18242647073920803934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A006093 (n + 1)).toNat

end

end A371924.P18242647073920803934

/-! ## A371924.P7788252215841084424

`A002034(A000040(n+1)-1)`
-/

namespace A371924.P7788252215841084424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A000040 (n + 1) - 1).toNat

end

end A371924.P7788252215841084424

/-! ## A371924.P14545446435407746226

`A002034(A008578(n+2)-1)`
-/

namespace A371924.P14545446435407746226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A008578 (n + 2) - 1).toNat

end

end A371924.P14545446435407746226

/-! ## A371924.P9103238569742455153

`A002034(eq[1, A001222(n+1)])`
-/

namespace A371924.P9103238569742455153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371924.P9103238569742455153

/-! ## A371924.P5021671765689793311

`A002034(eq[2, A000005(n+1)])`
-/

namespace A371924.P5021671765689793311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371924.P5021671765689793311

/-! ## A371924.P2490070412687162682

`A002034(A060681(A060681(A001747(n+2))))`
-/

namespace A371924.P2490070412687162682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A060681 (A060681 (A001747 (n + 2)).toNat).toNat).toNat

end

end A371924.P2490070412687162682

/-!
# A371925: Numbers that are the sum of the final digits of the squarefree divisors of some positive integer.

The programs for A371925, there is no canonical definition to state claims against.
-/

/-! ## A371925.P7345614907875561415

`lt[A144722(A326478(n+1)), A355529(n+1)]`
-/

namespace A371925.P7345614907875561415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144722 (A326478 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371925.P7345614907875561415

/-! ## A371925.P15310359691080162007

`lt[A172115(A326478(n+1)), A277961(n+1)]`
-/

namespace A371925.P15310359691080162007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172115 (A326478 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371925.P15310359691080162007

/-! ## A371925.P3374007322782446565

`lt[A320322(A326478(n+1)), n]`
-/

namespace A371925.P3374007322782446565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320322 (A326478 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371925.P3374007322782446565

/-! ## A371925.P3078958181697766417

`lt[A281412(n), A293387(2*n)]`
-/

namespace A371925.P3078958181697766417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293387 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371925.P3078958181697766417

/-! ## A371925.P2920712132119942451

`lt[A326785(n+1)%3+2*n, A349342(3*(n+1))]`
-/

namespace A371925.P2920712132119942451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326785 (n + 1)) 3 + (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349342 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371925.P2920712132119942451

/-!
# A371927: Expansion of 1/(1 - x/(1 - 8*x^2)^(1/4)).

The programs for A371927, there is no canonical definition to state claims against.
-/

/-! ## A371927.P16350140720426898740

`A338316(A289452(n))`
-/

namespace A371927.P16350140720426898740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338316 (A289452 n).toNat

end

end A371927.P16350140720426898740

/-! ## A371927.P12741767821922787538

`A359544(A075220(n+1))`
-/

namespace A371927.P12741767821922787538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359544 (A075220 (n + 1)).toNat

end

end A371927.P12741767821922787538

/-! ## A371927.P484630838943604019

`A359544(A075221(n+1))`
-/

namespace A371927.P484630838943604019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359544 (A075221 (n + 1)).toNat

end

end A371927.P484630838943604019

/-! ## A371927.P9225954548006885762

`A177849(A274869(n+6))`
-/

namespace A371927.P9225954548006885762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A274869 (n + 6)).toNat

end

end A371927.P9225954548006885762

/-!
# A371931: Center column of elementary triangular automaton rule 62, starting from a lone 1 cell.

The programs for A371931, there is no canonical definition to state claims against.
-/

/-! ## A371931.P8098951964615587193

`A353859(A278043(2*n+3)^A329320(3*n+1))`
-/

namespace A371931.P8098951964615587193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 (SequenceMachineLib.roundAway ((A278043 (2 * n + 3) : ℚ) ^ (A329320 (3 * n + 1) : ℤ))).toNat

end

end A371931.P8098951964615587193

/-! ## A371931.P8238894272596073142

`A047999(A270831(n+1)+A078972(n+1))`
-/

namespace A371931.P8238894272596073142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A270831 (n + 1) + A078972 (n + 1)).toNat

end

end A371931.P8238894272596073142

/-! ## A371931.P13011238621524914001

`A047999(and(A005894(n), A005898(n+2)))`
-/

namespace A371931.P13011238621524914001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (Int.land (A005894 n) (A005898 (n + 2))).toNat

end

end A371931.P13011238621524914001

/-! ## A371931.P12479364572030689548

`A177444(lt[A049992(n+1), A355522(n+2)])`
-/

namespace A371931.P12479364572030689548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177444 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371931.P12479364572030689548

/-! ## A371931.P14732560761582751626

`A324732(gcd(A324677(3*(n+1)), A324699(2*n+5)))`
-/

namespace A371931.P14732560761582751626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (Int.gcd (A324677 (3 * (n + 1))) (A324699 (2 * n + 5)))

end

end A371931.P14732560761582751626

/-!
# A371933: a(n) = 20*log_10(n) rounded to the nearest integer.

The programs for A371933, there is no canonical definition to state claims against.
-/

/-! ## A371933.P7277268410251122090

`round(A004223(n+1)/5)`
-/

namespace A371933.P7277268410251122090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004223 (n + 1) : ℚ) / 5)

end

end A371933.P7277268410251122090

/-! ## A371933.P8671171197992641026

`round(A004225(n+1)/50)`
-/

namespace A371933.P8671171197992641026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004225 (n + 1) : ℚ) / 50)

end

end A371933.P8671171197992641026

/-! ## A371933.P10336599755038220344

`A004220((n+1)²)`
-/

namespace A371933.P10336599755038220344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004220 ((n + 1) ^ 2)

end

end A371933.P10336599755038220344

/-! ## A371933.P8073042017417124061

`A358700(A234729(n+1))`
-/

namespace A371933.P8073042017417124061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358700 (A234729 (n + 1)).toNat

end

end A371933.P8073042017417124061

/-!
# A371936: Decimal expansion of Sum_{k>=0} (-1)^k / (2*(k+1)*(2*k+1)!).

The programs for A371936, there is no canonical definition to state claims against.
-/

/-! ## A371936.P2295020885480674727

`9-A049470(n)`
-/

namespace A371936.P2295020885480674727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A049470 n

end

end A371936.P2295020885480674727

/-!
# A371939: Decimal expansion of Sum_{k>=0} (-1)^k (k+1)! / (2k)!.

The programs for A371939, there is no canonical definition to state claims against.
-/

/-! ## A371939.P5553288662013853714

`9-A371947(n+2)`
-/

namespace A371939.P5553288662013853714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A371947 (n + 2 + 1)

end

end A371939.P5553288662013853714

/-!
# A371943: Number of permutations that end with a consecutive pattern 123, and avoid consecutive patterns 123 and 213 elsewhere.

The programs for A371943, the canonical program `A371943.P7720430548521005496` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371943 has offset 0).

The definition of A371943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371943.P7720430548521005496

`∏[n/a(n-1)+1]-∏[(n-1)/a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A371943

/-- `∏[n/a(n-1)+1]-∏[(n-1)/a(n-1)+1]` -/
def P7720430548521005496.Spec : Prop :=
  ∀ n, P7720430548521005496.a n = (A371943 n : ℚ)

end A371943

/-! ## A371943.P16984040891140289375

`A085854(A394137(n+1))`
-/

namespace A371943.P16984040891140289375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 (A394137 (n + 1)).toNat

end

end A371943.P16984040891140289375

namespace A371943

/-- `A085854(A394137(n+1))` -/
def P16984040891140289375.Spec : Prop :=
  ∀ n, P16984040891140289375.a n = A371943 n

end A371943

/-! ## A371943.P4065349848707837647

`A103293(n)-A196564(A335703(2*n))`
-/

namespace A371943.P4065349848707837647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103293 n - A196564 (A335703 (2 * n)).toNat

end

end A371943.P4065349848707837647

namespace A371943

/-- `A103293(n)-A196564(A335703(2*n))` -/
def P4065349848707837647.Spec : Prop :=
  ∀ n, P4065349848707837647.a n = A371943 n

end A371943

/-! ## A371943.P12099628137015252260

`A350841(A175256(n+1))%A143546(n)`
-/

namespace A371943.P12099628137015252260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350841 (A175256 (n + 1)).toNat) (A143546 n)

end

end A371943.P12099628137015252260

namespace A371943

/-- `A350841(A175256(n+1))%A143546(n)` -/
def P12099628137015252260.Spec : Prop :=
  ∀ n, P12099628137015252260.a n = A371943 n

end A371943

/-!
# A371954: Triangle read by rows where T(n,k) is the number of integer partitions of n that can be partitioned into k multisets with equal sums (k-quanimous).

The programs for A371954, there is no canonical definition to state claims against.
-/

/-! ## A371954.P4480266169751136874

`A325678(A192099(n+1)*A372722(n))`
-/

namespace A371954.P4480266169751136874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A192099 (n + 1) * A372722 n).toNat

end

end A371954.P4480266169751136874

/-! ## A371954.P2993438915654193377

`A363048(n)%A054352(A214943(n+2))`
-/

namespace A371954.P2993438915654193377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363048 n) (A054352 (A214943 (n + 2)).toNat)

end

end A371954.P2993438915654193377

/-! ## A371954.P3224004361995199120

`A256130(n)%A001222(A227303(n+3))`
-/

namespace A371954.P3224004361995199120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256130 n) (A001222 (A227303 (n + 3)).toNat)

end

end A371954.P3224004361995199120

/-! ## A371954.P8390177955744883379

`A374758(xor(A268115(n+1), A374748(n+1)))`
-/

namespace A371954.P8390177955744883379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (Int.xor (A268115 (n + 1)) (A374748 (n + 1))).toNat

end

end A371954.P8390177955744883379

/-! ## A371954.P15821235547706809282

`A363048(n)-A010054(A151797(3*n+4))`
-/

namespace A371954.P15821235547706809282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363048 n - A010054 (A151797 (3 * n + 4)).toNat

end

end A371954.P15821235547706809282

/-!
# A371955: Numbers with triquanimous prime indices.

The programs for A371955, there is no canonical definition to state claims against.
-/

/-! ## A371955.P5129633936295508360

`∩[A096679(n+1), A006501(n)]`
-/

namespace A371955.P5129633936295508360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371955.P5129633936295508360

/-!
# A371956: Number of non-biquanimous compositions of 2n.

The programs for A371956, there is no canonical definition to state claims against.
-/

/-! ## A371956.P6995463654751294519

`ceil(2^(2*n-1))-A064914(n)`
-/

namespace A371956.P6995463654751294519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉ - A064914 n

end

end A371956.P6995463654751294519

/-! ## A371956.P330749323700649087

`A121704(n+1)-A304382(A046413(n+1))`
-/

namespace A371956.P330749323700649087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121704 (n + 1) - A304382 (A046413 (n + 1)).toNat

end

end A371956.P330749323700649087

/-!
# A371958: The smallest number k that has a factorization k = f1*f2*...*fr where the numbers k, f1, f2, ..., fr together contain every number from 0 to n, without overlap, as substrings.

The programs for A371958, there is no canonical definition to state claims against.
-/

/-! ## A371958.P13798600273255904795

`A010686(A347016(n))*A056993(n+3)`
-/

namespace A371958.P13798600273255904795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (A347016 n).toNat * A056993 (n + 3)

end

end A371958.P13798600273255904795

/-!
# A371959: For any positive integer n with binary expansion (b_1, ..., b_w) (where b_1 = 1), the binary expansion of a(n) is (c_1, ..., c_w) with c_k = (Sum_{i = 1..ceiling(k/2)} b_i * b_{k + 1 - i}) mod 2 for any k = 1..w; a(0) = 0.

The programs for A371959, there is no canonical definition to state claims against.
-/

/-! ## A371959.P15904292237054601472

`A154446(A154435(n))%A345919(3*n+4)`
-/

namespace A371959.P15904292237054601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154446 (A154435 n).toNat) (A345919 (3 * n + 4))

end

end A371959.P15904292237054601472

/-!
# A371960: Inverse permutation to A371959.

The programs for A371960, there is no canonical definition to state claims against.
-/

/-! ## A371960.P14270146951635606043

`A154436(A154445(n))%A345919(3*n+4)`
-/

namespace A371960.P14270146951635606043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154436 (A154445 n).toNat) (A345919 (3 * n + 4))

end

end A371960.P14270146951635606043

/-!
# A371962: Inverse permutation to A371961.

The programs for A371962, there is no canonical definition to state claims against.
-/

/-! ## A371962.P2855722256663131306

`A154445(A381839(n))%A177968(3*n+2)`
-/

namespace A371962.P2855722256663131306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154445 (A381839 n).toNat) (A177968 (3 * n + 2))

end

end A371962.P2855722256663131306

/-!
# A371963: a(n) is the sum of all valleys in the set of Catalan words of length n.

The programs for A371963, the canonical program `A371963.P2095683867298296730` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371963 has offset 0).

The definition of A371963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371963.P2645497883801236947

`A371964(n+1)-A371965(n)`
-/

namespace A371963.P2645497883801236947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371964 (n + 1) - A371965 n

end

end A371963.P2645497883801236947

namespace A371963

/-- `A371964(n+1)-A371965(n)` -/
def P2645497883801236947.Spec : Prop :=
  ∀ n, P2645497883801236947.a n = A371963 n

end A371963

/-! ## A371963.P2095683867298296730

`A024718(n)-A189176(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A371963

/-- `A024718(n)-A189176(n)` -/
def P2095683867298296730.Spec : Prop :=
  ∀ n, P2095683867298296730.a n = A371963 n

theorem P2095683867298296730.correct : P2095683867298296730.Spec := by
  intro n
  simp only [A371963]

end A371963

/-! ## A371963.P18218920518423508609

`A279561(n+1)-(A371965(n)+A000984(n))`
-/

namespace A371963.P18218920518423508609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 (n + 1) - (A371965 n + A000984 n)

end

end A371963.P18218920518423508609

namespace A371963

/-- `A279561(n+1)-(A371965(n)+A000984(n))` -/
def P18218920518423508609.Spec : Prop :=
  ∀ n, P18218920518423508609.a n = A371963 n

end A371963

/-! ## A371963.P8077805724062338243

`A024718(n+1)%A088218(n)`
-/

namespace A371963.P8077805724062338243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024718 (n + 1)) (A088218 n)

end

end A371963.P8077805724062338243

namespace A371963

/-- `A024718(n+1)%A088218(n)` -/
def P8077805724062338243.Spec : Prop :=
  ∀ n, P8077805724062338243.a n = A371963 n

end A371963

/-! ## A371963.P11304136381787964068

`∑[C(comp[2*(n+2)], n+1)]`
-/

namespace A371963.P11304136381787964068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371963.P11304136381787964068

namespace A371963

/-- `∑[C(comp[2*(n+2)], n+1)]` -/
def P11304136381787964068.Spec : Prop :=
  ∀ n, (P11304136381787964068.a n : ℤ) = A371963 n

end A371963

/-!
# A371964: a(n) is the sum of all symmetric valleys in the set of Catalan words of length n.

The programs for A371964, the canonical program `A371964.P14450817847367118499` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371964 has offset 0).

The definition of A371964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371964.P14450817847367118499

`A279561(n)%A275324(A004275(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A371964

/-- `A279561(n)%A275324(A004275(n))` -/
def P14450817847367118499.Spec : Prop :=
  ∀ n, P14450817847367118499.a n = A371964 n

theorem P14450817847367118499.correct : P14450817847367118499.Spec := by
  intro n
  simp only [A371964]

end A371964

/-! ## A371964.P16573002467503929006

`A079071(∑[4*a(n-1)])` with `a(0)=0, a(1)=3, a(2)=2, a(3)=10`
-/

namespace A371964.P16573002467503929006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 10] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371964.P16573002467503929006

namespace A371964

/-- `A079071(∑[4*a(n-1)])` -/
def P16573002467503929006.Spec : Prop :=
  ∀ n, P16573002467503929006.a n = A371964 n

end A371964

/-! ## A371964.P13377289123560021993

`A079071(A163834(n))`
-/

namespace A371964.P13377289123560021993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A163834 n).toNat

end

end A371964.P13377289123560021993

namespace A371964

/-- `A079071(A163834(n))` -/
def P13377289123560021993.Spec : Prop :=
  ∀ n, P13377289123560021993.a n = A371964 n

end A371964

/-! ## A371964.P7603914430150121961

`A085860(A272686(n))`
-/

namespace A371964.P7603914430150121961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A272686 n).toNat

end

end A371964.P7603914430150121961

namespace A371964

/-- `A085860(A272686(n))` -/
def P7603914430150121961.Spec : Prop :=
  ∀ n, P7603914430150121961.a n = A371964 n

end A371964

/-!
# A371965: a(n) is the sum of all peaks in the set of Catalan words of length n.

The programs for A371965, the canonical program `A371965.P13381731300050303611` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371965 has offset 0).

The definition of A371965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371965.P13381731300050303611

`A371964(n+1)-A371963(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A371965

/-- `A371964(n+1)-A371963(n)` -/
def P13381731300050303611.Spec : Prop :=
  ∀ n, P13381731300050303611.a n = A371965 n

theorem P13381731300050303611.correct : P13381731300050303611.Spec := by
  intro n
  simp only [A371965]

end A371965

/-! ## A371965.P15947385944277285614

`A029651(n)-A006134(n)`
-/

namespace A371965.P15947385944277285614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A006134 n

end

end A371965.P15947385944277285614

namespace A371965

/-- `A029651(n)-A006134(n)` -/
def P15947385944277285614.Spec : Prop :=
  ∀ n, P15947385944277285614.a n = A371965 n

end A371965

/-! ## A371965.P2483416115983385786

`A281593(n)-A088218(n)`
-/

namespace A371965.P2483416115983385786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281593 n - A088218 n

end

end A371965.P2483416115983385786

namespace A371965

/-- `A281593(n)-A088218(n)` -/
def P2483416115983385786.Spec : Prop :=
  ∀ n, P2483416115983385786.a n = A371965 n

end A371965

/-! ## A371965.P9731419852822048977

`A050168(2*n)-∑[A001405(2*n)]`
-/

namespace A371965.P9731419852822048977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371965.P9731419852822048977

namespace A371965

/-- `A050168(2*n)-∑[A001405(2*n)]` -/
def P9731419852822048977.Spec : Prop :=
  ∀ n, P9731419852822048977.a n = A371965 n

end A371965

/-! ## A371965.P16129350072072141021

`∑[A191529(2*n+1)]-A191529(2*n+1)`
-/

namespace A371965.P16129350072072141021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A191529 (2 * n + 1)

end

end A371965.P16129350072072141021

namespace A371965

/-- `∑[A191529(2*n+1)]-A191529(2*n+1)` -/
def P16129350072072141021.Spec : Prop :=
  ∀ n, P16129350072072141021.a n = A371965 n

end A371965

/-!
# A371966: Largest number reachable starting from 1 and taking n steps either doubling or doubling+reversing.

The programs for A371966, there is no canonical definition to state claims against.
-/

/-! ## A371966.P16416484226842668042

`A068637(2*a(n-1))` with `a(0)=1`
-/

namespace A371966.P16416484226842668042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068637 (2 * a (n - 1)).toNat

end

end A371966.P16416484226842668042

/-! ## A371966.P7631496259407611073

`A068637(A036447(n))`
-/

namespace A371966.P7631496259407611073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068637 (A036447 n).toNat

end

end A371966.P7631496259407611073

/-! ## A371966.P5160534739747152073

`A068637(A095197(n+1))`
-/

namespace A371966.P5160534739747152073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068637 (A095197 (n + 1)).toNat

end

end A371966.P5160534739747152073

/-! ## A371966.P5399134450816667759

`A068637(A005843(a(n-1)))` with `a(0)=1`
-/

namespace A371966.P5399134450816667759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068637 (A005843 (a (n - 1)).toNat).toNat

end

end A371966.P5399134450816667759

/-!
# A371968: Numbers k that are not the sum of distinct squares that do not divide k.

The programs for A371968, there is no canonical definition to state claims against.
-/

/-! ## A371968.P17629213098245791380

`eq[0, A294266(n)]`
-/

namespace A371968.P17629213098245791380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371968.P17629213098245791380

/-! ## A371968.P2197080979064711679

`record[gcd(A028310(n), A294266(n))]`
-/

namespace A371968.P2197080979064711679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A294266 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371968.P2197080979064711679

/-! ## A371968.P16244194799985161472

`lt[A102113(A294266(n)+1), 1]`
-/

namespace A371968.P16244194799985161472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102113 (A294266 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P16244194799985161472

/-! ## A371968.P2747962860151617147

`lt[A196065(A294266(n)+1), 1]`
-/

namespace A371968.P2747962860151617147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196065 (A294266 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P2747962860151617147

/-! ## A371968.P11712232993397639478

`lt[A267116(A294266(n)+1), 1]`
-/

namespace A371968.P11712232993397639478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A294266 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P11712232993397639478

/-! ## A371968.P11962063259165825670

`lt[A000041(A294266(n)+1), 2]`
-/

namespace A371968.P11962063259165825670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A294266 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P11962063259165825670

/-! ## A371968.P13432629378259787294

`lt[A001318(A294266(n)+1), 2]`
-/

namespace A371968.P13432629378259787294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A294266 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P13432629378259787294

/-! ## A371968.P2886016605697330388

`lt[A090801(A294266(n)+3), 16]`
-/

namespace A371968.P2886016605697330388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (A294266 n + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P2886016605697330388

/-! ## A371968.P9308788011238926776

`lt[A008574(n)*A294266(n), n]`
-/

namespace A371968.P9308788011238926776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n * A294266 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P9308788011238926776

/-! ## A371968.P1541496624939133000

`lt[A023902(n)*A294266(n), n]`
-/

namespace A371968.P1541496624939133000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023902 n * A294266 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371968.P1541496624939133000

/-!
# A371970: Exponents k such that the binary expansion of 3^k has an even number of ones.

The programs for A371970, there is no canonical definition to state claims against.
-/

/-! ## A371970.P8852925987883860030

`eq[2, gcd(2, A011754(n))]`
-/

namespace A371970.P8852925987883860030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A011754 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371970.P8852925987883860030

/-! ## A371970.P16988749026996757415

`eq[2, A020639(A011754(n))]`
-/

namespace A371970.P16988749026996757415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371970.P16988749026996757415

/-! ## A371970.P1340709459780989198

`lt[A000120(n), A027656(A011754(n))]`
-/

namespace A371970.P1340709459780989198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371970.P1340709459780989198

/-! ## A371970.P10222027312116800391

`lt[A010060(n), A027656(A011754(n))]`
-/

namespace A371970.P10222027312116800391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371970.P10222027312116800391

/-! ## A371970.P883561087416725387

`lt[A049759(n+1), A027656(A011754(n))]`
-/

namespace A371970.P883561087416725387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371970.P883561087416725387

/-! ## A371970.P17528683259330143941

`lt[A351469(n+2), A027656(A011754(n))]`
-/

namespace A371970.P17528683259330143941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351469 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371970.P17528683259330143941

/-! ## A371970.P18095169401295979169

`eq[A000035(A011754(n)), A166589(3*(n+1))]`
-/

namespace A371970.P18095169401295979169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A011754 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371970.P18095169401295979169

/-! ## A371970.P8666382479520984032

`lt[A000007(n), A140167(A011754(n))]`
-/

namespace A371970.P8666382479520984032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371970.P8666382479520984032

/-! ## A371970.P17958783241371149790

`lt[A191822(n+1), A140167(A011754(n))]`
-/

namespace A371970.P17958783241371149790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371970.P17958783241371149790

/-! ## A371970.P8953622325795577704

`lt[A084938(3*n), A140167(A011754(n))]`
-/

namespace A371970.P8953622325795577704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140167 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371970.P8953622325795577704

/-!
# A371972: a(n) is the number of distinct areas of triangles with integer sides whose largest side is n.

The programs for A371972, there is no canonical definition to state claims against.
-/

/-! ## A371972.P2123450299642562511

`∑[∑[A059841(A052057(n+1))]]`
-/

namespace A371972.P2123450299642562511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A052057 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371972.P2123450299642562511

/-! ## A371972.P3806195726428991623

`∑[A325678(A212661(n+3))+1]`
-/

namespace A371972.P3806195726428991623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A212661 (n + 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371972.P3806195726428991623

/-! ## A371972.P16237790657698551769

`∑[∑[A074937(A003151(2*n+1))]]`
-/

namespace A371972.P16237790657698551769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074937 (A003151 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371972.P16237790657698551769

/-! ## A371972.P9637721513490822144

`∑[∑[A131078(A342524(3*(n+1)))]]`
-/

namespace A371972.P9637721513490822144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (A342524 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371972.P9637721513490822144

/-! ## A371972.P16946454516627127969

`A003056(A362607(n+2)+A001401(3*n))`
-/

namespace A371972.P16946454516627127969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A362607 (n + 2) + A001401 (3 * n)).toNat

end

end A371972.P16946454516627127969

/-!
# A371973: a(n) is the number of distinct areas > 0 of triangles with integer sides and perimeter n.

The programs for A371973, there is no canonical definition to state claims against.
-/

/-! ## A371973.P8024503759954259448

`A266755(n)-A380418(A129900(n+1))`
-/

namespace A371973.P8024503759954259448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A380418 (A129900 (n + 1)).toNat

end

end A371973.P8024503759954259448

/-! ## A371973.P17002591709573383289

`A266755(n)-A240329(A233155(n+1))`
-/

namespace A371973.P17002591709573383289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A240329 (A233155 (n + 1)).toNat

end

end A371973.P17002591709573383289

/-! ## A371973.P9968210595336265072

`A266755(n)-A025441(A379624(3*n+1))`
-/

namespace A371973.P9968210595336265072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A025441 (A379624 (3 * n + 1)).toNat

end

end A371973.P9968210595336265072

/-!
# A371974: For any positive integer n with binary expansion (b_1, ..., b_w) (where b_1 = 1), the binary expansion of a(n) is (c_1, ..., c_w) with c_k = (Sum_{i = 1 mod (w+1-k)} b_i) mod 2 for k = 1..w; a(0) = 0.

The programs for A371974, there is no canonical definition to state claims against.
-/

/-! ## A371974.P6333753485367287997

`A234024(A234026(n))%A139254(2*n+3)`
-/

namespace A371974.P6333753485367287997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234024 (A234026 n).toNat) (A139254 (2 * n + 3))

end

end A371974.P6333753485367287997

/-! ## A371974.P4729546847364089592

`or(A341911(n), A350386(A104880(n)))`
-/

namespace A371974.P4729546847364089592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A341911 n) (A350386 (A104880 n).toNat)

end

end A371974.P4729546847364089592

/-!
# A371975: Inverse permutation to A371974.

The programs for A371975, there is no canonical definition to state claims against.
-/

/-! ## A371975.P10351183579569700756

`A234025(A234024(n))%A179518(n+1)`
-/

namespace A371975.P10351183579569700756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234025 (A234024 n).toNat) (A179518 (n + 1))

end

end A371975.P10351183579569700756

/-! ## A371975.P11158301468989313290

`A234025(A234024(n)%A380660(3*(n+1)))`
-/

namespace A371975.P11158301468989313290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (Int.tmod (A234024 n) (A380660 (3 * (n + 1)))).toNat

end

end A371975.P11158301468989313290

/-! ## A371975.P6185103766179056715

`A234025(A234024(n)%A234019(n+5))`
-/

namespace A371975.P6185103766179056715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (Int.tmod (A234024 n) (A234019 (n + 5))).toNat

end

end A371975.P6185103766179056715

/-!
# A371976: For any nonnegative integer n with binary expansion Sum_{i >= 0} b_i * 2^i, the binary expansion of a(n) is Sum_{i >= 0} c_i * 2^i with c_i = (Sum_{k > 0} b_{k*(i+1)-1}) mod 2 for any i >= 0.

The programs for A371976, there is no canonical definition to state claims against.
-/

/-! ## A371976.P12632375690969808389

`A371977(A371977(A371977(n)))`
-/

namespace A371976.P12632375690969808389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371977 (A371977 (A371977 n).toNat).toNat

end

end A371976.P12632375690969808389

/-!
# A371977: Inverse permutation to A371976.

The programs for A371977, there is no canonical definition to state claims against.
-/

/-! ## A371977.P8500694324075470126

`A371976(A371976(A371976(n)))`
-/

namespace A371977.P8500694324075470126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371976 (A371976 (A371976 n).toNat).toNat

end

end A371977.P8500694324075470126

/-! ## A371977.P7504560273785624482

`xor(A143579(n), A143594(A143571(n)))`
-/

namespace A371977.P7504560273785624482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143579 n) (A143594 (A143571 n).toNat)

end

end A371977.P7504560273785624482

/-! ## A371977.P7985531231180748322

`A253315(A261283(n)+A000079(n))`
-/

namespace A371977.P7985531231180748322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A261283 n + A000079 n).toNat

end

end A371977.P7985531231180748322

/-! ## A371977.P14906075532218607905

`A253315(xor(A000079(n), A261283(n)))`
-/

namespace A371977.P14906075532218607905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (Int.xor (A000079 n) (A261283 n)).toNat

end

end A371977.P14906075532218607905

/-! ## A371977.P3541919108579701891

`A253315(A253315(2*n+1)+A000079(n))`
-/

namespace A371977.P3541919108579701891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A253315 (2 * n + 1) + A000079 n).toNat

end

end A371977.P3541919108579701891

/-!
# A371978: Number of ways of placing n non-attacking wazirs on a 3 X n board.

The programs for A371978, there is no canonical definition to state claims against.
-/

/-! ## A371978.P17010136384965179158

`A371967(A331952(n+1))`
-/

namespace A371978.P17010136384965179158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371967 (A331952 (n + 1)).toNat

end

end A371978.P17010136384965179158

/-! ## A371978.P8679712424870254966

`A371967(A006578(n)+n)`
-/

namespace A371978.P8679712424870254966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371967 (A006578 n + (n : ℤ)).toNat

end

end A371978.P8679712424870254966

/-! ## A371978.P8080197926995847378

`A277193(A003462(n))+A103662(n)`
-/

namespace A371978.P8080197926995847378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A003462 n).toNat + A103662 n

end

end A371978.P8080197926995847378

/-!
# A371979: Number of ways of placing k non-attacking wazirs on a 3 X n board, where k is chosen so as to maximize this number.

The programs for A371979, there is no canonical definition to state claims against.
-/

/-! ## A371979.P5100883314929236962

`A337327(A150970(n+1))`
-/

namespace A371979.P5100883314929236962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337327 (A150970 (n + 1)).toNat

end

end A371979.P5100883314929236962

/-! ## A371979.P2966057761848021342

`A052275((n+1)/2^val(n+1, 2)*A320351(2*n+1))`
-/

namespace A371979.P2966057761848021342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A320351 (2 * n + 1) : ℚ))).toNat

end

end A371979.P2966057761848021342

/-!
# A371980: Sophie Germain primes p such that 4*p + 3 is a composite number.

The programs for A371980, there is no canonical definition to state claims against.
-/

/-! ## A371980.P11134070898731822962

`eq[2, A339579(n+1)]`
-/

namespace A371980.P11134070898731822962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371980.P11134070898731822962

/-! ## A371980.P17980840486822631547

`floor(A059452(n+1)/2)`
-/

namespace A371980.P17980840486822631547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059452 (n + 1) : ℚ) / 2⌋

end

end A371980.P17980840486822631547

/-! ## A371980.P14527017692925719674

`eq[2, A063377(n+1)]+1`
-/

namespace A371980.P14527017692925719674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371980.P14527017692925719674

/-! ## A371980.P4903159599566499644

`A002616(A059452(n+1))`
-/

namespace A371980.P4903159599566499644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A059452 (n + 1)).toNat

end

end A371980.P4903159599566499644

/-! ## A371980.P1102785462971118788

`A000265(A059452(n+1)-1)`
-/

namespace A371980.P1102785462971118788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A059452 (n + 1) - 1).toNat

end

end A371980.P1102785462971118788

/-! ## A371980.P11749557839154267081

`A001281(A059452(n+1)-1)`
-/

namespace A371980.P11749557839154267081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A059452 (n + 1) - 1).toNat

end

end A371980.P11749557839154267081

/-! ## A371980.P3008412394149750636

`A002034(A059452(n+1)-1)`
-/

namespace A371980.P3008412394149750636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A059452 (n + 1) - 1).toNat

end

end A371980.P3008412394149750636

/-! ## A371980.P14191324996066481163

`A006370(A059452(n+1)-1)`
-/

namespace A371980.P14191324996066481163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A059452 (n + 1) - 1).toNat

end

end A371980.P14191324996066481163

/-! ## A371980.P16526214823427708079

`A006530(A059452(n+1)-1)`
-/

namespace A371980.P16526214823427708079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059452 (n + 1) - 1).toNat

end

end A371980.P16526214823427708079

/-! ## A371980.P2525360074679039026

`A028234(A059452(n+1)-1)`
-/

namespace A371980.P2525360074679039026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A059452 (n + 1) - 1).toNat

end

end A371980.P2525360074679039026

/-!
# A371981: Number of primes between two successive Sophie Germain primes, with Sophie Germain primes not themselves included in the count.

The programs for A371981, there is no canonical definition to state claims against.
-/

/-! ## A371981.P2987629520433045340

`Δ[A072192(n+1)]-1`
-/

namespace A371981.P2987629520433045340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A371981.P2987629520433045340

/-! ## A371981.P2951471240941381657

`Δ[lt[1, A058888(n+1)]]-1`
-/

namespace A371981.P2951471240941381657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058888 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A371981.P2951471240941381657

/-! ## A371981.P14730850830699231830

`A023443(Δ[A072192(n+1)])`
-/

namespace A371981.P14730850830699231830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A371981.P14730850830699231830

/-! ## A371981.P1118299172328440820

`A033619(Δ[A072192(n+1)])`
-/

namespace A371981.P1118299172328440820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A371981.P1118299172328440820

/-! ## A371981.P15394691818495319565

`A057918(Δ[A072192(n+1)]²)`
-/

namespace A371981.P15394691818495319565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A371981.P15394691818495319565

/-! ## A371981.P10257631175679548766

`Δ[A000720(A005384(n+1))]-1`
-/

namespace A371981.P10257631175679548766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A371981.P10257631175679548766

/-! ## A371981.P15916187036460593429

`Δ[A318995(A077065(n+1))]-1`
-/

namespace A371981.P15916187036460593429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A077065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A371981.P15916187036460593429

/-! ## A371981.P18427060346987137716

`A072192(n+2)-(A072192(n+1)+1)`
-/

namespace A371981.P18427060346987137716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072192 (n + 2) - (A072192 (n + 1) + 1)

end

end A371981.P18427060346987137716

/-! ## A371981.P9028359084592452992

`A057428(3*n+1)+Δ[A072192(n+1)]`
-/

namespace A371981.P9028359084592452992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 1) + (f1 (n + 1) - f1 n)

end

end A371981.P9028359084592452992

/-!
# A371984: Binomial transform of A371460.

The programs for A371984, there is no canonical definition to state claims against.
-/

/-! ## A371984.P5844706834506516781

`A077641(A101370(n+1))`
-/

namespace A371984.P5844706834506516781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (A101370 (n + 1)).toNat

end

end A371984.P5844706834506516781

/-!
# A371985: For n a power of 2, a(n) = n. Otherwise a(n) is the smallest novel multiple of a(n - 2^m), where 2^m is the greatest power of 2 not exceeding n.

The programs for A371985, there is no canonical definition to state claims against.
-/

/-! ## A371985.P4178670441931767755

`A269838(A372166(A269838(A372166(A269838(n+1)))))`
-/

namespace A371985.P4178670441931767755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269838 (A372166 (A269838 (A372166 (A269838 (n + 1)).toNat).toNat).toNat).toNat

end

end A371985.P4178670441931767755

/-!
# A371986: Product of Lucas and Catalan numbers: a(n) = A000032(n)*A000108(n).

The programs for A371986, the canonical program `A371986.P14453910396972068629` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371986 has offset 0).

The definition of A371986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371986.P14453910396972068629

`A000032(n)*A000108(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A371986

/-- `A000032(n)*A000108(n)` -/
def P14453910396972068629.Spec : Prop :=
  ∀ n, P14453910396972068629.a n = A371986 n

theorem P14453910396972068629.correct : P14453910396972068629.Spec := by
  intro n
  simp only [A371986]

end A371986

/-! ## A371986.P13746027990116845545

`2*(2*n-1)*(n*a(n-1)+(4*n-6)*a(n-2))/(n*(n+1))` with `a(0)=2, a(1)=1`
-/

namespace A371986.P13746027990116845545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * (((2 * n : ℤ) - 1 : ℚ) * (((n : ℚ) * a (n - 1) + ((4 * n : ℤ) - 6 : ℚ) * a (n - 2)) / (n * (n + 1) : ℚ)))

end

end A371986.P13746027990116845545

namespace A371986

/-- `2*(2*n-1)*(n*a(n-1)+(4*n-6)*a(n-2))/(n*(n+1))` -/
def P13746027990116845545.Spec : Prop :=
  ∀ n, P13746027990116845545.a n = (A371986 n : ℚ)

end A371986

/-! ## A371986.P12076475057250368938

`abs(A000032(n)*A168491(n))`
-/

namespace A371986.P12076475057250368938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 n * A168491 n|

end

end A371986.P12076475057250368938

namespace A371986

/-- `abs(A000032(n)*A168491(n))` -/
def P12076475057250368938.Spec : Prop :=
  ∀ n, P12076475057250368938.a n = A371986 n

end A371986

/-! ## A371986.P1675121764821354353

`A000032(n)*A120588(n+1)`
-/

namespace A371986.P1675121764821354353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A120588 (n + 1)

end

end A371986.P1675121764821354353

namespace A371986

/-- `A000032(n)*A120588(n+1)` -/
def P1675121764821354353.Spec : Prop :=
  ∀ n, P1675121764821354353.a n = A371986 n

end A371986

/-! ## A371986.P3438729032230704292

`A000032(n)*A028303(2*n)`
-/

namespace A371986.P3438729032230704292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A028303 (2 * n)

end

end A371986.P3438729032230704292

namespace A371986

/-- `A000032(n)*A028303(2*n)` -/
def P3438729032230704292.Spec : Prop :=
  ∀ n, P3438729032230704292.a n = A371986 n

end A371986

/-! ## A371986.P8325862325423254273

`A000032(n)*A028304(2*n)`
-/

namespace A371986.P8325862325423254273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A028304 (2 * n)

end

end A371986.P8325862325423254273

namespace A371986

/-- `A000032(n)*A028304(2*n)` -/
def P8325862325423254273.Spec : Prop :=
  ∀ n, P8325862325423254273.a n = A371986 n

end A371986

/-! ## A371986.P3316554325493962973

`A000032(n)*A057977(2*n)`
-/

namespace A371986.P3316554325493962973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A057977 (2 * n)

end

end A371986.P3316554325493962973

namespace A371986

/-- `A000032(n)*A057977(2*n)` -/
def P3316554325493962973.Spec : Prop :=
  ∀ n, P3316554325493962973.a n = A371986 n

end A371986

/-! ## A371986.P3662138881085654415

`A000032(n)*A126120(2*n)`
-/

namespace A371986.P3662138881085654415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A126120 (2 * n)

end

end A371986.P3662138881085654415

namespace A371986

/-- `A000032(n)*A126120(2*n)` -/
def P3662138881085654415.Spec : Prop :=
  ∀ n, P3662138881085654415.a n = A371986 n

end A371986

/-! ## A371986.P10294995296248368044

`A000032(n)*A126324(2*n)`
-/

namespace A371986.P10294995296248368044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A126324 (2 * n)

end

end A371986.P10294995296248368044

namespace A371986

/-- `A000032(n)*A126324(2*n)` -/
def P10294995296248368044.Spec : Prop :=
  ∀ n, P10294995296248368044.a n = A371986 n

end A371986

/-! ## A371986.P18424556666782417679

`Δ[Δ[A014739(n)]]*A000108(n)`
-/

namespace A371986.P18424556666782417679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000108 n

end

end A371986.P18424556666782417679

namespace A371986

/-- `Δ[Δ[A014739(n)]]*A000108(n)` -/
def P18424556666782417679.Spec : Prop :=
  ∀ n, P18424556666782417679.a n = A371986 n

end A371986

/-! ## A371986.P11606516658829139868

`A000032(n)*A097331(2*n+1)`
-/

namespace A371986.P11606516658829139868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A097331 (2 * n + 1)

end

end A371986.P11606516658829139868

namespace A371986

/-- `A000032(n)*A097331(2*n+1)` -/
def P11606516658829139868.Spec : Prop :=
  ∀ n, P11606516658829139868.a n = A371986 n

end A371986

/-! ## A371986.P18094922904080330376

`(A000204(n+2)-A000204(n+1))*A000108(n)`
-/

namespace A371986.P18094922904080330376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 2) - A000204 (n + 1)) * A000108 n

end

end A371986.P18094922904080330376

namespace A371986

/-- `(A000204(n+2)-A000204(n+1))*A000108(n)` -/
def P18094922904080330376.Spec : Prop :=
  ∀ n, P18094922904080330376.a n = A371986 n

end A371986

/-!
# A371988: G.f. A(x) satisfies A(x) = ( 1 + 16*x*(1 + A(x)) )^(1/4).

The programs for A371988, there is no canonical definition to state claims against.
-/

/-! ## A371988.P12331134836984623160

`A026741(A000079(3*n))*A061177(n)`
-/

namespace A371988.P12331134836984623160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000079 (3 * n)).toNat * A061177 n

end

end A371988.P12331134836984623160

/-!
# A371990: G.f. A(x) satisfies A(x) = ( 1 + 16*x*A(x)*(1 + A(x)) )^(1/4).

The programs for A371990, there is no canonical definition to state claims against.
-/

/-! ## A371990.P1287352883225836519

`A100050(A099318(n+1)^A381607(3*n))`
-/

namespace A371990.P1287352883225836519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (SequenceMachineLib.roundAway ((A099318 (n + 1) : ℚ) ^ (A381607 (3 * n) : ℤ))).toNat

end

end A371990.P1287352883225836519

/-!
# A371991: Number of different closest packings of equal spheres for hexagonal crystals having repeat period n.

The programs for A371991, there is no canonical definition to state claims against.
-/

/-! ## A371991.P13634890911186537094

`A000046(n+1)-A371992(n+1)`
-/

namespace A371991.P13634890911186537094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - A371992 (n + 1)

end

end A371991.P13634890911186537094

/-! ## A371991.P11956082540193463461

`A056366(A254667(n+1))-A371992(n+1)`
-/

namespace A371991.P11956082540193463461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (A254667 (n + 1)).toNat - A371992 (n + 1)

end

end A371991.P11956082540193463461

/-!
# A371992: Number of different closest packings of equal spheres for rhombohedral crystals having repeat period n.

The programs for A371992, there is no canonical definition to state claims against.
-/

/-! ## A371992.P3596983961852157367

`A000046(n+1)-A371991(n+1)`
-/

namespace A371992.P3596983961852157367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - A371991 (n + 1)

end

end A371992.P3596983961852157367

/-! ## A371992.P9183778096142843698

`A056366(A254667(n+1))-A371991(n+1)`
-/

namespace A371992.P9183778096142843698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (A254667 (n + 1)).toNat - A371991 (n + 1)

end

end A371992.P9183778096142843698

/-! ## A371992.P11124311054640599880

`A048816(n+1)-A120835(A048816(n+1))`
-/

namespace A371992.P11124311054640599880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048816 (n + 1) - A120835 (A048816 (n + 1)).toNat

end

end A371992.P11124311054640599880

/-!
# A371995: Triangle read by rows: T(n, k) = binomial(n - k, k) * subfactorial(k), for n >= 0 and 0 <= k <= floor(n/2).

The programs for A371995, there is no canonical definition to state claims against.
-/

/-! ## A371995.P12911308195740219064

`A098825(A091018(n))`
-/

namespace A371995.P12911308195740219064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A091018 n).toNat

end

end A371995.P12911308195740219064

/-! ## A371995.P5459725568402670807

`A331416((n%floor(sqrt(n+1)))^∏{p}[n+1, #])`
-/

namespace A371995.P5459725568402670807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 ((n % Nat.sqrt (n + 1)) ^ (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A371995.P5459725568402670807

/-! ## A371995.P1208598104654529441

`floor((A093662(A134640(n+5))+1)/ϕ)`
-/

namespace A371995.P1208598104654529441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093662 (A134640 (n + 5)).toNat + 1 : ℝ) / Real.goldenRatio⌋

end

end A371995.P1208598104654529441

/-! ## A371995.P12202944637842550123

`and(A122197(n+1), A238476(3*n+4))`
-/

namespace A371995.P12202944637842550123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122197 (n + 1)) (A238476 (3 * n + 4))

end

end A371995.P12202944637842550123

/-! ## A371995.P3170928628597981157

`A331416(A215590(n+1)^∏{p}[n+1, #])`
-/

namespace A371995.P3170928628597981157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (A215590 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A371995.P3170928628597981157

/-!
# A371998: a(n) = A000166(floor(n/2)) if n is even otherwise A000240(floor((n + 1)/2)).

The programs for A371998, there is no canonical definition to state claims against.
-/

/-! ## A371998.P15674943700555821656

`xor(n%2, A000166(ceil(n/2)))`
-/

namespace A371998.P15674943700555821656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A000166 ⌈(n : ℚ) / 2⌉.toNat)

end

end A371998.P15674943700555821656

/-! ## A371998.P14540838065723488283

`A098825(eq[1, A239144(n)])`
-/

namespace A371998.P14540838065723488283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371998.P14540838065723488283

/-! ## A371998.P16918826748461247723

`A098825(A026519(n²+2))`
-/

namespace A371998.P16918826748461247723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A026519 (n ^ 2 + 2)).toNat

end

end A371998.P16918826748461247723

/-! ## A371998.P15053885809428499338

`A098825(eq[1, A004070(n+1)])`
-/

namespace A371998.P15053885809428499338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371998.P15053885809428499338

/-! ## A371998.P13139617945631025124

`A098825(eq[1, A007318(n+1)])`
-/

namespace A371998.P13139617945631025124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A371998.P13139617945631025124

/-!
# A371999: Sums of antidiagonals of A372001.

The programs for A371999, there is no canonical definition to state claims against.
-/

/-! ## A371999.P7469504946426062579

`A058226(A192627(n))`
-/

namespace A371999.P7469504946426062579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058226 (A192627 n).toNat

end

end A371999.P7469504946426062579

/-! ## A371999.P7491926123096899714

`∑[A342516(∑[A129519(n)])]`
-/

namespace A371999.P7491926123096899714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371999.P7491926123096899714

