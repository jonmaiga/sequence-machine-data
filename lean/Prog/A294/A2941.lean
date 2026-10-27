import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A294100: Number of partitions of n into two squarefree parts or two nonsquarefree positive integer parts.

The programs for A294100, there is no canonical definition to state claims against.
-/

/-! ## A294100.P2253917648551958022

`A294211(n+1)/(n+1)`
-/

namespace A294100.P2253917648551958022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294211 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294100.P2253917648551958022

/-! ## A294100.P1046177245867970866

`ceil(n/2-A294101(n+1))`
-/

namespace A294100.P1046177245867970866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉

end

end A294100.P1046177245867970866

/-! ## A294100.P4770535905314140359

`A110654(n)-A294101(n+1)`
-/

namespace A294100.P4770535905314140359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A294101 (n + 1)

end

end A294100.P4770535905314140359

/-! ## A294100.P6695561212520922973

`abs(A001057(n))-A294101(n+1)`
-/

namespace A294100.P6695561212520922973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A294101 (n + 1)

end

end A294100.P6695561212520922973

/-! ## A294100.P6218616318405400704

`abs(A130472(n))-A294101(n+1)`
-/

namespace A294100.P6218616318405400704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130472 n| - A294101 (n + 1)

end

end A294100.P6218616318405400704

/-! ## A294100.P6032348363419409075

`∑[A000035(n)]-A294101(n+1)`
-/

namespace A294100.P6032348363419409075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294101 (n + 1)

end

end A294100.P6032348363419409075

/-! ## A294100.P10567218169765997666

`Δ[A002620(n)]-A294101(n+1)`
-/

namespace A294100.P10567218169765997666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294101 (n + 1)

end

end A294100.P10567218169765997666

/-! ## A294100.P10738041990064239824

`A282380(n+1)+A071068(n+1)`
-/

namespace A294100.P10738041990064239824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282380 (n + 1) + A071068 (n + 1)

end

end A294100.P10738041990064239824

/-! ## A294100.P12062806460474840060

`n-(A294101(n+1)+A004526(n))`
-/

namespace A294100.P12062806460474840060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A294101 (n + 1) + A004526 n)

end

end A294100.P12062806460474840060

/-! ## A294100.P3525588624196037000

`1-(A294101(n+1)+A008619(n))+n`
-/

namespace A294100.P3525588624196037000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A294101 (n + 1) + A008619 n) + (n : ℤ)

end

end A294100.P3525588624196037000

/-! ## A294100.P14626916311705264358

`log2(A060546(n))-A294101(n+1)`
-/

namespace A294100.P14626916311705264358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060546 n : ℝ) - (A294101 (n + 1) : ℝ)

end

end A294100.P14626916311705264358

/-!
# A294101: Number of partitions of n into two parts such that one is squarefree and the other is nonsquarefree.

The programs for A294101, there is no canonical definition to state claims against.
-/

/-! ## A294101.P6319275133618065759

`A294232(n+1)+A294233(n+1)`
-/

namespace A294101.P6319275133618065759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294232 (n + 1) + A294233 (n + 1)

end

end A294101.P6319275133618065759

/-! ## A294101.P14662150348021070417

`A262991(n+1)-2*A071068(n+1)`
-/

namespace A294101.P14662150348021070417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - 2 * A071068 (n + 1)

end

end A294101.P14662150348021070417

/-! ## A294101.P12444876094005033228

`A110654(n)-A294100(n+1)`
-/

namespace A294101.P12444876094005033228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A294100 (n + 1)

end

end A294101.P12444876094005033228

/-! ## A294101.P12214966480997755525

`A013928(n+1)-A098235(n+1)`
-/

namespace A294101.P12214966480997755525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A098235 (n + 1)

end

end A294101.P12214966480997755525

/-! ## A294101.P7840412331037349763

`A351833(n+1)-A071068(n+1)`
-/

namespace A294101.P7840412331037349763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (n + 1) - A071068 (n + 1)

end

end A294101.P7840412331037349763

/-! ## A294101.P1708882111202202822

`n-(A294100(n+1)+A004526(n))`
-/

namespace A294101.P1708882111202202822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A294100 (n + 1) + A004526 n)

end

end A294101.P1708882111202202822

/-! ## A294101.P18212207582494475607

`A107079(n+1)-(A098235(n+1)+1)`
-/

namespace A294101.P18212207582494475607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - (A098235 (n + 1) + 1)

end

end A294101.P18212207582494475607

/-! ## A294101.P7579391201933433828

`2*A351833(n+1)-A262991(n+1)`
-/

namespace A294101.P7579391201933433828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351833 (n + 1) - A262991 (n + 1)

end

end A294101.P7579391201933433828

/-! ## A294101.P3632598713275392375

`∑[char[A005117(n+1)]]-A098235(n+1)`
-/

namespace A294101.P3632598713275392375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A098235 (n + 1)

end

end A294101.P3632598713275392375

/-! ## A294101.P1588885742993870765

`A262868(n+1)+A294232(n+1)-A071068(n+1)`
-/

namespace A294101.P1588885742993870765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) + (A294232 (n + 1) - A071068 (n + 1))

end

end A294101.P1588885742993870765

/-! ## A294101.P5609018539637867669

`A262869(2*n+1)-A098235(n+1)`
-/

namespace A294101.P5609018539637867669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A098235 (n + 1)

end

end A294101.P5609018539637867669

/-! ## A294101.P11658610463966908594

`A351834(n+1)-A098236(n+1)`
-/

namespace A294101.P11658610463966908594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351834 (n + 1) - A098236 (n + 1)

end

end A294101.P11658610463966908594

/-!
# A294102: Expansion of Product_{k>=1} (1 + x^k)^(k*(3*k-1)/2).

The programs for A294102, there is no canonical definition to state claims against.
-/

/-! ## A294102.P620488326840948627

`A352143(A000051(n)-A097333(n))`
-/

namespace A294102.P620488326840948627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352143 (A000051 n - A097333 n).toNat

end

end A294102.P620488326840948627

/-! ## A294102.P10132232185584456341

`or(A144952(n+1), A144963(A327471(n)))`
-/

namespace A294102.P10132232185584456341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144952 (n + 1)) (A144963 (A327471 n).toNat)

end

end A294102.P10132232185584456341

/-! ## A294102.P18416033680708348265

`A130911(A130914(n+1)-Δ[A130919(n)])`
-/

namespace A294102.P18416033680708348265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130911 (A130914 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A294102.P18416033680708348265

/-!
# A294103: Sum of the differences of the larger and smaller parts in the partitions of 2n into two squarefree parts or two nonsquarefree parts.

The programs for A294103, there is no canonical definition to state claims against.
-/

/-! ## A294103.P18251729540214561227

`A294104(2*(n+1))`
-/

namespace A294103.P18251729540214561227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294104 (2 * (n + 1))

end

end A294103.P18251729540214561227

/-! ## A294103.P6871427716881524708

`lcm(2, A294104(n+2+n))`
-/

namespace A294103.P6871427716881524708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A294104 (n + 2 + n))

end

end A294103.P6871427716881524708

/-! ## A294103.P15659894252566133764

`A245092(A294104(n+2+n))`
-/

namespace A294103.P15659894252566133764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A294104 (n + 2 + n)).toNat

end

end A294103.P15659894252566133764

/-! ## A294103.P3932195901610107449

`A294104(n+2+n)%A013973(n)`
-/

namespace A294103.P3932195901610107449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294104 (n + 2 + n)) (A013973 n)

end

end A294103.P3932195901610107449

/-! ## A294103.P16091699287867984771

`A294104(n+2+n)/A007318(∑[n])`
-/

namespace A294103.P16091699287867984771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294104 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A294103.P16091699287867984771

/-! ## A294103.P10928817080925166277

`A294104(n+2+n)+A000007(n+1)`
-/

namespace A294103.P10928817080925166277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294104 (n + 2 + n) + A000007 (n + 1)

end

end A294103.P10928817080925166277

/-! ## A294103.P7451696776355830385

`A294210(2*(n+1))-A294209(2*(n+1))`
-/

namespace A294103.P7451696776355830385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294210 (2 * (n + 1)) - A294209 (2 * (n + 1))

end

end A294103.P7451696776355830385

/-! ## A294103.P1838423251299064241

`A294104(n+2+n)/A000108(C(2, n+2))`
-/

namespace A294103.P1838423251299064241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294104 (n + 2 + n) : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A294103.P1838423251299064241

/-! ## A294103.P2258401456158318004

`A294104(n+2+n)-C(n, A000040(n+1))`
-/

namespace A294103.P2258401456158318004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294104 (n + 2 + n) - (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A294103.P2258401456158318004

/-!
# A294104: Sum of the differences of the larger and smaller parts in the partitions of n into two squarefree parts or two nonsquarefree parts.

The programs for A294104, there is no canonical definition to state claims against.
-/

/-! ## A294104.P18162297669143974032

`A294210(n+1)-A294209(n+1)`
-/

namespace A294104.P18162297669143974032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294210 (n + 1) - A294209 (n + 1)

end

end A294104.P18162297669143974032

/-! ## A294104.P6711812346162206061

`2*A294210(n+1)-A294211(n+1)`
-/

namespace A294104.P6711812346162206061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294210 (n + 1) - A294211 (n + 1)

end

end A294104.P6711812346162206061

/-! ## A294104.P1945261067053873356

`A294211(n+1)-2*A294209(n+1)`
-/

namespace A294104.P1945261067053873356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294211 (n + 1) - 2 * A294209 (n + 1)

end

end A294104.P1945261067053873356

/-! ## A294104.P9639866534953609678

`(n+1)*A294100(n+1)-A294209(n+1)-A294209(n+1)`
-/

namespace A294104.P9639866534953609678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294100 (n + 1) - A294209 (n + 1) - A294209 (n + 1)

end

end A294104.P9639866534953609678

/-! ## A294104.P3943746960385617954

`A294210(n+1)-((n+1)*A294100(n+1)-A294210(n+1))`
-/

namespace A294104.P3943746960385617954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294210 (n + 1) - ((n + 1 : ℤ) * A294100 (n + 1) - A294210 (n + 1))

end

end A294104.P3943746960385617954

/-! ## A294104.P5513429510468964447

`(n+1)*ceil(n/2-A294101(n+1))-A294209(n+1)-A294209(n+1)`
-/

namespace A294104.P5513429510468964447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉ - A294209 (n + 1) - A294209 (n + 1)

end

end A294104.P5513429510468964447

/-! ## A294104.P6567747161200875669

`A294210(n+1)-((n+1)*ceil(n/2-A294101(n+1))-A294210(n+1))`
-/

namespace A294104.P6567747161200875669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294210 (n + 1) - ((n + 1 : ℤ) * ⌈(n : ℚ) / 2 - (A294101 (n + 1) : ℚ)⌉ - A294210 (n + 1))

end

end A294104.P6567747161200875669

/-! ## A294104.P5549705364552528574

`A294211(n+1)-A005843(A294209(n+1))`
-/

namespace A294104.P5549705364552528574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294211 (n + 1) - A005843 (A294209 (n + 1)).toNat

end

end A294104.P5549705364552528574

/-! ## A294104.P9868768078222107683

`A005843(A294210(n+1))-A294211(n+1)`
-/

namespace A294104.P9868768078222107683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A294210 (n + 1)).toNat - A294211 (n + 1)

end

end A294104.P9868768078222107683

/-!
# A294106: Sum of products of terms in all partitions of 3*n into distinct powers of 3.

The programs for A294106, the canonical program `A294106.P2933432271010427062` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294106 has offset 0).

The definition of A294106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294106.P2933432271010427062

`a(A002264(n))*A117940(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A294106

/-- `a(A002264(n))*A117940(n)` -/
def P2933432271010427062.Spec : Prop :=
  ∀ n, P2933432271010427062.a n = A294106 n

theorem P2933432271010427062.correct : P2933432271010427062.Spec := by
  intro n
  simp only [A294106]

end A294106

/-! ## A294106.P9829126780342703399

`a(A002264(n))*A117980(2*n)` with `a(0)=1`
-/

namespace A294106.P9829126780342703399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002264 n).toNat * A117980 (2 * n)

end

end A294106.P9829126780342703399

namespace A294106

/-- `a(A002264(n))*A117980(2*n)` -/
def P9829126780342703399.Spec : Prop :=
  ∀ n, P9829126780342703399.a n = A294106 n

end A294106

/-! ## A294106.P16585316837185013781

`A039966(n)*A060840(A016777(n))`
-/

namespace A294106.P16585316837185013781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A060840 (A016777 n).toNat

end

end A294106.P16585316837185013781

namespace A294106

/-- `A039966(n)*A060840(A016777(n))` -/
def P16585316837185013781.Spec : Prop :=
  ∀ n, P16585316837185013781.a n = A294106 n

end A294106

/-! ## A294106.P1170626387382682228

`A060840(A028310(n))*A117940(n)`
-/

namespace A294106.P1170626387382682228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060840 (A028310 n).toNat * A117940 n

end

end A294106.P1170626387382682228

namespace A294106

/-- `A060840(A028310(n))*A117940(n)` -/
def P1170626387382682228.Spec : Prop :=
  ∀ n, P1170626387382682228.a n = A294106 n

end A294106

/-! ## A294106.P4071541663387962794

`A039966(n)*A060840(A028310(3*n))`
-/

namespace A294106.P4071541663387962794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A060840 (A028310 (3 * n)).toNat

end

end A294106.P4071541663387962794

namespace A294106

/-- `A039966(n)*A060840(A028310(3*n))` -/
def P4071541663387962794.Spec : Prop :=
  ∀ n, P4071541663387962794.a n = A294106 n

end A294106

/-!
# A294107: Maximum of the number of primes appearing among the smaller parts and the number of primes appearing among the larger parts of the partitions of n into two parts.

The programs for A294107, the canonical program `A294107.P14015073582122171902` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294107 has offset 1).

The definition of A294107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294107.P17516906792970240343

`A056172(C(2, C(n, 3))+n+1)`
-/

namespace A294107.P17516906792970240343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (Nat.choose 2 (Nat.choose n 3) + n + 1)

end

end A294107.P17516906792970240343

namespace A294107

/-- `A056172(C(2, C(n, 3))+n+1)` -/
def P17516906792970240343.Spec : Prop :=
  ∀ n, P17516906792970240343.a n = A294107 (n + 1)

end A294107

/-! ## A294107.P13355069726346777088

`A056172(n+1)+char[2]+char[3]`
-/

namespace A294107.P13355069726346777088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1) + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A294107.P13355069726346777088

namespace A294107

/-- `A056172(n+1)+char[2]+char[3]` -/
def P13355069726346777088.Spec : Prop :=
  ∀ n, P13355069726346777088.a n = A294107 (n + 1)

end A294107

/-! ## A294107.P11319294777248172432

`A056172(n*A007913(round(2/(n+1))+1)+1)`
-/

namespace A294107.P11319294777248172432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 ((n : ℤ) * A007913 (SequenceMachineLib.roundAway (2 / (n + 1 : ℚ)) + 1).toNat + 1).toNat

end

end A294107.P11319294777248172432

namespace A294107

/-- `A056172(n*A007913(round(2/(n+1))+1)+1)` -/
def P11319294777248172432.Spec : Prop :=
  ∀ n, P11319294777248172432.a n = A294107 (n + 1)

end A294107

/-! ## A294107.P3889217086966825434

`A185012(n-A056172(n+1))+A056172(n+1)`
-/

namespace A294107.P3889217086966825434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 ((n : ℤ) - A056172 (n + 1)).toNat + A056172 (n + 1)

end

end A294107.P3889217086966825434

namespace A294107

/-- `A185012(n-A056172(n+1))+A056172(n+1)` -/
def P3889217086966825434.Spec : Prop :=
  ∀ n, P3889217086966825434.a n = A294107 (n + 1)

end A294107

/-! ## A294107.P1147708075891041349

`char[3]+∑[char[A284278(2*n+1)]]`
-/

namespace A294107.P1147708075891041349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284278 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A294107.P1147708075891041349

namespace A294107

/-- `char[3]+∑[char[A284278(2*n+1)]]` -/
def P1147708075891041349.Spec : Prop :=
  ∀ n, (P1147708075891041349.a n : ℤ) = A294107 (n + 1)

end A294107

/-! ## A294107.P389045819860399644

`A055679(n+1)+char[3]`
-/

namespace A294107.P389045819860399644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294107.P389045819860399644

namespace A294107

/-- `A055679(n+1)+char[3]` -/
def P389045819860399644.Spec : Prop :=
  ∀ n, P389045819860399644.a n = A294107 (n + 1)

end A294107

/-! ## A294107.P14015073582122171902

`A185013(n)+A055679(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A294107

/-- `A185013(n)+A055679(n+1)` -/
def P14015073582122171902.Spec : Prop :=
  ∀ n, P14015073582122171902.a n = A294107 (n + 1)

theorem P14015073582122171902.correct : P14015073582122171902.Spec := by
  intro n
  simp only [A294107, Nat.add_sub_cancel]

end A294107

/-! ## A294107.P6631278260214537105

`floor(A055679(n+1)+2/A111229(n+2))`
-/

namespace A294107.P6631278260214537105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055679 (n + 1) : ℚ) + 2 / (A111229 (n + 2) : ℚ)⌋

end

end A294107.P6631278260214537105

namespace A294107

/-- `floor(A055679(n+1)+2/A111229(n+2))` -/
def P6631278260214537105.Spec : Prop :=
  ∀ n, P6631278260214537105.a n = A294107 (n + 1)

end A294107

/-!
# A294108: Minimum of the number of primes appearing among the smaller parts and the number of primes appearing among the larger parts of the partitions of n into two parts.

The programs for A294108, the canonical program `A294108.P8258309688264849587` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294108 has offset 1).

The definition of A294108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294108.P16156206301005512983

`A297616(round(acot(n)+n))-2`
-/

namespace A294108.P16156206301005512983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297616 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 2

end

end A294108.P16156206301005512983

namespace A294108

/-- `A297616(round(acot(n)+n))-2` -/
def P16156206301005512983.Spec : Prop :=
  ∀ n, P16156206301005512983.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P8258309688264849587

`abs(Δ[A033270(A185048(n+1))])`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A294108

/-- `abs(Δ[A033270(A185048(n+1))])` -/
def P8258309688264849587.Spec : Prop :=
  ∀ n, P8258309688264849587.a n = A294108 (n + 1)

theorem P8258309688264849587.correct : P8258309688264849587.Spec := by
  intro n
  simp only [A294108, Nat.add_sub_cancel]

end A294108

/-! ## A294108.P4775012617473697802

`Δ[A033270(A185048(n+1))]*A062157(n)`
-/

namespace A294108.P4775012617473697802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A185048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 n

end

end A294108.P4775012617473697802

namespace A294108

/-- `Δ[A033270(A185048(n+1))]*A062157(n)` -/
def P4775012617473697802.Spec : Prop :=
  ∀ n, P4775012617473697802.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P5007650751504501873

`A230980(n)-A055679(or(1, n))`
-/

namespace A294108.P5007650751504501873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A055679 (Nat.lor 1 n)

end

end A294108.P5007650751504501873

namespace A294108

/-- `A230980(n)-A055679(or(1, n))` -/
def P5007650751504501873.Spec : Prop :=
  ∀ n, P5007650751504501873.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P15262543114509144943

`A230980(n)-A055679(A109613(n))`
-/

namespace A294108.P15262543114509144943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A055679 (A109613 n).toNat

end

end A294108.P15262543114509144943

namespace A294108

/-- `A230980(n)-A055679(A109613(n))` -/
def P15262543114509144943.Spec : Prop :=
  ∀ n, P15262543114509144943.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P10051901373909345520

`A230980(n)-A055679(Δ[A000982(n)])`
-/

namespace A294108.P10051901373909345520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A055679 (f1 (n + 1) - f1 n).toNat

end

end A294108.P10051901373909345520

namespace A294108

/-- `A230980(n)-A055679(Δ[A000982(n)])` -/
def P10051901373909345520.Spec : Prop :=
  ∀ n, P10051901373909345520.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P16373821809859479255

`A230980(n)-A055679(Δ[A061925(n)])`
-/

namespace A294108.P16373821809859479255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A055679 (f1 (n + 1) - f1 n).toNat

end

end A294108.P16373821809859479255

namespace A294108

/-- `A230980(n)-A055679(Δ[A061925(n)])` -/
def P16373821809859479255.Spec : Prop :=
  ∀ n, P16373821809859479255.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P5773150268766111302

`A055679(A053438(n))-A055679(A109613(n))`
-/

namespace A294108.P5773150268766111302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A053438 n).toNat - A055679 (A109613 n).toNat

end

end A294108.P5773150268766111302

namespace A294108

/-- `A055679(A053438(n))-A055679(A109613(n))` -/
def P5773150268766111302.Spec : Prop :=
  ∀ n, P5773150268766111302.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P11839056418174996934

`A297616(A233583(n+1))-2`
-/

namespace A294108.P11839056418174996934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297616 (A233583 (n + 1)).toNat - 2

end

end A294108.P11839056418174996934

namespace A294108

/-- `A297616(A233583(n+1))-2` -/
def P11839056418174996934.Spec : Prop :=
  ∀ n, P11839056418174996934.a n = A294108 (n + 1)

end A294108

/-! ## A294108.P14148296680697588477

`A056171(A279409(∑[n-1]+6))`
-/

namespace A294108.P14148296680697588477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A279409 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat).toNat

end

end A294108.P14148296680697588477

namespace A294108

/-- `A056171(A279409(∑[n-1]+6))` -/
def P14148296680697588477.Spec : Prop :=
  ∀ n, P14148296680697588477.a n = A294108 (n + 1)

end A294108

/-!
# A294109: Sum of the larger parts of the partitions of n into two parts with smaller part prime.

The programs for A294109, the canonical program `A294109.P16701193320608045315` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294109 has offset 1).

The definition of A294109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294109.P16701193320608045315

`A294023(n+1)+A063960(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A294109

/-- `A294023(n+1)+A063960(n+1)` -/
def P16701193320608045315.Spec : Prop :=
  ∀ n, P16701193320608045315.a n = A294109 (n + 1)

theorem P16701193320608045315.correct : P16701193320608045315.Spec := by
  intro n
  simp only [A294109, Nat.add_sub_cancel]

end A294109

/-! ## A294109.P11977409893827829394

`A063960(n+1)+∑[n-A282029(n)]`
-/

namespace A294109.P11977409893827829394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A282029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294109.P11977409893827829394

namespace A294109

/-- `A063960(n+1)+∑[n-A282029(n)]` -/
def P11977409893827829394.Spec : Prop :=
  ∀ n, P11977409893827829394.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P16975384061479799275

`(n+1)*A056172(n+1)-A063960(n+1)`
-/

namespace A294109.P16975384061479799275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056172 (n + 1) - A063960 (n + 1)

end

end A294109.P16975384061479799275

namespace A294109

/-- `(n+1)*A056172(n+1)-A063960(n+1)` -/
def P16975384061479799275.Spec : Prop :=
  ∀ n, P16975384061479799275.a n = A294109 (n + 1)

theorem P16975384061479799275.correct : P16975384061479799275.Spec := by
  intro n
  simp only [A294109, Nat.add_sub_cancel, A294109.P16975384061479799275.a, A294109.P16701193320608045315.a, A056172, A056172.P4823837235628316593.a, A063960, A063960.P16738888457334796570.f1, A063960.P16738888457334796570.a, A294023, A294023.P12009949958102323992.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A034387, A034387.P4934732080317010833.a, A056171, A056171.P2104246229896061761.a, A065033, A065033.P13150710762287634520.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294109

/-! ## A294109.P13204696603532164338

`A063960(n+1)+∑[A056172(A004277(n)-n)]`
-/

namespace A294109.P13204696603532164338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294109.P13204696603532164338

namespace A294109

/-- `A063960(n+1)+∑[A056172(A004277(n)-n)]` -/
def P13204696603532164338.Spec : Prop :=
  ∀ n, P13204696603532164338.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P18292033420324619661

`A063960(n+1)+∑[A266714(n+1)-A266715(n+1)]`
-/

namespace A294109.P18292033420324619661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266714 (n + 1) - A266715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294109.P18292033420324619661

namespace A294109

/-- `A063960(n+1)+∑[A266714(n+1)-A266715(n+1)]` -/
def P18292033420324619661.Spec : Prop :=
  ∀ n, P18292033420324619661.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P5103561525809090853

`A014682(Δ[n*A294023(n+1)])`
-/

namespace A294109.P5103561525809090853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A294109.P5103561525809090853

namespace A294109

/-- `A014682(Δ[n*A294023(n+1)])` -/
def P5103561525809090853.Spec : Prop :=
  ∀ n, P5103561525809090853.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P4781979072122339756

`A001281(Δ[n*A294023(n+1)])`
-/

namespace A294109.P4781979072122339756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A294109.P4781979072122339756

namespace A294109

/-- `A001281(Δ[n*A294023(n+1)])` -/
def P4781979072122339756.Spec : Prop :=
  ∀ n, P4781979072122339756.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P4615682993802801129

`A004525(Δ[n*A294023(n+1)])`
-/

namespace A294109.P4615682993802801129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A294109.P4615682993802801129

namespace A294109

/-- `A004525(Δ[n*A294023(n+1)])` -/
def P4615682993802801129.Spec : Prop :=
  ∀ n, P4615682993802801129.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P8797518410170330457

`A004526(Δ[n*A294023(n+1)])`
-/

namespace A294109.P8797518410170330457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A294109.P8797518410170330457

namespace A294109

/-- `A004526(Δ[n*A294023(n+1)])` -/
def P8797518410170330457.Spec : Prop :=
  ∀ n, P8797518410170330457.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P5985246963902051699

`A006370(Δ[n*A294023(n+1)])`
-/

namespace A294109.P5985246963902051699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A294109.P5985246963902051699

namespace A294109

/-- `A006370(Δ[n*A294023(n+1)])` -/
def P5985246963902051699.Spec : Prop :=
  ∀ n, P5985246963902051699.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P84570157824312896

`A025480(Δ[n*A294023(n+1)])`
-/

namespace A294109.P84570157824312896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A294109.P84570157824312896

namespace A294109

/-- `A025480(Δ[n*A294023(n+1)])` -/
def P84570157824312896.Spec : Prop :=
  ∀ n, P84570157824312896.a n = A294109 (n + 1)

end A294109

/-! ## A294109.P11797672081370138159

`A110654(Δ[n*A294023(n+1)])`
-/

namespace A294109.P11797672081370138159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A294109.P11797672081370138159

namespace A294109

/-- `A110654(Δ[n*A294023(n+1)])` -/
def P11797672081370138159.Spec : Prop :=
  ∀ n, P11797672081370138159.a n = A294109 (n + 1)

end A294109

/-!
# A294111: Sum of the smaller parts of the partitions of n into two parts with larger part prime.

The programs for A294111, there is no canonical definition to state claims against.
-/

/-! ## A294111.P11785636337868538859

`∑{p}[A055773(n), n+1-#]`
-/

namespace A294111.P11785636337868538859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n + 1 : ℤ) - (p : ℤ))

end

end A294111.P11785636337868538859

/-!
# A294112: Practical numbers z such that z^2 = x^2 + y^2 for some practical numbers x and y with gcd(x,y,z) = 4.

The programs for A294112, there is no canonical definition to state claims against.
-/

/-! ## A294112.P5370249211285122738

`∑[20*A000005(A021774(n)+n)]`
-/

namespace A294112.P5370249211285122738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A000005 (A021774 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294112.P5370249211285122738

/-!
# A294113: Sum of the smaller parts of the partitions of 2n into two parts with larger part prime.

The programs for A294113, the canonical program `A294113.P16964987193441781902` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294113 has offset 1).

The definition of A294113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294113.P11971340139331580441

`A294111(2*(n+1))`
-/

namespace A294113.P11971340139331580441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294111 (2 * (n + 1))

end

end A294113.P11971340139331580441

namespace A294113

/-- `A294111(2*(n+1))` -/
def P11971340139331580441.Spec : Prop :=
  ∀ n, P11971340139331580441.a n = A294113 (n + 1)

end A294113

/-! ## A294113.P16964987193441781902

`A368058(2*n+1)+A056171(2*n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A294113

/-- `A368058(2*n+1)+A056171(2*n+1)` -/
def P16964987193441781902.Spec : Prop :=
  ∀ n, P16964987193441781902.a n = A294113 (n + 1)

theorem P16964987193441781902.correct : P16964987193441781902.Spec := by
  intro n
  simp only [A294113, Nat.add_sub_cancel]

end A294113

/-!
# A294114: Sum of the larger parts of the partitions of 2n into two parts with smaller part prime.

The programs for A294114, the canonical program `A294114.P16008360445221424113` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294114 has offset 1).

The definition of A294114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294114.P16008360445221424113

`Δ[n*(A002815(n)-n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A294114

/-- `Δ[n*(A002815(n)-n)]` -/
def P16008360445221424113.Spec : Prop :=
  ∀ n, P16008360445221424113.a n = A294114 (n + 1)

theorem P16008360445221424113.correct : P16008360445221424113.Spec := by
  intro n
  simp only [A294114, Nat.add_sub_cancel]

end A294114

/-! ## A294114.P2814633996327223190

`A294013(n+1)+A034387(n+1)`
-/

namespace A294114.P2814633996327223190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294013 (n + 1) + A034387 (n + 1)

end

end A294114.P2814633996327223190

namespace A294114

/-- `A294013(n+1)+A034387(n+1)` -/
def P2814633996327223190.Spec : Prop :=
  ∀ n, P2814633996327223190.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P9591994953548375741

`A046992(n+1)+n*A000720(n+1)`
-/

namespace A294114.P9591994953548375741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) + (n : ℤ) * A000720 (n + 1)

end

end A294114.P9591994953548375741

namespace A294114

/-- `A046992(n+1)+n*A000720(n+1)` -/
def P9591994953548375741.Spec : Prop :=
  ∀ n, P9591994953548375741.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P7837489829797894464

`A046992(n+1)+A128913(n+1)-A000720(n+1)`
-/

namespace A294114.P7837489829797894464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) + (A128913 (n + 1) - A000720 (n + 1))

end

end A294114.P7837489829797894464

namespace A294114

/-- `A046992(n+1)+A128913(n+1)-A000720(n+1)` -/
def P7837489829797894464.Spec : Prop :=
  ∀ n, P7837489829797894464.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P14989524233362102578

`Δ[n*∑[A230980(n)]]`
-/

namespace A294114.P14989524233362102578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294114.P14989524233362102578

namespace A294114

/-- `Δ[n*∑[A230980(n)]]` -/
def P14989524233362102578.Spec : Prop :=
  ∀ n, P14989524233362102578.a n = A294114 (n + 1)

theorem P14989524233362102578.correct : P14989524233362102578.Spec := by
  intro n
  simp only [A294114, Nat.add_sub_cancel, A294114.P14989524233362102578.f2, A294114.P14989524233362102578.f1, A294114.P14989524233362102578.a, A294114.P16008360445221424113.f1, A294114.P16008360445221424113.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A294114

/-! ## A294114.P15892696372364346268

`∑[A230980(n+1)]+n*A230980(n+1)`
-/

namespace A294114.P15892696372364346268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A230980 (n + 1)

end

end A294114.P15892696372364346268

namespace A294114

/-- `∑[A230980(n+1)]+n*A230980(n+1)` -/
def P15892696372364346268.Spec : Prop :=
  ∀ n, P15892696372364346268.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P10612206467100417836

`A294109(2*(n+1))`
-/

namespace A294114.P10612206467100417836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294109 (2 * (n + 1))

end

end A294114.P10612206467100417836

namespace A294114

/-- `A294109(2*(n+1))` -/
def P10612206467100417836.Spec : Prop :=
  ∀ n, P10612206467100417836.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P14061482757210047970

`A294013(n+1)+A063960(2*(n+1))`
-/

namespace A294114.P14061482757210047970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294013 (n + 1) + A063960 (2 * (n + 1))

end

end A294114.P14061482757210047970

namespace A294114

/-- `A294013(n+1)+A063960(2*(n+1))` -/
def P14061482757210047970.Spec : Prop :=
  ∀ n, P14061482757210047970.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P12006831583397368656

`A294023(2*(n+1))+A063960(2*(n+1))`
-/

namespace A294114.P12006831583397368656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294023 (2 * (n + 1)) + A063960 (2 * (n + 1))

end

end A294114.P12006831583397368656

namespace A294114

/-- `A294023(2*(n+1))+A063960(2*(n+1))` -/
def P12006831583397368656.Spec : Prop :=
  ∀ n, P12006831583397368656.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P17606452774929532824

`Δ[n*∑[A242096(2*n+1)]]`
-/

namespace A294114.P17606452774929532824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294114.P17606452774929532824

namespace A294114

/-- `Δ[n*∑[A242096(2*n+1)]]` -/
def P17606452774929532824.Spec : Prop :=
  ∀ n, P17606452774929532824.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P14031194194149610265

`A014682(Δ[n*A294023(2*(n+1))])`
-/

namespace A294114.P14031194194149610265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A294114.P14031194194149610265

namespace A294114

/-- `A014682(Δ[n*A294023(2*(n+1))])` -/
def P14031194194149610265.Spec : Prop :=
  ∀ n, P14031194194149610265.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P166010406514400082

`A001281(Δ[n*A294023(2*(n+1))])`
-/

namespace A294114.P166010406514400082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A294114.P166010406514400082

namespace A294114

/-- `A001281(Δ[n*A294023(2*(n+1))])` -/
def P166010406514400082.Spec : Prop :=
  ∀ n, P166010406514400082.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P17357621058672270482

`A004525(Δ[n*A294023(2*(n+1))])`
-/

namespace A294114.P17357621058672270482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A294114.P17357621058672270482

namespace A294114

/-- `A004525(Δ[n*A294023(2*(n+1))])` -/
def P17357621058672270482.Spec : Prop :=
  ∀ n, P17357621058672270482.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P9630700588776751889

`A004526(Δ[n*A294023(2*(n+1))])`
-/

namespace A294114.P9630700588776751889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A294114.P9630700588776751889

namespace A294114

/-- `A004526(Δ[n*A294023(2*(n+1))])` -/
def P9630700588776751889.Spec : Prop :=
  ∀ n, P9630700588776751889.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P9293578605173576414

`A006370(Δ[n*A294023(2*(n+1))])`
-/

namespace A294114.P9293578605173576414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A294114.P9293578605173576414

namespace A294114

/-- `A006370(Δ[n*A294023(2*(n+1))])` -/
def P9293578605173576414.Spec : Prop :=
  ∀ n, P9293578605173576414.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P13346847853389743355

`A025480(Δ[n*A294023(2*(n+1))])`
-/

namespace A294114.P13346847853389743355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A294114.P13346847853389743355

namespace A294114

/-- `A025480(Δ[n*A294023(2*(n+1))])` -/
def P13346847853389743355.Spec : Prop :=
  ∀ n, P13346847853389743355.a n = A294114 (n + 1)

end A294114

/-! ## A294114.P11100625540028501736

`A110654(Δ[n*A294023(2*(n+1))])`
-/

namespace A294114.P11100625540028501736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A294114.P11100625540028501736

namespace A294114

/-- `A110654(Δ[n*A294023(2*(n+1))])` -/
def P11100625540028501736.Spec : Prop :=
  ∀ n, P11100625540028501736.a n = A294114 (n + 1)

end A294114

/-!
# A294115: G.f.: exp( Sum_{n>=1} L(n) * x^n/n ), where Sum_{n>=1} L(n) * x^n/n! = Series_Reversion( log(1 + x/A(x)) ).

The programs for A294115, there is no canonical definition to state claims against.
-/

/-! ## A294115.P12535210394233699393

`A054899(A001187(n))+A003046(n)`
-/

namespace A294115.P12535210394233699393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A001187 n).toNat + A003046 n

end

end A294115.P12535210394233699393

/-!
# A294116: Fibonacci sequence beginning 2, 21.

The programs for A294116, the canonical program `A294116.P16614992146902971364` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294116 has offset 0).

The definition of A294116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294116.P16614992146902971364

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=21`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294116

/-- `a(n-1)+a(n-2)` -/
def P16614992146902971364.Spec : Prop :=
  ∀ n, (P16614992146902971364.a n : ℤ) = A294116 n

theorem P16614992146902971364.correct : P16614992146902971364.Spec := by
  intro n
  simp only [A294116]

end A294116

/-! ## A294116.P9327386091919213283

`ogf((2+19x)/(1-x-x^2))`
-/

namespace A294116.P9327386091919213283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 19] [1, -1, -1] n

end

end A294116.P9327386091919213283

namespace A294116

/-- `ogf((2+19x)/(1-x-x^2))` -/
def P9327386091919213283.Spec : Prop :=
  ∀ n, P9327386091919213283.a n = A294116 n

end A294116

/-! ## A294116.P17887443935726033711

`A022107(n)+A000285(n)`
-/

namespace A294116.P17887443935726033711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A000285 n

end

end A294116.P17887443935726033711

namespace A294116

/-- `A022107(n)+A000285(n)` -/
def P17887443935726033711.Spec : Prop :=
  ∀ n, P17887443935726033711.a n = A294116 n

end A294116

/-! ## A294116.P14238528629241446507

`A022354(n)+A000032(n)`
-/

namespace A294116.P14238528629241446507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A000032 n

end

end A294116.P14238528629241446507

namespace A294116

/-- `A022354(n)+A000032(n)` -/
def P14238528629241446507.Spec : Prop :=
  ∀ n, P14238528629241446507.a n = A294116 n

end A294116

/-! ## A294116.P4545513790620814340

`A022372(n)+A000045(n)`
-/

namespace A294116.P4545513790620814340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022372 n + A000045 n

end

end A294116.P4545513790620814340

namespace A294116

/-- `A022372(n)+A000045(n)` -/
def P4545513790620814340.Spec : Prop :=
  ∀ n, P4545513790620814340.a n = A294116 n

end A294116

/-! ## A294116.P10067009112275070219

`A022350(n)+A001060(n)`
-/

namespace A294116.P10067009112275070219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A001060 n

end

end A294116.P10067009112275070219

namespace A294116

/-- `A022350(n)+A001060(n)` -/
def P10067009112275070219.Spec : Prop :=
  ∀ n, P10067009112275070219.a n = A294116 n

end A294116

/-! ## A294116.P11422696979562986732

`A022352(n)+A020695(n)`
-/

namespace A294116.P11422696979562986732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A020695 n

end

end A294116.P11422696979562986732

namespace A294116

/-- `A022352(n)+A020695(n)` -/
def P11422696979562986732.Spec : Prop :=
  ∀ n, P11422696979562986732.a n = A294116 n

end A294116

/-! ## A294116.P14731363909528316424

`A022101(n)+A022100(n)`
-/

namespace A294116.P14731363909528316424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022100 n

end

end A294116.P14731363909528316424

namespace A294116

/-- `A022101(n)+A022100(n)` -/
def P14731363909528316424.Spec : Prop :=
  ∀ n, P14731363909528316424.a n = A294116 n

end A294116

/-! ## A294116.P3526189671645607007

`A022102(n)+A022099(n)`
-/

namespace A294116.P3526189671645607007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022099 n

end

end A294116.P3526189671645607007

namespace A294116

/-- `A022102(n)+A022099(n)` -/
def P3526189671645607007.Spec : Prop :=
  ∀ n, P3526189671645607007.a n = A294116 n

end A294116

/-! ## A294116.P6221137363064405054

`A022103(n)+A022098(n)`
-/

namespace A294116.P6221137363064405054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022098 n

end

end A294116.P6221137363064405054

namespace A294116

/-- `A022103(n)+A022098(n)` -/
def P6221137363064405054.Spec : Prop :=
  ∀ n, P6221137363064405054.a n = A294116 n

end A294116

/-! ## A294116.P5322538283848702078

`A022104(n)+A022097(n)`
-/

namespace A294116.P5322538283848702078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022097 n

end

end A294116.P5322538283848702078

namespace A294116

/-- `A022104(n)+A022097(n)` -/
def P5322538283848702078.Spec : Prop :=
  ∀ n, P5322538283848702078.a n = A294116 n

end A294116

/-! ## A294116.P2017244304594625916

`A022105(n)+A022096(n)`
-/

namespace A294116.P2017244304594625916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022096 n

end

end A294116.P2017244304594625916

namespace A294116

/-- `A022105(n)+A022096(n)` -/
def P2017244304594625916.Spec : Prop :=
  ∀ n, P2017244304594625916.a n = A294116 n

end A294116

/-! ## A294116.P10978145015169027104

`A022106(n)+A022095(n)`
-/

namespace A294116.P10978145015169027104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022095 n

end

end A294116.P10978145015169027104

namespace A294116

/-- `A022106(n)+A022095(n)` -/
def P10978145015169027104.Spec : Prop :=
  ∀ n, P10978145015169027104.a n = A294116 n

end A294116

/-! ## A294116.P13151922282043019382

`A022115(n)+A022093(n)`
-/

namespace A294116.P13151922282043019382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022093 n

end

end A294116.P13151922282043019382

namespace A294116

/-- `A022115(n)+A022093(n)` -/
def P13151922282043019382.Spec : Prop :=
  ∀ n, P13151922282043019382.a n = A294116 n

end A294116

/-! ## A294116.P8684183229676967583

`A022116(n)+A022091(n)`
-/

namespace A294116.P8684183229676967583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022091 n

end

end A294116.P8684183229676967583

namespace A294116

/-- `A022116(n)+A022091(n)` -/
def P8684183229676967583.Spec : Prop :=
  ∀ n, P8684183229676967583.a n = A294116 n

end A294116

/-! ## A294116.P8988825832451533891

`A022117(n)+A022089(n)`
-/

namespace A294116.P8988825832451533891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022089 n

end

end A294116.P8988825832451533891

namespace A294116

/-- `A022117(n)+A022089(n)` -/
def P8988825832451533891.Spec : Prop :=
  ∀ n, P8988825832451533891.a n = A294116 n

end A294116

/-! ## A294116.P12951767427646810691

`A022118(n)+A022087(n)`
-/

namespace A294116.P12951767427646810691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022087 n

end

end A294116.P12951767427646810691

namespace A294116

/-- `A022118(n)+A022087(n)` -/
def P12951767427646810691.Spec : Prop :=
  ∀ n, P12951767427646810691.a n = A294116 n

end A294116

/-! ## A294116.P3471584143451971051

`A022346(n)+A022114(n)`
-/

namespace A294116.P3471584143451971051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022114 n

end

end A294116.P3471584143451971051

namespace A294116

/-- `A022346(n)+A022114(n)` -/
def P3471584143451971051.Spec : Prop :=
  ∀ n, P3471584143451971051.a n = A294116 n

end A294116

/-! ## A294116.P11283225033272324337

`A022348(n)+A022113(n)`
-/

namespace A294116.P11283225033272324337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022113 n

end

end A294116.P11283225033272324337

namespace A294116

/-- `A022348(n)+A022113(n)` -/
def P11283225033272324337.Spec : Prop :=
  ∀ n, P11283225033272324337.a n = A294116 n

end A294116

/-! ## A294116.P6313492179476725685

`A022349(n)+A022112(n)`
-/

namespace A294116.P6313492179476725685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022112 n

end

end A294116.P6313492179476725685

namespace A294116

/-- `A022349(n)+A022112(n)` -/
def P6313492179476725685.Spec : Prop :=
  ∀ n, P6313492179476725685.a n = A294116 n

end A294116

/-!
# A294118: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(k*((1+x)^k - 1)).

The programs for A294118, there is no canonical definition to state claims against.
-/

/-! ## A294118.P11952410822406262441

`A333769(A250120(n+1))*A383818(n)`
-/

namespace A294118.P11952410822406262441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A250120 (n + 1)).toNat * A383818 n

end

end A294118.P11952410822406262441

/-! ## A294118.P16295183925225794596

`A250068(A114381(3*n+5))*A383818(n)`
-/

namespace A294118.P16295183925225794596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A114381 (3 * n + 5)).toNat * A383818 n

end

end A294118.P16295183925225794596

/-! ## A294118.P9287191183181649010

`A066186(A213276(n))%A339881(3*(n+1))`
-/

namespace A294118.P9287191183181649010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066186 (A213276 n).toNat) (A339881 (3 * (n + 1)))

end

end A294118.P9287191183181649010

/-! ## A294118.P4367510998524429551

`A382986(A395232(n))`
-/

namespace A294118.P4367510998524429551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382986 (A395232 n).toNat

end

end A294118.P4367510998524429551

/-!
# A294119: Expansion of e.g.f.: exp(2*((1+x)^2 - 1)).

The programs for A294119, the canonical program `A294119.P3427096031444598624` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294119 has offset 0).

The definition of A294119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294119.P3427096031444598624

`4*a(n-1)+4*(n-1)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294119

/-- `4*a(n-1)+4*(n-1)*a(n-2)` -/
def P3427096031444598624.Spec : Prop :=
  ∀ n, P3427096031444598624.a n = A294119 n

theorem P3427096031444598624.correct : P3427096031444598624.Spec := by
  intro n
  simp only [A294119]

end A294119

/-! ## A294119.P4486947680898998306

`4*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A294119.P4486947680898998306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A294119.P4486947680898998306

namespace A294119

/-- `4*(a(n-1)+(n-1)*a(n-2))` -/
def P4486947680898998306.Spec : Prop :=
  ∀ n, P4486947680898998306.a n = A294119 n

theorem P4486947680898998306.correct : P4486947680898998306.Spec := by
  intro n
  simp only [A294119, Nat.add_sub_cancel, A294119.P4486947680898998306.a, A294119.P3427096031444598624.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A294119

/-! ## A294119.P10571532327671955160

`4*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A294119.P10571532327671955160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A294119.P10571532327671955160

namespace A294119

/-- `4*(a(n-1)-(a(n-2)-n*a(n-2)))` -/
def P10571532327671955160.Spec : Prop :=
  ∀ n, P10571532327671955160.a n = A294119 n

end A294119

/-! ## A294119.P16637963894172794211

`2^n*A005425(n)`
-/

namespace A294119.P16637963894172794211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005425 n

end

end A294119.P16637963894172794211

namespace A294119

/-- `2^n*A005425(n)` -/
def P16637963894172794211.Spec : Prop :=
  ∀ n, P16637963894172794211.a n = A294119 n

end A294119

/-! ## A294119.P10194193672348813788

`2^(n-1)*A027412(n+1)`
-/

namespace A294119.P10194193672348813788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A027412 (n + 1) : ℚ)

end

end A294119.P10194193672348813788

namespace A294119

/-- `2^(n-1)*A027412(n+1)` -/
def P10194193672348813788.Spec : Prop :=
  ∀ n, P10194193672348813788.a n = (A294119 n : ℚ)

end A294119

/-! ## A294119.P5507562590676965999

`∏[(n-1)/a(n-1)+2]*A000079(n)` with `a(0)=1`
-/

namespace A294119.P5507562590676965999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A294119.P5507562590676965999

namespace A294119

/-- `∏[(n-1)/a(n-1)+2]*A000079(n)` -/
def P5507562590676965999.Spec : Prop :=
  ∀ n, P5507562590676965999.a n = (A294119 n : ℚ)

end A294119

/-! ## A294119.P3844362782646674755

`lcm(A005425(n), A056450(n))`
-/

namespace A294119.P3844362782646674755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005425 n) (A056450 n)

end

end A294119.P3844362782646674755

namespace A294119

/-- `lcm(A005425(n), A056450(n))` -/
def P3844362782646674755.Spec : Prop :=
  ∀ n, (P3844362782646674755.a n : ℤ) = A294119 n

end A294119

/-! ## A294119.P11219462665605800843

`∑[A238803(n)]*A000079(n)`
-/

namespace A294119.P11219462665605800843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A294119.P11219462665605800843

namespace A294119

/-- `∑[A238803(n)]*A000079(n)` -/
def P11219462665605800843.Spec : Prop :=
  ∀ n, P11219462665605800843.a n = A294119 n

end A294119

/-! ## A294119.P17949797183285719623

`A005425(n)*A011782(n+1)`
-/

namespace A294119.P17949797183285719623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 n * A011782 (n + 1)

end

end A294119.P17949797183285719623

namespace A294119

/-- `A005425(n)*A011782(n+1)` -/
def P17949797183285719623.Spec : Prop :=
  ∀ n, P17949797183285719623.a n = A294119 n

end A294119

/-! ## A294119.P4805378073412145305

`A294118(∑[n+3])`
-/

namespace A294119.P4805378073412145305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294119.P4805378073412145305

namespace A294119

/-- `A294118(∑[n+3])` -/
def P4805378073412145305.Spec : Prop :=
  ∀ n, P4805378073412145305.a n = A294119 n

end A294119

/-!
# A294120: E.g.f.: exp(3*((1+x)^3 - 1)).

The programs for A294120, there is no canonical definition to state claims against.
-/

/-! ## A294120.P17643676295253439546

`A294118(∑[n+3]+n+3)`
-/

namespace A294120.P17643676295253439546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294118 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294120.P17643676295253439546

/-! ## A294120.P9499780880548127745

`record[A294118(abs(A046691(n)))]`
-/

namespace A294120.P9499780880548127745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294118 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294120.P9499780880548127745

/-! ## A294120.P11697459627312900162

`or(1, A294118(A046691(n+2)))`
-/

namespace A294120.P11697459627312900162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294118 (A046691 (n + 2)).toNat)

end

end A294120.P11697459627312900162

/-! ## A294120.P6610605211970448431

`A057427(n+1)*A294118(A046691(n+2))`
-/

namespace A294120.P6610605211970448431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A294118 (A046691 (n + 2)).toNat

end

end A294120.P6610605211970448431

/-! ## A294120.P13305936036826658735

`A007318(A112367(n))*A294118(A046691(n+2))`
-/

namespace A294120.P13305936036826658735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A112367 n).toNat * A294118 (A046691 (n + 2)).toNat

end

end A294120.P13305936036826658735

/-!
# A294122: Numbers k such that 3*10^k + 37 is prime.

The programs for A294122, there is no canonical definition to state claims against.
-/

/-! ## A294122.P1040687048182886219

`record[gcd(A007928(n+5), A007969(n+2))]`
-/

namespace A294122.P1040687048182886219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007928 (n + 5)) (A007969 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294122.P1040687048182886219

/-!
# A294129: Numbers n for which exactly one length minimal language exists having exactly n nonempty words over a countably infinite alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294129, the canonical program `A294129.P3157484297515965198` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294129 has offset 1).

The definition of A294129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294129.P10936508526624259593

`2*a(n-1)+(n-2)*a(n-2)-(n-1)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A294129.P10936508526624259593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 2) * a (n - 2) - ((n : ℤ) - 1) * a (n - 3)

end

end A294129.P10936508526624259593

namespace A294129

/-- `2*a(n-1)+(n-2)*a(n-2)-(n-1)*a(n-3)` -/
def P10936508526624259593.Spec : Prop :=
  ∀ n, P10936508526624259593.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P3057135744169833888

`A245176(n)-1`
-/

namespace A294129.P3057135744169833888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n - 1

end

end A294129.P3057135744169833888

namespace A294129

/-- `A245176(n)-1` -/
def P3057135744169833888.Spec : Prop :=
  ∀ n, P3057135744169833888.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P3157484297515965198

`a(n-1)+A000085(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A294129

/-- `a(n-1)+A000085(n)` -/
def P3157484297515965198.Spec : Prop :=
  ∀ n, P3157484297515965198.a n = A294129 (n + 1)

theorem P3157484297515965198.correct : P3157484297515965198.Spec := by
  intro n
  simp only [A294129, Nat.add_sub_cancel]

end A294129

/-! ## A294129.P2204187682792673903

`∑[∏[(n-1)/a(n-1)+1]]-1` with `a(0)=1`
-/

namespace A294129.P2204187682792673903
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((n : ℤ) - 1 : ℚ) / f2 (n - 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294129.P2204187682792673903

namespace A294129

/-- `∑[∏[(n-1)/a(n-1)+1]]-1` -/
def P2204187682792673903.Spec : Prop :=
  ∀ n, P2204187682792673903.a n = (A294129 (n + 1) : ℚ)

end A294129

/-! ## A294129.P11751155019159578012

`∑[a(n-1)+(n-1)*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A294129.P11751155019159578012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) + ((n : ℤ) - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294129.P11751155019159578012

namespace A294129

/-- `∑[a(n-1)+(n-1)*a(n-2)]` -/
def P11751155019159578012.Spec : Prop :=
  ∀ n, P11751155019159578012.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P16938277642753882238

`∑[A000085(n)]-1`
-/

namespace A294129.P16938277642753882238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294129.P16938277642753882238

namespace A294129

/-- `∑[A000085(n)]-1` -/
def P16938277642753882238.Spec : Prop :=
  ∀ n, P16938277642753882238.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P12076136537536812318

`∑[A293808(∑[n]+1)]`
-/

namespace A294129.P12076136537536812318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294129.P12076136537536812318

namespace A294129

/-- `∑[A293808(∑[n]+1)]` -/
def P12076136537536812318.Spec : Prop :=
  ∀ n, P12076136537536812318.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P9166090329271189021

`∑[A099020(∑[n])]-1`
-/

namespace A294129.P9166090329271189021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294129.P9166090329271189021

namespace A294129

/-- `∑[A099020(∑[n])]-1` -/
def P9166090329271189021.Spec : Prop :=
  ∀ n, P9166090329271189021.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P14656693996487296137

`∑[record[A293815(n+1)]]`
-/

namespace A294129.P14656693996487296137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294129.P14656693996487296137

namespace A294129

/-- `∑[record[A293815(n+1)]]` -/
def P14656693996487296137.Spec : Prop :=
  ∀ n, P14656693996487296137.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P5275392166542083379

`a(n-1)+A001189(n)+1` with `a(0)=0`
-/

namespace A294129.P5275392166542083379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A001189 n + 1)

end

end A294129.P5275392166542083379

namespace A294129

/-- `a(n-1)+A001189(n)+1` -/
def P5275392166542083379.Spec : Prop :=
  ∀ n, P5275392166542083379.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P3741371643398825583

`∑[A293808(∑[A254667(n)])]-1`
-/

namespace A294129.P3741371643398825583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294129.P3741371643398825583

namespace A294129

/-- `∑[A293808(∑[A254667(n)])]-1` -/
def P3741371643398825583.Spec : Prop :=
  ∀ n, P3741371643398825583.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P6413227893968506313

`∑[A000085(n)%A000085(n+1)]`
-/

namespace A294129.P6413227893968506313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000085 n) (A000085 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294129.P6413227893968506313

namespace A294129

/-- `∑[A000085(n)%A000085(n+1)]` -/
def P6413227893968506313.Spec : Prop :=
  ∀ n, P6413227893968506313.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P1568235300215992949

`A000085(n+1)-(A067897(n+1)+1)`
-/

namespace A294129.P1568235300215992949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) - (A067897 (n + 1) + 1)

end

end A294129.P1568235300215992949

namespace A294129

/-- `A000085(n+1)-(A067897(n+1)+1)` -/
def P1568235300215992949.Spec : Prop :=
  ∀ n, P1568235300215992949.a n = A294129 (n + 1)

end A294129

/-! ## A294129.P3580704259639696345

`∑[A000085(n)%A217322(n)]`
-/

namespace A294129.P3580704259639696345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000085 n) (A217322 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294129.P3580704259639696345

namespace A294129

/-- `∑[A000085(n)%A217322(n)]` -/
def P3580704259639696345.Spec : Prop :=
  ∀ n, P3580704259639696345.a n = A294129 (n + 1)

end A294129

/-!
# A294130: Numbers k such that 5*10^k - 51 is prime.

The programs for A294130, there is no canonical definition to state claims against.
-/

/-! ## A294130.P3755376762595603903

`A286478(A244991(n+1)*A286508(n))`
-/

namespace A294130.P3755376762595603903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286478 (A244991 (n + 1) * A286508 n).toNat

end

end A294130.P3755376762595603903

/-!
# A294132: Sorted list of prime factors of numbers of the form 3^(2^m) + 2^(2^m) with m >= 0.

The programs for A294132, there is no canonical definition to state claims against.
-/

/-! ## A294132.P8011613401901587036

`A162597(A042551(n))`
-/

namespace A294132.P8011613401901587036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162597 (A042551 n).toNat

end

end A294132.P8011613401901587036

/-!
# A294133: Sorted list of prime factors of numbers of the form 5^(2^m) + 2^(2^m) with m >= 0.

The programs for A294133, there is no canonical definition to state claims against.
-/

/-! ## A294133.P11458309835822589938

`record[A122118(A050244(floor(ϕ*(n+1))))]`
-/

namespace A294133.P11458309835822589938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122118 (A050244 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294133.P11458309835822589938

/-! ## A294133.P12381495898722659296

`eq[n, A122119(A023416(n))]`
-/

namespace A294133.P12381495898722659296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122119 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294133.P12381495898722659296

/-!
# A294134: Sorted list of prime factors of numbers of the form 7^(2^m) + 2^(2^m) with m >= 0.

The programs for A294134, there is no canonical definition to state claims against.
-/

/-! ## A294134.P10662779099458531914

`A174010(A301693(n)+1)`
-/

namespace A294134.P10662779099458531914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174010 (A301693 n + 1).toNat

end

end A294134.P10662779099458531914

/-!
# A294135: Sorted list of prime factors of numbers of the form 9^(2^m) + 2^(2^m) with m >= 0.

The programs for A294135, there is no canonical definition to state claims against.
-/

/-! ## A294135.P8431509723280252251

`A265851(n+1)%(∑[3*a(∑[n]%n)-3]-1)` with `a(0)=25`
-/

namespace A294135.P8431509723280252251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265851 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294135.P8431509723280252251

/-!
# A294136: Sorted list of prime factors of numbers of the form 11^(2^m) + 2^(2^m) with m >= 0.

The programs for A294136, there is no canonical definition to state claims against.
-/

/-! ## A294136.P7448132775362051239

`∏{p}[A002716(n+1)², #]`
-/

namespace A294136.P7448132775362051239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002716 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A294136.P7448132775362051239

/-!
# A294137: Number of compositions (ordered partitions) of n into nontrivial divisors of n.

The programs for A294137, there is no canonical definition to state claims against.
-/

/-! ## A294137.P12549267788881080941

`A008647(n)*A303757(A342912(n))`
-/

namespace A294137.P12549267788881080941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 n * A303757 (A342912 n).toNat

end

end A294137.P12549267788881080941

/-! ## A294137.P15927235619281765384

`A003095(A293813(n))`
-/

namespace A294137.P15927235619281765384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 (A293813 n).toNat

end

end A294137.P15927235619281765384

/-! ## A294137.P1377367207434893801

`A352131(A325830(n))`
-/

namespace A294137.P1377367207434893801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A325830 n).toNat

end

end A294137.P1377367207434893801

/-! ## A294137.P8020748630547019814

`A165419(A293813(n)²)`
-/

namespace A294137.P8020748630547019814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165419 (A293813 n ^ 2).toNat

end

end A294137.P8020748630547019814

/-! ## A294137.P18420596198730756612

`A169994(2^A074206(n))`
-/

namespace A294137.P18420596198730756612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169994 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A074206 n : ℤ))).toNat

end

end A294137.P18420596198730756612

/-!
# A294138: Number of compositions (ordered partitions) of n into proper divisors of n.

The programs for A294138, there is no canonical definition to state claims against.
-/

/-! ## A294138.P1026568346165887442

`A100346(abs(1-n)+1)-1`
-/

namespace A294138.P1026568346165887442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A294138.P1026568346165887442

/-! ## A294138.P4704435487993676293

`abs(A100346(n)+A057428(n))`
-/

namespace A294138.P4704435487993676293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100346 n + A057428 n|

end

end A294138.P4704435487993676293

/-! ## A294138.P18071225404536563015

`abs(A054977(n)-A100346(n))`
-/

namespace A294138.P18071225404536563015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054977 n - A100346 n|

end

end A294138.P18071225404536563015

/-! ## A294138.P8966707184883045154

`abs(A057427(n)-A100346(n))`
-/

namespace A294138.P8966707184883045154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A100346 n|

end

end A294138.P8966707184883045154

/-! ## A294138.P11210166661166370814

`A000007(n)+A100346(n)-1`
-/

namespace A294138.P11210166661166370814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A100346 n - 1)

end

end A294138.P11210166661166370814

/-! ## A294138.P11925686303394455837

`A100346(n)+1-A100346(A242213(3*n+1))`
-/

namespace A294138.P11925686303394455837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 n + 1 - A100346 (A242213 (3 * n + 1)).toNat

end

end A294138.P11925686303394455837

/-!
# A294139: Sum of the areas of the distinct rectangles (and the areas of the squares on their sides) with positive integer sides such that L + W = n, W < L.

The programs for A294139, the canonical program `A294139.P6514505765153173041` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294139 has offset 1).

The definition of A294139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294139.P6514505765153173041

`(n+1)*(4-21*(n+1)+12*(n+1)²-5*(n+1)*(-1)^(n+1))/16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294139

/-- `(n+1)*(4-21*(n+1)+12*(n+1)²-5*(n+1)*(-1)^(n+1))/16` -/
def P6514505765153173041.Spec : Prop :=
  ∀ n, P6514505765153173041.a n = (A294139 (n + 1) : ℚ)

end A294139

/-! ## A294139.P8828133645584805103

`A331987(n)-A302766(n+1)`
-/

namespace A294139.P8828133645584805103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n - A302766 (n + 1)

end

end A294139.P8828133645584805103

namespace A294139

/-- `A331987(n)-A302766(n+1)` -/
def P8828133645584805103.Spec : Prop :=
  ∀ n, P8828133645584805103.a n = A294139 (n + 1)

end A294139

/-!
# A294140: Number of total dominating sets in the n-crown graph.

The programs for A294140, the canonical program `A294140.P7745027120426531943` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294140 has offset 1).

The definition of A294140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294140.P7745027120426531943

`(1-2^(n+1)+n+1)²`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294140

/-- `(1-2^(n+1)+n+1)²` -/
def P7745027120426531943.Spec : Prop :=
  ∀ n, P7745027120426531943.a n = A294140 (n + 1)

theorem P7745027120426531943.correct : P7745027120426531943.Spec := by
  intro n
  simp only [A294140, Nat.add_sub_cancel]

end A294140

/-! ## A294140.P14428574431876770929

`xor(n+1, ∑[2^n])^2`
-/

namespace A294140.P14428574431876770929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P14428574431876770929

namespace A294140

/-- `xor(n+1, ∑[2^n])^2` -/
def P14428574431876770929.Spec : Prop :=
  ∀ n, (P14428574431876770929.a n : ℤ) = A294140 (n + 1)

end A294140

/-! ## A294140.P18022168631393698128

`∑[or(n, 2^n-1)]^2`
-/

namespace A294140.P18022168631393698128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P18022168631393698128

namespace A294140

/-- `∑[or(n, 2^n-1)]^2` -/
def P18022168631393698128.Spec : Prop :=
  ∀ n, P18022168631393698128.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P5649670451676731795

`(xor(1, ∑[2^n])-n)^2`
-/

namespace A294140.P5649670451676731795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)) ^ 2

end

end A294140.P5649670451676731795

namespace A294140

/-- `(xor(1, ∑[2^n])-n)^2` -/
def P5649670451676731795.Spec : Prop :=
  ∀ n, P5649670451676731795.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P6452558007150849994

`floor(record[(2^(n-1)-n)²])`
-/

namespace A294140.P6452558007150849994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A294140.P6452558007150849994

namespace A294140

/-- `floor(record[(2^(n-1)-n)²])` -/
def P6452558007150849994.Spec : Prop :=
  ∀ n, P6452558007150849994.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P13673577955918480886

`round(record[(2^(n-1)-n)²])`
-/

namespace A294140.P13673577955918480886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A294140.P13673577955918480886

namespace A294140

/-- `round(record[(2^(n-1)-n)²])` -/
def P13673577955918480886.Spec : Prop :=
  ∀ n, P13673577955918480886.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P8374189237830352400

`floor(∑[2*a(n-1)+1]²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A294140.P8374189237830352400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P8374189237830352400

namespace A294140

/-- `floor(∑[2*a(n-1)+1]²)` -/
def P8374189237830352400.Spec : Prop :=
  ∀ n, (P8374189237830352400.a n : ℤ) = A294140 (n + 1)

end A294140

/-! ## A294140.P14532246730788155278

`ceil(∑[2*a(n-1)+1]²)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A294140.P14532246730788155278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P14532246730788155278

namespace A294140

/-- `ceil(∑[2*a(n-1)+1]²)` -/
def P14532246730788155278.Spec : Prop :=
  ∀ n, (P14532246730788155278.a n : ℤ) = A294140 (n + 1)

end A294140

/-! ## A294140.P12723839798226691662

`round(∑[2*a(n-1)+1]²)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A294140.P12723839798226691662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P12723839798226691662

namespace A294140

/-- `round(∑[2*a(n-1)+1]²)` -/
def P12723839798226691662.Spec : Prop :=
  ∀ n, (P12723839798226691662.a n : ℤ) = A294140 (n + 1)

end A294140

/-! ## A294140.P14049232625098231172

`floor(∑[∑[2*a(n-1)]]²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A294140.P14049232625098231172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P14049232625098231172

namespace A294140

/-- `floor(∑[∑[2*a(n-1)]]²)` -/
def P14049232625098231172.Spec : Prop :=
  ∀ n, (P14049232625098231172.a n : ℤ) = A294140 (n + 1)

end A294140

/-! ## A294140.P5621945479673891973

`floor(∑[a(n-1)+a(n-1)+1]²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A294140.P5621945479673891973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P5621945479673891973

namespace A294140

/-- `floor(∑[a(n-1)+a(n-1)+1]²)` -/
def P5621945479673891973.Spec : Prop :=
  ∀ n, (P5621945479673891973.a n : ℤ) = A294140 (n + 1)

end A294140

/-! ## A294140.P940233334713748686

`floor(∑[a(n-1)-(1-a(n-1))]²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A294140.P940233334713748686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P940233334713748686

namespace A294140

/-- `floor(∑[a(n-1)-(1-a(n-1))]²)` -/
def P940233334713748686.Spec : Prop :=
  ∀ n, P940233334713748686.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P10250640043890791346

`∑[A000079(n)-1]^2`
-/

namespace A294140.P10250640043890791346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P10250640043890791346

namespace A294140

/-- `∑[A000079(n)-1]^2` -/
def P10250640043890791346.Spec : Prop :=
  ∀ n, P10250640043890791346.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P3042737146779061835

`∑[floor(A033484(n)/3)]^2`
-/

namespace A294140.P3042737146779061835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033484 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P3042737146779061835

namespace A294140

/-- `∑[floor(A033484(n)/3)]^2` -/
def P3042737146779061835.Spec : Prop :=
  ∀ n, P3042737146779061835.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P11269077373665900110

`A286778(n)-A047520(n)`
-/

namespace A294140.P11269077373665900110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286778 n - A047520 n

end

end A294140.P11269077373665900110

namespace A294140

/-- `A286778(n)-A047520(n)` -/
def P11269077373665900110.Spec : Prop :=
  ∀ n, P11269077373665900110.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P4474669998413045389

`∑[A000225(n)*A050488(n)]`
-/

namespace A294140.P4474669998413045389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A050488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294140.P4474669998413045389

namespace A294140

/-- `∑[A000225(n)*A050488(n)]` -/
def P4474669998413045389.Spec : Prop :=
  ∀ n, P4474669998413045389.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P6227141256286327048

`A302761(n+1)-A126646(n)`
-/

namespace A294140.P6227141256286327048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302761 (n + 1) - A126646 n

end

end A294140.P6227141256286327048

namespace A294140

/-- `A302761(n+1)-A126646(n)` -/
def P6227141256286327048.Spec : Prop :=
  ∀ n, P6227141256286327048.a n = A294140 (n + 1)

theorem P6227141256286327048.correct : P6227141256286327048.Spec := by
  intro n
  simp only [A294140, Nat.add_sub_cancel, A294140.P6227141256286327048.a, A294140.P7745027120426531943.a, A126646, A126646.P3746310572697910447.a, A302761, A302761.P16876720085967964429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294140

/-! ## A294140.P6129309882165330237

`∑[A198275(n)%A000079(n)]^2`
-/

namespace A294140.P6129309882165330237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198275 n) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294140.P6129309882165330237

namespace A294140

/-- `∑[A198275(n)%A000079(n)]^2` -/
def P6129309882165330237.Spec : Prop :=
  ∀ n, P6129309882165330237.a n = A294140 (n + 1)

end A294140

/-! ## A294140.P9134623536091685358

`A302761(n+1)-A000225(n+1)`
-/

namespace A294140.P9134623536091685358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302761 (n + 1) - A000225 (n + 1)

end

end A294140.P9134623536091685358

namespace A294140

/-- `A302761(n+1)-A000225(n+1)` -/
def P9134623536091685358.Spec : Prop :=
  ∀ n, P9134623536091685358.a n = A294140 (n + 1)

theorem P9134623536091685358.correct : P9134623536091685358.Spec := by
  intro n
  simp only [A294140, Nat.add_sub_cancel, A294140.P9134623536091685358.a, A294140.P7745027120426531943.a, A000225, A000225.P6535533121115206393.a, A302761, A302761.P16876720085967964429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294140

/-!
# A294142: Number of partitions of n into distinct odd parts that do not divide n.

The programs for A294142, there is no canonical definition to state claims against.
-/

/-! ## A294142.P3912084467843570425

`A147696(A234931(n)+2)`
-/

namespace A294142.P3912084467843570425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147696 (A234931 n + 2).toNat

end

end A294142.P3912084467843570425

/-! ## A294142.P6203500430153827991

`A147696(or(2, A234931(n)))`
-/

namespace A294142.P6203500430153827991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147696 (Int.lor 2 (A234931 n)).toNat

end

end A294142.P6203500430153827991

/-! ## A294142.P11208811622823343830

`and(∑[A174283(n+1)], A095986(n))`
-/

namespace A294142.P11208811622823343830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A095986 n)

end

end A294142.P11208811622823343830

/-! ## A294142.P547549855790354849

`C(A035942(n), A179613(A268261(n+1)))`
-/

namespace A294142.P547549855790354849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035942 n).toNat (A179613 (A268261 (n + 1)).toNat).toNat

end

end A294142.P547549855790354849

/-! ## A294142.P2356628489384183316

`A035942(n)*A087253(A047268(3*(n+1)))`
-/

namespace A294142.P2356628489384183316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 n * A087253 (A047268 (3 * (n + 1))).toNat

end

end A294142.P2356628489384183316

/-!
# A294143: Sum of the larger parts of the partitions of 2n into two parts with smaller part squarefree.

The programs for A294143, the canonical program `A294143.P16233858525841780267` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294143 has offset 1).

The definition of A294143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294143.P12713149682982086190

`∑[A016777(n)]-A294243(n+1)`
-/

namespace A294143.P12713149682982086190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294243 (n + 1)

end

end A294143.P12713149682982086190

namespace A294143

/-- `∑[A016777(n)]-A294243(n+1)` -/
def P12713149682982086190.Spec : Prop :=
  ∀ n, P12713149682982086190.a n = A294143 (n + 1)

theorem P12713149682982086190.correct : P12713149682982086190.Spec := by
  intro n
  simp only [A294143, Nat.add_sub_cancel, A294143.P12713149682982086190.f1, A294143.P12713149682982086190.a, A294143.P16233858525841780267.a, A016777, A016777.P9931792138852554157.a, A066779, A066779.P3857775328897892843.f2, A066779.P3857775328897892843.f1, A066779.P3857775328897892843.a, A294062, A294062.P1485664591062810294.f3, A294062.P1485664591062810294.f2, A294062.P1485664591062810294.f1, A294062.P1485664591062810294.a, A294243, A294243.P16303316000835451096.f1, A294243.P16303316000835451096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294143

/-! ## A294143.P16233858525841780267

`A294062(n+1)+A066779(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A294143

/-- `A294062(n+1)+A066779(n+1)` -/
def P16233858525841780267.Spec : Prop :=
  ∀ n, P16233858525841780267.a n = A294143 (n + 1)

theorem P16233858525841780267.correct : P16233858525841780267.Spec := by
  intro n
  simp only [A294143, Nat.add_sub_cancel]

end A294143

/-! ## A294143.P9742766541871030300

`Δ[n*∑[A013928(n+1)]]`
-/

namespace A294143.P9742766541871030300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294143.P9742766541871030300

namespace A294143

/-- `Δ[n*∑[A013928(n+1)]]` -/
def P9742766541871030300.Spec : Prop :=
  ∀ n, P9742766541871030300.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P17008455363960774408

`Δ[n*∑[A107079(n+1)-1]]`
-/

namespace A294143.P17008455363960774408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294143.P17008455363960774408

namespace A294143

/-- `Δ[n*∑[A107079(n+1)-1]]` -/
def P17008455363960774408.Spec : Prop :=
  ∀ n, P17008455363960774408.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P14343265428512616735

`A294146(2*(n+1))`
-/

namespace A294143.P14343265428512616735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (2 * (n + 1))

end

end A294143.P14343265428512616735

namespace A294143

/-- `A294146(2*(n+1))` -/
def P14343265428512616735.Spec : Prop :=
  ∀ n, P14343265428512616735.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P9925055430655712424

`record[A294146(xor(1, n)+1)]`
-/

namespace A294143.P9925055430655712424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294143.P9925055430655712424

namespace A294143

/-- `record[A294146(xor(1, n)+1)]` -/
def P9925055430655712424.Spec : Prop :=
  ∀ n, P9925055430655712424.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P7814874062107949481

`record[A294146(n+1)^(n%2)]`
-/

namespace A294143.P7814874062107949481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294143.P7814874062107949481

namespace A294143

/-- `record[A294146(n+1)^(n%2)]` -/
def P7814874062107949481.Spec : Prop :=
  ∀ n, P7814874062107949481.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P8749752959023097645

`record[A294146(2*A158416(n))]`
-/

namespace A294143.P8749752959023097645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (2 * A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294143.P8749752959023097645

namespace A294143

/-- `record[A294146(2*A158416(n))]` -/
def P8749752959023097645.Spec : Prop :=
  ∀ n, P8749752959023097645.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P16993688819782801053

`record[A294146(n+2)/A158416(n+1)]`
-/

namespace A294143.P16993688819782801053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294146 (n + 2) : ℚ) / (A158416 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294143.P16993688819782801053

namespace A294143

/-- `record[A294146(n+2)/A158416(n+1)]` -/
def P16993688819782801053.Spec : Prop :=
  ∀ n, P16993688819782801053.a n = (A294143 (n + 1) : ℚ)

end A294143

/-! ## A294143.P7772949353525803484

`A294060(2*(n+1))+A262871(2*(n+1))`
-/

namespace A294143.P7772949353525803484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (2 * (n + 1)) + A262871 (2 * (n + 1))

end

end A294143.P7772949353525803484

namespace A294143

/-- `A294060(2*(n+1))+A262871(2*(n+1))` -/
def P7772949353525803484.Spec : Prop :=
  ∀ n, P7772949353525803484.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P4622393961704859928

`A001318(2*n+1)-A294237(2*(n+1))`
-/

namespace A294143.P4622393961704859928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1) - A294237 (2 * (n + 1))

end

end A294143.P4622393961704859928

namespace A294143

/-- `A001318(2*n+1)-A294237(2*(n+1))` -/
def P4622393961704859928.Spec : Prop :=
  ∀ n, P4622393961704859928.a n = A294143 (n + 1)

end A294143

/-! ## A294143.P5030099864141727599

`Δ[n*∑[A262869(2*n+1)]]`
-/

namespace A294143.P5030099864141727599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294143.P5030099864141727599

namespace A294143

/-- `Δ[n*∑[A262869(2*n+1)]]` -/
def P5030099864141727599.Spec : Prop :=
  ∀ n, P5030099864141727599.a n = A294143 (n + 1)

end A294143

/-!
# A294144: Sum of the smaller parts of the partitions of 2n into two parts with larger part squarefree.

The programs for A294144, the canonical program `A294144.P17255563830095860438` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294144 has offset 1).

The definition of A294144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294144.P17255563830095860438

`∑[n+1]-A294244(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A294144

/-- `∑[n+1]-A294244(n+1)` -/
def P17255563830095860438.Spec : Prop :=
  ∀ n, P17255563830095860438.a n = A294144 (n + 1)

theorem P17255563830095860438.correct : P17255563830095860438.Spec := by
  intro n
  simp only [A294144, Nat.add_sub_cancel]

end A294144

/-! ## A294144.P16419795918561267252

`A000096(n)+1-A294244(n+1)`
-/

namespace A294144.P16419795918561267252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A294244 (n + 1))

end

end A294144.P16419795918561267252

namespace A294144

/-- `A000096(n)+1-A294244(n+1)` -/
def P16419795918561267252.Spec : Prop :=
  ∀ n, P16419795918561267252.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P7865574912026812044

`A167499(n)-(A294244(n+1)+5)`
-/

namespace A294144.P7865574912026812044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n - (A294244 (n + 1) + 5)

end

end A294144.P7865574912026812044

namespace A294144

/-- `A167499(n)-(A294244(n+1)+5)` -/
def P7865574912026812044.Spec : Prop :=
  ∀ n, P7865574912026812044.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P6602823342115503439

`A000124(n)-A294244(n+1)+n`
-/

namespace A294144.P6602823342115503439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A294244 (n + 1) + (n : ℤ)

end

end A294144.P6602823342115503439

namespace A294144

/-- `A000124(n)-A294244(n+1)+n` -/
def P6602823342115503439.Spec : Prop :=
  ∀ n, P6602823342115503439.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P12961811876260867582

`1-A294244(n+1)+A052905(n)-xor(1, 2*n)`
-/

namespace A294144.P12961811876260867582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294244 (n + 1) + (A052905 n - (Nat.xor 1 (2 * n) : ℤ))

end

end A294144.P12961811876260867582

namespace A294144

/-- `1-A294244(n+1)+A052905(n)-xor(1, 2*n)` -/
def P12961811876260867582.Spec : Prop :=
  ∀ n, P12961811876260867582.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P5006563811917869970

`A294145(2*(n+1))`
-/

namespace A294144.P5006563811917869970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294145 (2 * (n + 1))

end

end A294144.P5006563811917869970

namespace A294144

/-- `A294145(2*(n+1))` -/
def P5006563811917869970.Spec : Prop :=
  ∀ n, P5006563811917869970.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P3859421106151642218

`A000217(n+1)-A294236(2*(n+1))`
-/

namespace A294144.P3859421106151642218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A294236 (2 * (n + 1))

end

end A294144.P3859421106151642218

namespace A294144

/-- `A000217(n+1)-A294236(2*(n+1))` -/
def P3859421106151642218.Spec : Prop :=
  ∀ n, P3859421106151642218.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P106183216522811743

`A008795(2*n)-A294236(2*(n+1))`
-/

namespace A294144.P106183216522811743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n) - A294236 (2 * (n + 1))

end

end A294144.P106183216522811743

namespace A294144

/-- `A008795(2*n)-A294236(2*(n+1))` -/
def P106183216522811743.Spec : Prop :=
  ∀ n, P106183216522811743.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P12918784666513187691

`A294284(2*n+1)+A262868(2*(n+1))`
-/

namespace A294144.P12918784666513187691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294284 (2 * n + 1) + A262868 (2 * (n + 1))

end

end A294144.P12918784666513187691

namespace A294144

/-- `A294284(2*n+1)+A262868(2*(n+1))` -/
def P12918784666513187691.Spec : Prop :=
  ∀ n, P12918784666513187691.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P5537855781160712605

`A262870(2*(n+1))-A294061(2*(n+1))`
-/

namespace A294144.P5537855781160712605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (2 * (n + 1)) - A294061 (2 * (n + 1))

end

end A294144.P5537855781160712605

namespace A294144

/-- `A262870(2*(n+1))-A294061(2*(n+1))` -/
def P5537855781160712605.Spec : Prop :=
  ∀ n, P5537855781160712605.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P9966029848440333297

`∑[A001057(2*n+1)]-A294236(2*(n+1))`
-/

namespace A294144.P9966029848440333297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294236 (2 * (n + 1))

end

end A294144.P9966029848440333297

namespace A294144

/-- `∑[A001057(2*n+1)]-A294236(2*(n+1))` -/
def P9966029848440333297.Spec : Prop :=
  ∀ n, P9966029848440333297.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P367263381422655694

`A161680(A080513(2*n+1))-A294236(2*(n+1))`
-/

namespace A294144.P367263381422655694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A080513 (2 * n + 1)).toNat - A294236 (2 * (n + 1))

end

end A294144.P367263381422655694

namespace A294144

/-- `A161680(A080513(2*n+1))-A294236(2*(n+1))` -/
def P367263381422655694.Spec : Prop :=
  ∀ n, P367263381422655694.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P4231512953339569117

`A000096(n)-A023443(A294244(n+1))`
-/

namespace A294144.P4231512953339569117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A023443 (A294244 (n + 1)).toNat

end

end A294144.P4231512953339569117

namespace A294144

/-- `A000096(n)-A023443(A294244(n+1))` -/
def P4231512953339569117.Spec : Prop :=
  ∀ n, P4231512953339569117.a n = A294144 (n + 1)

end A294144

/-! ## A294144.P983196044422307125

`A028310(C(n+2, 2)-A294244(n+1))`
-/

namespace A294144.P983196044422307125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((Nat.choose (n + 2) 2 : ℤ) - A294244 (n + 1)).toNat

end

end A294144.P983196044422307125

namespace A294144

/-- `A028310(C(n+2, 2)-A294244(n+1))` -/
def P983196044422307125.Spec : Prop :=
  ∀ n, P983196044422307125.a n = A294144 (n + 1)

end A294144

/-!
# A294145: Sum of the smaller parts of the partitions of n into two parts with larger part squarefree.

The programs for A294145, the canonical program `A294145.P7307244003580774145` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294145 has offset 1).

The definition of A294145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294145.P14605284647859013026

`∑[n]-(A294236(n+1)+∑[floor(n/(n%2+1))])`
-/

namespace A294145.P14605284647859013026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A294236 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A294145.P14605284647859013026

namespace A294145

/-- `∑[n]-(A294236(n+1)+∑[floor(n/(n%2+1))])` -/
def P14605284647859013026.Spec : Prop :=
  ∀ n, P14605284647859013026.a n = A294145 (n + 1)

end A294145

/-! ## A294145.P7307244003580774145

`A262870(n+1)-A294061(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A294145

/-- `A262870(n+1)-A294061(n+1)` -/
def P7307244003580774145.Spec : Prop :=
  ∀ n, P7307244003580774145.a n = A294145 (n + 1)

theorem P7307244003580774145.correct : P7307244003580774145.Spec := by
  intro n
  simp only [A294145, Nat.add_sub_cancel]

end A294145

/-! ## A294145.P5002873248682381552

`∑[∑[A001057(n)]]-A294236(n+1)`
-/

namespace A294145.P5002873248682381552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294236 (n + 1)

end

end A294145.P5002873248682381552

namespace A294145

/-- `∑[∑[A001057(n)]]-A294236(n+1)` -/
def P5002873248682381552.Spec : Prop :=
  ∀ n, P5002873248682381552.a n = A294145 (n + 1)

end A294145

/-! ## A294145.P6928217506940994853

`A000217(ceil(n/2))-A294236(n+1)`
-/

namespace A294145.P6928217506940994853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(n : ℚ) / 2⌉.toNat - A294236 (n + 1)

end

end A294145.P6928217506940994853

namespace A294145

/-- `A000217(ceil(n/2))-A294236(n+1)` -/
def P6928217506940994853.Spec : Prop :=
  ∀ n, P6928217506940994853.a n = A294145 (n + 1)

end A294145

/-! ## A294145.P13787513848685787746

`∑[A013928(n+1)]-A294283(n+1)`
-/

namespace A294145.P13787513848685787746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294283 (n + 1)

end

end A294145.P13787513848685787746

namespace A294145

/-- `∑[A013928(n+1)]-A294283(n+1)` -/
def P13787513848685787746.Spec : Prop :=
  ∀ n, P13787513848685787746.a n = A294145 (n + 1)

theorem P13787513848685787746.correct : P13787513848685787746.Spec := by
  intro n
  simp only [A294145, Nat.add_sub_cancel, A294145.P13787513848685787746.f1, A294145.P13787513848685787746.a, A294145.P7307244003580774145.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A262870, A262870.P16818378714008051339.a, A294061, A294061.P13855633599967279508.a, A294283, A294283.P1633113175361013834.a, A028310, A028310.P18130301328277559831.a, A262871, A262871.P5571121125344339502.f1, A262871.P5571121125344339502.a, A294060, A294060.P329766733442987257.a, A294146, A294146.P8791464845272006236.a, A294284, A294284.P6326353456023793442.f1, A294284.P6326353456023793442.a, A294285, A294285.P4641961170870907035.f3, A294285.P4641961170870907035.f2, A294285.P4641961170870907035.f1, A294285.P4641961170870907035.a, A038387, A038387.P4721270746372343696.a, A262869, A262869.P10644154218626239048.a, A294263, A294263.P10402208649476642177.f2, A294263.P10402208649476642177.f1, A294263.P10402208649476642177.a, A000578, A000578.P12162961755414704816.a, A007913, A007913.P8131970495124731496.a, A294237, A294237.P9254304307185982450.f2, A294237.P9254304307185982450.f1, A294237.P9254304307185982450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294145

/-! ## A294145.P17615424662691127593

`A294284(round(acot(n)+n))+A262868(n+1)`
-/

namespace A294145.P17615424662691127593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294284 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A262868 (n + 1)

end

end A294145.P17615424662691127593

namespace A294145

/-- `A294284(round(acot(n)+n))+A262868(n+1)` -/
def P17615424662691127593.Spec : Prop :=
  ∀ n, P17615424662691127593.a n = A294145 (n + 1)

end A294145

/-! ## A294145.P3071100110673701088

`A294284(round(sqrt(n²+1)))+A262868(n+1)`
-/

namespace A294145.P3071100110673701088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294284 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A262868 (n + 1)

end

end A294145.P3071100110673701088

namespace A294145

/-- `A294284(round(sqrt(n²+1)))+A262868(n+1)` -/
def P3071100110673701088.Spec : Prop :=
  ∀ n, P3071100110673701088.a n = A294145 (n + 1)

end A294145

/-! ## A294145.P16778617345892712001

`A008795(A004442(n))-A294236(n+1)`
-/

namespace A294145.P16778617345892712001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A004442 n).toNat - A294236 (n + 1)

end

end A294145.P16778617345892712001

namespace A294145

/-- `A008795(A004442(n))-A294236(n+1)` -/
def P16778617345892712001.Spec : Prop :=
  ∀ n, P16778617345892712001.a n = A294145 (n + 1)

end A294145

/-! ## A294145.P6703699675595085681

`A161680(A080513(n))-A294236(n+1)`
-/

namespace A294145.P6703699675595085681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A080513 n).toNat - A294236 (n + 1)

end

end A294145.P6703699675595085681

namespace A294145

/-- `A161680(A080513(n))-A294236(n+1)` -/
def P6703699675595085681.Spec : Prop :=
  ∀ n, P6703699675595085681.a n = A294145 (n + 1)

end A294145

/-! ## A294145.P1527681223817857184

`A262992(n+1)-(A294061(n+1)+A262871(n+1))`
-/

namespace A294145.P1527681223817857184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (n + 1) - (A294061 (n + 1) + A262871 (n + 1))

end

end A294145.P1527681223817857184

namespace A294145

/-- `A262992(n+1)-(A294061(n+1)+A262871(n+1))` -/
def P1527681223817857184.Spec : Prop :=
  ∀ n, P1527681223817857184.a n = A294145 (n + 1)

theorem P1527681223817857184.correct : P1527681223817857184.Spec := by
  intro n
  simp only [A294145, Nat.add_sub_cancel, A294145.P1527681223817857184.a, A294145.P7307244003580774145.a, A262870, A262870.P16818378714008051339.a, A262871, A262871.P5571121125344339502.f1, A262871.P5571121125344339502.a, A262992, A262992.P10810152767226741436.a, A294061, A294061.P13855633599967279508.a, A038387, A038387.P4721270746372343696.a, A294146, A294146.P8791464845272006236.a, A294283, A294283.P1633113175361013834.a, A294284, A294284.P6326353456023793442.f1, A294284.P6326353456023793442.a, A294285, A294285.P4641961170870907035.f3, A294285.P4641961170870907035.f2, A294285.P4641961170870907035.f1, A294285.P4641961170870907035.a, A000578, A000578.P12162961755414704816.a, A007913, A007913.P8131970495124731496.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A028310, A028310.P18130301328277559831.a, A294060, A294060.P329766733442987257.a, A294263, A294263.P10402208649476642177.f2, A294263.P10402208649476642177.f1, A294263.P10402208649476642177.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A262869, A262869.P10644154218626239048.a, A294237, A294237.P9254304307185982450.f2, A294237.P9254304307185982450.f1, A294237.P9254304307185982450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294145

/-! ## A294145.P15726917754877329059

`A294146(n+1)+A294284(n+1)-A294283(n+1)`
-/

namespace A294145.P15726917754877329059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) + (A294284 (n + 1) - A294283 (n + 1))

end

end A294145.P15726917754877329059

namespace A294145

/-- `A294146(n+1)+A294284(n+1)-A294283(n+1)` -/
def P15726917754877329059.Spec : Prop :=
  ∀ n, P15726917754877329059.a n = A294145 (n + 1)

theorem P15726917754877329059.correct : P15726917754877329059.Spec := by
  intro n
  simp only [A294145, Nat.add_sub_cancel, A294145.P15726917754877329059.a, A294145.P7307244003580774145.a, A262870, A262870.P16818378714008051339.a, A294061, A294061.P13855633599967279508.a, A294146, A294146.P8791464845272006236.a, A294283, A294283.P1633113175361013834.a, A294284, A294284.P6326353456023793442.f1, A294284.P6326353456023793442.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A028310, A028310.P18130301328277559831.a, A262871, A262871.P5571121125344339502.f1, A262871.P5571121125344339502.a, A294060, A294060.P329766733442987257.a, A294263, A294263.P10402208649476642177.f2, A294263.P10402208649476642177.f1, A294263.P10402208649476642177.a, A294285, A294285.P4641961170870907035.f3, A294285.P4641961170870907035.f2, A294285.P4641961170870907035.f1, A294285.P4641961170870907035.a, A038387, A038387.P4721270746372343696.a, A262869, A262869.P10644154218626239048.a, A294237, A294237.P9254304307185982450.f2, A294237.P9254304307185982450.f1, A294237.P9254304307185982450.a, A000578, A000578.P12162961755414704816.a, A007913, A007913.P8131970495124731496.a, A294234, A294234.P2149377772881996942.f2, A294234.P2149377772881996942.f3, A294234.P2149377772881996942.f1, A294234.P2149377772881996942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294145

/-!
# A294146: Sum of the larger parts of the partitions of n into two parts with smaller part squarefree.

The programs for A294146, the canonical program `A294146.P8791464845272006236` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294146 has offset 1).

The definition of A294146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294146.P8791464845272006236

`A294263(n+1)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A294146

/-- `A294263(n+1)+n` -/
def P8791464845272006236.Spec : Prop :=
  ∀ n, P8791464845272006236.a n = A294146 (n + 1)

theorem P8791464845272006236.correct : P8791464845272006236.Spec := by
  intro n
  simp only [A294146, Nat.add_sub_cancel]

end A294146

/-! ## A294146.P6001868604221156623

`A262871(n+1)+∑[∑[char[2*∏{p}[n, #]]]]`
-/

namespace A294146.P6001868604221156623
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f4 n), p)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262871 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A294146.P6001868604221156623

namespace A294146

/-- `A262871(n+1)+∑[∑[char[2*∏{p}[n, #]]]]` -/
def P6001868604221156623.Spec : Prop :=
  ∀ n, P6001868604221156623.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P8993041371872710400

`A001318(n)-A294237(n+1)`
-/

namespace A294146.P8993041371872710400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A294237 (n + 1)

end

end A294146.P8993041371872710400

namespace A294146

/-- `A001318(n)-A294237(n+1)` -/
def P8993041371872710400.Spec : Prop :=
  ∀ n, P8993041371872710400.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P9013120788633882807

`∑[A026741(n)]-A294237(n+1)`
-/

namespace A294146.P9013120788633882807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A294237 (n + 1)

end

end A294146.P9013120788633882807

namespace A294146

/-- `∑[A026741(n)]-A294237(n+1)` -/
def P9013120788633882807.Spec : Prop :=
  ∀ n, P9013120788633882807.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P6928051723516553073

`A294060(n+1)+A262871(n+1)`
-/

namespace A294146.P6928051723516553073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (n + 1) + A262871 (n + 1)

end

end A294146.P6928051723516553073

namespace A294146

/-- `A294060(n+1)+A262871(n+1)` -/
def P6928051723516553073.Spec : Prop :=
  ∀ n, P6928051723516553073.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P16364179404895988660

`A294145(n+1)+A294283(n+1)-A294284(n+1)`
-/

namespace A294146.P16364179404895988660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294145 (n + 1) + (A294283 (n + 1) - A294284 (n + 1))

end

end A294146.P16364179404895988660

namespace A294146

/-- `A294145(n+1)+A294283(n+1)-A294284(n+1)` -/
def P16364179404895988660.Spec : Prop :=
  ∀ n, P16364179404895988660.a n = A294146 (n + 1)

theorem P16364179404895988660.correct : P16364179404895988660.Spec := by
  intro n
  simp only [A294146, Nat.add_sub_cancel, A294146.P16364179404895988660.a, A294146.P8791464845272006236.a, A294145, A294145.P7307244003580774145.a, A294263, A294263.P10402208649476642177.f2, A294263.P10402208649476642177.f1, A294263.P10402208649476642177.a, A294283, A294283.P1633113175361013834.a, A294284, A294284.P6326353456023793442.f1, A294284.P6326353456023793442.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A028310, A028310.P18130301328277559831.a, A262870, A262870.P16818378714008051339.a, A262871, A262871.P5571121125344339502.f1, A262871.P5571121125344339502.a, A294060, A294060.P329766733442987257.a, A294061, A294061.P13855633599967279508.a, A294237, A294237.P9254304307185982450.f2, A294237.P9254304307185982450.f1, A294237.P9254304307185982450.a, A038387, A038387.P4721270746372343696.a, A262869, A262869.P10644154218626239048.a, A294234, A294234.P2149377772881996942.f2, A294234.P2149377772881996942.f3, A294234.P2149377772881996942.f1, A294234.P2149377772881996942.a, A294285, A294285.P4641961170870907035.f3, A294285.P4641961170870907035.f2, A294285.P4641961170870907035.f1, A294285.P4641961170870907035.a, A000578, A000578.P12162961755414704816.a, A007913, A007913.P8131970495124731496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294146

/-! ## A294146.P9173204100052217103

`A294283(n+2)-A262869(n+1)`
-/

namespace A294146.P9173204100052217103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294283 (n + 2) - A262869 (n + 1)

end

end A294146.P9173204100052217103

namespace A294146

/-- `A294283(n+2)-A262869(n+1)` -/
def P9173204100052217103.Spec : Prop :=
  ∀ n, P9173204100052217103.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P15225575786070874044

`Δ[n/A020639(2*(n+1))*A294060(n+1)]`
-/

namespace A294146.P15225575786070874044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A020639 (2 * (n + 1)) : ℚ) * (A294060 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294146.P15225575786070874044

namespace A294146

/-- `Δ[n/A020639(2*(n+1))*A294060(n+1)]` -/
def P15225575786070874044.Spec : Prop :=
  ∀ n, P15225575786070874044.a n = (A294146 (n + 1) : ℚ)

end A294146

/-! ## A294146.P16260182634754949286

`A262868(n+1)+A294283(n+2)-A262991(n+1)`
-/

namespace A294146.P16260182634754949286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) + (A294283 (n + 2) - A262991 (n + 1))

end

end A294146.P16260182634754949286

namespace A294146

/-- `A262868(n+1)+A294283(n+2)-A262991(n+1)` -/
def P16260182634754949286.Spec : Prop :=
  ∀ n, P16260182634754949286.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P14316245417029092043

`A262868(n+2)+A294283(n+2)-A013928(n+2)`
-/

namespace A294146.P14316245417029092043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 2) + (A294283 (n + 2) - A013928 (n + 2))

end

end A294146.P14316245417029092043

namespace A294146

/-- `A262868(n+2)+A294283(n+2)-A013928(n+2)` -/
def P14316245417029092043.Spec : Prop :=
  ∀ n, P14316245417029092043.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P1794429680615101832

`Δ[n/A060236(3*n+5)*A294060(n+1)]`
-/

namespace A294146.P1794429680615101832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A060236 (3 * n + 5) : ℚ) * (A294060 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294146.P1794429680615101832

namespace A294146

/-- `Δ[n/A060236(3*n+5)*A294060(n+1)]` -/
def P1794429680615101832.Spec : Prop :=
  ∀ n, P1794429680615101832.a n = (A294146 (n + 1) : ℚ)

end A294146

/-! ## A294146.P3048123447886242371

`A014682(Δ[n*A294060(n+1)])`
-/

namespace A294146.P3048123447886242371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A294146.P3048123447886242371

namespace A294146

/-- `A014682(Δ[n*A294060(n+1)])` -/
def P3048123447886242371.Spec : Prop :=
  ∀ n, P3048123447886242371.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P11246028254385905066

`A004525(Δ[n*A294060(n+1)])`
-/

namespace A294146.P11246028254385905066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A294146.P11246028254385905066

namespace A294146

/-- `A004525(Δ[n*A294060(n+1)])` -/
def P11246028254385905066.Spec : Prop :=
  ∀ n, P11246028254385905066.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P1547956159738838521

`A004526(Δ[n*A294060(n+1)])`
-/

namespace A294146.P1547956159738838521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A294146.P1547956159738838521

namespace A294146

/-- `A004526(Δ[n*A294060(n+1)])` -/
def P1547956159738838521.Spec : Prop :=
  ∀ n, P1547956159738838521.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P13553533892748796071

`A025480(Δ[n*A294060(n+1)])`
-/

namespace A294146.P13553533892748796071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A294146.P13553533892748796071

namespace A294146

/-- `A025480(Δ[n*A294060(n+1)])` -/
def P13553533892748796071.Spec : Prop :=
  ∀ n, P13553533892748796071.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P13393019498802002648

`A026741(Δ[n*A294060(n+1)])`
-/

namespace A294146.P13393019498802002648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A294146.P13393019498802002648

namespace A294146

/-- `A026741(Δ[n*A294060(n+1)])` -/
def P13393019498802002648.Spec : Prop :=
  ∀ n, P13393019498802002648.a n = A294146 (n + 1)

end A294146

/-! ## A294146.P10518733150017710816

`A110654(Δ[n*A294060(n+1)])`
-/

namespace A294146.P10518733150017710816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A294146.P10518733150017710816

namespace A294146

/-- `A110654(Δ[n*A294060(n+1)])` -/
def P10518733150017710816.Spec : Prop :=
  ∀ n, P10518733150017710816.a n = A294146 (n + 1)

end A294146

/-!
# A294148: a(n) is the smallest prime whose square is greater than the cube of a(n-1); a(1) = 2.

The programs for A294148, there is no canonical definition to state claims against.
-/

/-! ## A294148.P4278786489193114304

`A151800(floor(sqrt(a(n-1)^3)))` with `a(0)=2`
-/

namespace A294148.P4278786489193114304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (Int.sqrt (a (n - 1) ^ 3)).toNat

end

end A294148.P4278786489193114304

/-! ## A294148.P9656817008063705553

`A151800(A077121(a(n-1))-1)` with `a(0)=2`
-/

namespace A294148.P9656817008063705553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A077121 (a (n - 1)).toNat - 1).toNat

end

end A294148.P9656817008063705553

/-! ## A294148.P9202578801413724248

`A000040(A000720(floor(a(n-1)^(3/2)))+1)` with `a(0)=2`
-/

namespace A294148.P9202578801413724248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 ⌊(a (n - 1) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋.toNat + 1).toNat

end

end A294148.P9202578801413724248

/-!
# A294149: Numbers k such that the sum of divisors of k is divisible by the sum of nontrivial divisors of k (that is, excluding 1 and k).

The programs for A294149, there is no canonical definition to state claims against.
-/

/-! ## A294149.P6617625937482606951

`eq[A048050(n+1), A339964(n+1)]+1`
-/

namespace A294149.P6617625937482606951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A294149.P6617625937482606951

/-! ## A294149.P14843496363869271191

`A020725(eq[A048050(n+1), A339964(n+1)])`
-/

namespace A294149.P14843496363869271191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A294149.P14843496363869271191

/-! ## A294149.P13298617016485143258

`A065475(eq[A048050(n+1), A339964(n+1)])`
-/

namespace A294149.P13298617016485143258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A294149.P13298617016485143258

/-! ## A294149.P1239762883838062772

`A114637(eq[A048050(n+1), A339964(n+1)])`
-/

namespace A294149.P1239762883838062772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A294149.P1239762883838062772

/-! ## A294149.P12269592367342933054

`A020725(eq[(n+2)/A339966(n+1), A048050(n+1)])`
-/

namespace A294149.P12269592367342933054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A339966 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A294149.P12269592367342933054

/-!
# A294151: Number of perforated polyominoes with n cells, identifying mirror images.

The programs for A294151, there is no canonical definition to state claims against.
-/

/-! ## A294151.P11366142791907691682

`A371788(A143571(n))+A366020(n+1)`
-/

namespace A294151.P11366142791907691682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371788 (A143571 n).toNat + A366020 (n + 1)

end

end A294151.P11366142791907691682

/-!
# A294152: Chromatic invariant of the n-antiprism graph.

The programs for A294152, the canonical program `A294152.P3234085941456159962` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294152 has offset 1).

The definition of A294152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294152.P2694866778405848563

`A005248(n+1)-2*(n+1)-1`
-/

namespace A294152.P2694866778405848563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - (2 * (n + 1) : ℤ) - 1

end

end A294152.P2694866778405848563

namespace A294152

/-- `A005248(n+1)-2*(n+1)-1` -/
def P2694866778405848563.Spec : Prop :=
  ∀ n, P2694866778405848563.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P13384671774130765713

`A000032(2*(n+1))-2*(n+1)-1`
-/

namespace A294152.P13384671774130765713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) - (2 * (n + 1) : ℤ) - 1

end

end A294152.P13384671774130765713

namespace A294152

/-- `A000032(2*(n+1))-2*(n+1)-1` -/
def P13384671774130765713.Spec : Prop :=
  ∀ n, P13384671774130765713.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P3234085941456159962

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=11, a(3)=38`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294152

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P3234085941456159962.Spec : Prop :=
  ∀ n, P3234085941456159962.a n = A294152 (n + 1)

theorem P3234085941456159962.correct : P3234085941456159962.Spec := by
  intro n
  simp only [A294152, Nat.add_sub_cancel]

end A294152

/-! ## A294152.P8614947382432657939

`∑[Δ[ceil((ϕ^n)²)]-2]`
-/

namespace A294152.P8614947382432657939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294152.P8614947382432657939

namespace A294152

/-- `∑[Δ[ceil((ϕ^n)²)]-2]` -/
def P8614947382432657939.Spec : Prop :=
  ∀ n, P8614947382432657939.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P4715034717980620891

`record[ceil((-ϕ)^n-(n+1))]`
-/

namespace A294152.P4715034717980620891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-Real.goldenRatio) ^ n - (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294152.P4715034717980620891

namespace A294152

/-- `record[ceil((-ϕ)^n-(n+1))]` -/
def P4715034717980620891.Spec : Prop :=
  ∀ n, P4715034717980620891.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P10562419393900140269

`round(record[(-ϕ)^n-(n+1)])`
-/

namespace A294152.P10562419393900140269
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n - (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A294152.P10562419393900140269

namespace A294152

/-- `round(record[(-ϕ)^n-(n+1)])` -/
def P10562419393900140269.Spec : Prop :=
  ∀ n, P10562419393900140269.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P3139024915956132485

`∑[A256233(n)]+1`
-/

namespace A294152.P3139024915956132485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294152.P3139024915956132485

namespace A294152

/-- `∑[A256233(n)]+1` -/
def P3139024915956132485.Spec : Prop :=
  ∀ n, P3139024915956132485.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P18082190016129777495

`A066982(Δ[n²])-1`
-/

namespace A294152.P18082190016129777495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A294152.P18082190016129777495

namespace A294152

/-- `A066982(Δ[n²])-1` -/
def P18082190016129777495.Spec : Prop :=
  ∀ n, P18082190016129777495.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P4417304739309163823

`∑[A002878(n)-2]+1`
-/

namespace A294152.P4417304739309163823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294152.P4417304739309163823

namespace A294152

/-- `∑[A002878(n)-2]+1` -/
def P4417304739309163823.Spec : Prop :=
  ∀ n, P4417304739309163823.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P7039667464023387258

`∑[A188378(n)-2]-n`
-/

namespace A294152.P7039667464023387258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294152.P7039667464023387258

namespace A294152

/-- `∑[A188378(n)-2]-n` -/
def P7039667464023387258.Spec : Prop :=
  ∀ n, P7039667464023387258.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P9944092225748251093

`∑[A001610(2*n)]-n`
-/

namespace A294152.P9944092225748251093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294152.P9944092225748251093

namespace A294152

/-- `∑[A001610(2*n)]-n` -/
def P9944092225748251093.Spec : Prop :=
  ∀ n, P9944092225748251093.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P12455333347471354375

`∑[A301653(2*n)]-n`
-/

namespace A294152.P12455333347471354375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294152.P12455333347471354375

namespace A294152

/-- `∑[A301653(2*n)]-n` -/
def P12455333347471354375.Spec : Prop :=
  ∀ n, P12455333347471354375.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P4175332547194047640

`∑[∑[A004146(n)]]+n²`
-/

namespace A294152.P4175332547194047640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A294152.P4175332547194047640

namespace A294152

/-- `∑[∑[A004146(n)]]+n²` -/
def P4175332547194047640.Spec : Prop :=
  ∀ n, P4175332547194047640.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P1030335022897700613

`A248924(2*(n+1))-1`
-/

namespace A294152.P1030335022897700613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248924 (2 * (n + 1)) - 1

end

end A294152.P1030335022897700613

namespace A294152

/-- `A248924(2*(n+1))-1` -/
def P1030335022897700613.Spec : Prop :=
  ∀ n, P1030335022897700613.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P15741752515658834291

`A033550(n+1)-(n+2)`
-/

namespace A294152.P15741752515658834291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033550 (n + 1) - (n + 2 : ℤ)

end

end A294152.P15741752515658834291

namespace A294152

/-- `A033550(n+1)-(n+2)` -/
def P15741752515658834291.Spec : Prop :=
  ∀ n, P15741752515658834291.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P2301346174066013066

`A004146(n+1)-Δ[n²]`
-/

namespace A294152.P2301346174066013066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A294152.P2301346174066013066

namespace A294152

/-- `A004146(n+1)-Δ[n²]` -/
def P2301346174066013066.Spec : Prop :=
  ∀ n, P2301346174066013066.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P7455404135468309165

`A020956(Δ[n²])-(n+1)`
-/

namespace A294152.P7455404135468309165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020956 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A294152.P7455404135468309165

namespace A294152

/-- `A020956(Δ[n²])-(n+1)` -/
def P7455404135468309165.Spec : Prop :=
  ∀ n, P7455404135468309165.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P17295234703388530517

`A014739(2*n)-Δ[n²]`
-/

namespace A294152.P17295234703388530517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (2 * n) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A294152.P17295234703388530517

namespace A294152

/-- `A014739(2*n)-Δ[n²]` -/
def P17295234703388530517.Spec : Prop :=
  ∀ n, P17295234703388530517.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P11034635379173103872

`∑[A000032(Δ[n²])-2]+1`
-/

namespace A294152.P11034635379173103872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294152.P11034635379173103872

namespace A294152

/-- `∑[A000032(Δ[n²])-2]+1` -/
def P11034635379173103872.Spec : Prop :=
  ∀ n, P11034635379173103872.a n = A294152 (n + 1)

end A294152

/-! ## A294152.P16620795674948692309

`A005592(n+1)-2*(n+1)`
-/

namespace A294152.P16620795674948692309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (n + 1) - (2 * (n + 1) : ℤ)

end

end A294152.P16620795674948692309

namespace A294152

/-- `A005592(n+1)-2*(n+1)` -/
def P16620795674948692309.Spec : Prop :=
  ∀ n, P16620795674948692309.a n = A294152 (n + 1)

end A294152

/-!
# A294153: Numbers k = a * b, such that k' = a' * b' where k', a' and b' are the arithmetic derivatives of k, a and b.

The programs for A294153, there is no canonical definition to state claims against.
-/

/-! ## A294153.P9486780372894246167

`record[and(A168596(n), A296406(n))]`
-/

namespace A294153.P9486780372894246167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168596 n) (A296406 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294153.P9486780372894246167

/-!
# A294154: Base-2 logarithm of product of primes between 2^n+1 and 2^(n+1).

The programs for A294154, there is no canonical definition to state claims against.
-/

/-! ## A294154.P17358743848136412988

`floor(log2(A165448(n)))`
-/

namespace A294154.P17358743848136412988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A165448 n).toNat

end

end A294154.P17358743848136412988

/-!
# A294155: Numbers m such that there are precisely 14 groups of order m.

The programs for A294155, there is no canonical definition to state claims against.
-/

/-! ## A294155.P18007839129493397904

`eq[14, A000001(n)]`
-/

namespace A294155.P18007839129493397904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294155.P18007839129493397904

/-! ## A294155.P10107614113118681675

`eq[14, sqrt(A297420(n))]`
-/

namespace A294155.P10107614113118681675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A294155.P10107614113118681675

/-! ## A294155.P14080551812279718684

`eq[A165835(A180328(n+1)), A297420(n)]`
-/

namespace A294155.P14080551812279718684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165835 (A180328 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294155.P14080551812279718684

/-! ## A294155.P15859974346355721448

`eq[14, A201733(A028310(n))]`
-/

namespace A294155.P15859974346355721448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294155.P15859974346355721448

/-! ## A294155.P9389837952254740741

`A020725(eq[14, A201733(n+1)])`
-/

namespace A294155.P9389837952254740741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294155.P9389837952254740741

/-!
# A294156: Numbers m such that there are precisely 15 groups of order m.

The programs for A294156, there is no canonical definition to state claims against.
-/

/-! ## A294156.P367839447449893964

`eq[15, A000001(n)]`
-/

namespace A294156.P367839447449893964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294156.P367839447449893964

/-! ## A294156.P14488227044812969099

`eq[15, sqrt(A297420(n))]`
-/

namespace A294156.P14488227044812969099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A294156.P14488227044812969099

/-! ## A294156.P9228422068448929218

`eq[15, A201733(A028310(n))]`
-/

namespace A294156.P9228422068448929218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294156.P9228422068448929218

/-! ## A294156.P5500773125510734253

`A020725(eq[15, A201733(n+1)])`
-/

namespace A294156.P5500773125510734253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294156.P5500773125510734253

/-! ## A294156.P605512300573292649

`A061767(eq[15, A201733(n+1)])`
-/

namespace A294156.P605512300573292649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294156.P605512300573292649

/-!
# A294157: Fibonacci sequence beginning 2, 8.

The programs for A294157, the canonical program `A294157.P6468335115368043153` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294157 has offset 0).

The definition of A294157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294157.P6468335115368043153

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294157

/-- `a(n-1)+a(n-2)` -/
def P6468335115368043153.Spec : Prop :=
  ∀ n, (P6468335115368043153.a n : ℤ) = A294157 n

theorem P6468335115368043153.correct : P6468335115368043153.Spec := by
  intro n
  simp only [A294157]

end A294157

/-! ## A294157.P2509445814947952484

`2*A000285(n)`
-/

namespace A294157.P2509445814947952484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000285 n

end

end A294157.P2509445814947952484

namespace A294157

/-- `2*A000285(n)` -/
def P2509445814947952484.Spec : Prop :=
  ∀ n, P2509445814947952484.a n = A294157 n

end A294157

/-! ## A294157.P15863471828916906297

`ogf((2+6x)/(1-x-x^2))`
-/

namespace A294157.P15863471828916906297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6] [1, -1, -1] n

end

end A294157.P15863471828916906297

namespace A294157

/-- `ogf((2+6x)/(1-x-x^2))` -/
def P15863471828916906297.Spec : Prop :=
  ∀ n, P15863471828916906297.a n = A294157 n

end A294157

/-! ## A294157.P16095493776920374948

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A294157.P16095493776920374948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A294157.P16095493776920374948

namespace A294157

/-- `a(n-1)-floor(-a(n-2))` -/
def P16095493776920374948.Spec : Prop :=
  ∀ n, P16095493776920374948.a n = A294157 n

end A294157

/-! ## A294157.P14725404961384440399

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A294157.P14725404961384440399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A294157.P14725404961384440399

namespace A294157

/-- `a(n-1)-ceil(-a(n-2))` -/
def P14725404961384440399.Spec : Prop :=
  ∀ n, P14725404961384440399.a n = A294157 n

end A294157

/-! ## A294157.P10029204605154640470

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A294157.P10029204605154640470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A294157.P10029204605154640470

namespace A294157

/-- `a(n-1)-round(-a(n-2))` -/
def P10029204605154640470.Spec : Prop :=
  ∀ n, P10029204605154640470.a n = A294157 n

end A294157

/-! ## A294157.P13243116861211141986

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=8, a(2)=10`
-/

namespace A294157.P13243116861211141986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A294157.P13243116861211141986

namespace A294157

/-- `2*a(n-1)-a(n-3)` -/
def P13243116861211141986.Spec : Prop :=
  ∀ n, P13243116861211141986.a n = A294157 n

end A294157

/-! ## A294157.P3871137649802858279

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=2, a(1)=8, a(2)=10`
-/

namespace A294157.P3871137649802858279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 10] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A294157.P3871137649802858279

namespace A294157

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P3871137649802858279.Spec : Prop :=
  ∀ n, P3871137649802858279.a n = A294157 n

end A294157

/-! ## A294157.P17386498693465901198

`A022321(n)+1`
-/

namespace A294157.P17386498693465901198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + 1

end

end A294157.P17386498693465901198

namespace A294157

/-- `A022321(n)+1` -/
def P17386498693465901198.Spec : Prop :=
  ∀ n, P17386498693465901198.a n = A294157 n

end A294157

/-! ## A294157.P14627464067427299514

`2*(A022308(n)+1)`
-/

namespace A294157.P14627464067427299514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022308 n + 1)

end

end A294157.P14627464067427299514

namespace A294157

/-- `2*(A022308(n)+1)` -/
def P14627464067427299514.Spec : Prop :=
  ∀ n, P14627464067427299514.a n = A294157 n

end A294157

/-! ## A294157.P705426158468367519

`2*A104449(n+1)`
-/

namespace A294157.P705426158468367519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104449 (n + 1)

end

end A294157.P705426158468367519

namespace A294157

/-- `2*A104449(n+1)` -/
def P705426158468367519.Spec : Prop :=
  ∀ n, P705426158468367519.a n = A294157 n

end A294157

/-! ## A294157.P3622636093469629534

`A022090(n)+A000032(n)`
-/

namespace A294157.P3622636093469629534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A000032 n

end

end A294157.P3622636093469629534

namespace A294157

/-- `A022090(n)+A000032(n)` -/
def P3622636093469629534.Spec : Prop :=
  ∀ n, P3622636093469629534.a n = A294157 n

end A294157

/-! ## A294157.P13376995473285265390

`A022113(n)+A000045(n)`
-/

namespace A294157.P13376995473285265390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A000045 n

end

end A294157.P13376995473285265390

namespace A294157

/-- `A022113(n)+A000045(n)` -/
def P13376995473285265390.Spec : Prop :=
  ∀ n, P13376995473285265390.a n = A294157 n

end A294157

/-! ## A294157.P15344972710664781113

`A022086(n)+A001060(n)`
-/

namespace A294157.P15344972710664781113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A001060 n

end

end A294157.P15344972710664781113

namespace A294157

/-- `A022086(n)+A001060(n)` -/
def P15344972710664781113.Spec : Prop :=
  ∀ n, P15344972710664781113.a n = A294157 n

end A294157

/-! ## A294157.P9943756733775088486

`A022319(n)+A001588(n)`
-/

namespace A294157.P9943756733775088486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A001588 n

end

end A294157.P9943756733775088486

namespace A294157

/-- `A022319(n)+A001588(n)` -/
def P9943756733775088486.Spec : Prop :=
  ∀ n, P9943756733775088486.a n = A294157 n

end A294157

/-! ## A294157.P15101564537640524735

`A022320(n)+A001611(n)`
-/

namespace A294157.P15101564537640524735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A001611 n

end

end A294157.P15101564537640524735

namespace A294157

/-- `A022320(n)+A001611(n)` -/
def P15101564537640524735.Spec : Prop :=
  ∀ n, P15101564537640524735.a n = A294157 n

end A294157

/-! ## A294157.P9579445086796683015

`A022088(n)+A020695(n)`
-/

namespace A294157.P9579445086796683015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A020695 n

end

end A294157.P9579445086796683015

namespace A294157

/-- `A022088(n)+A020695(n)` -/
def P9579445086796683015.Spec : Prop :=
  ∀ n, P9579445086796683015.a n = A294157 n

end A294157

/-! ## A294157.P14614302167264097285

`A118658(n)+A022091(n)`
-/

namespace A294157.P14614302167264097285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022091 n

end

end A294157.P14614302167264097285

namespace A294157

/-- `A118658(n)+A022091(n)` -/
def P14614302167264097285.Spec : Prop :=
  ∀ n, P14614302167264097285.a n = A294157 n

end A294157

/-! ## A294157.P8742771614680829777

`A152163(n)+A022099(n)`
-/

namespace A294157.P8742771614680829777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022099 n

end

end A294157.P8742771614680829777

namespace A294157

/-- `A152163(n)+A022099(n)` -/
def P8742771614680829777.Spec : Prop :=
  ∀ n, P8742771614680829777.a n = A294157 n

end A294157

/-! ## A294157.P8783467358703368941

`A187893(n)+A022318(n)`
-/

namespace A294157.P8783467358703368941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022318 n

end

end A294157.P8783467358703368941

namespace A294157

/-- `A187893(n)+A022318(n)` -/
def P8783467358703368941.Spec : Prop :=
  ∀ n, P8783467358703368941.a n = A294157 n

end A294157

/-!
# A294158: Row sums of A291844.

The programs for A294158, there is no canonical definition to state claims against.
-/

/-! ## A294158.P13426845056684444280

`A309081(A064517(n+1)^A064524(n))`
-/

namespace A294158.P13426845056684444280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309081 (SequenceMachineLib.roundAway ((A064517 (n + 1) : ℚ) ^ (A064524 n : ℤ))).toNat

end

end A294158.P13426845056684444280

/-!
# A294159: Alternating row sums of triangle A291844.

The programs for A294159, there is no canonical definition to state claims against.
-/

/-! ## A294159.P13549507572972754710

`A108626(A028310(n))-A273716(n+2)`
-/

namespace A294159.P13549507572972754710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 (A028310 n).toNat - A273716 (n + 2)

end

end A294159.P13549507572972754710

/-! ## A294159.P6404812763804798995

`A108626(A000007(n)+n)-A273716(n+2)`
-/

namespace A294159.P6404812763804798995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 (A000007 n + (n : ℤ)).toNat - A273716 (n + 2)

end

end A294159.P6404812763804798995

/-! ## A294159.P17438748190647367875

`A054977(n)*A108626(n)-A273716(n+2)`
-/

namespace A294159.P17438748190647367875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A108626 n - A273716 (n + 2)

end

end A294159.P17438748190647367875

/-! ## A294159.P3719123765351783271

`A108626(n)-A057427(n)*A273716(n+2)`
-/

namespace A294159.P3719123765351783271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - A057427 n * A273716 (n + 2)

end

end A294159.P3719123765351783271

/-! ## A294159.P17441897984256989383

`A108626(n)-A273716(n+2)%A047086(n)`
-/

namespace A294159.P17441897984256989383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 n - Int.tmod (A273716 (n + 2)) (A047086 n)

end

end A294159.P17441897984256989383

/-! ## A294159.P7219849407507961643

`A047086(n)-Δ[A047085(n)/2]`
-/

namespace A294159.P7219849407507961643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047085 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047086 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A294159.P7219849407507961643

/-!
# A294160: Column 0 of triangle A291844.

The programs for A294160, there is no canonical definition to state claims against.
-/

/-! ## A294160.P670600750995917776

`A291844(A008620(n²))`
-/

namespace A294160.P670600750995917776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A008620 (n ^ 2)).toNat

end

end A294160.P670600750995917776

/-! ## A294160.P18328254542799722996

`A291844(A000212(n)+1)`
-/

namespace A294160.P18328254542799722996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A000212 n + 1).toNat

end

end A294160.P18328254542799722996

/-! ## A294160.P9925780748363023817

`A291844(A014591(2*n))`
-/

namespace A294160.P9925780748363023817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A014591 (2 * n)).toNat

end

end A294160.P9925780748363023817

/-! ## A294160.P17222503517647447406

`A291844(∑[A004523(n)]+1)`
-/

namespace A294160.P17222503517647447406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A294160.P17222503517647447406

/-! ## A294160.P981153232481789405

`A291844(A069905(2*n)+1)`
-/

namespace A294160.P981153232481789405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A069905 (2 * n) + 1).toNat

end

end A294160.P981153232481789405

/-!
# A294161: Column 1 of triangle A291844.

The programs for A294161, there is no canonical definition to state claims against.
-/

/-! ## A294161.P7899093907631597234

`A291844(A000212(n+2)+2)`
-/

namespace A294161.P7899093907631597234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A000212 (n + 2) + 2).toNat

end

end A294161.P7899093907631597234

/-! ## A294161.P11143499667310330181

`A291844(A001399(2*n+1)+2)`
-/

namespace A294161.P11143499667310330181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A001399 (2 * n + 1) + 2).toNat

end

end A294161.P11143499667310330181

/-! ## A294161.P3421380130470954647

`A291844(A014591(2*(n+2))+1)`
-/

namespace A294161.P3421380130470954647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A014591 (2 * (n + 2)) + 1).toNat

end

end A294161.P3421380130470954647

/-! ## A294161.P1403937189235293954

`A291844(A069905(2*(n+2))+2)`
-/

namespace A294161.P1403937189235293954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291844 (A069905 (2 * (n + 2)) + 2).toNat

end

end A294161.P1403937189235293954

/-!
# A294166: Row sums of A291843.

The programs for A294166, there is no canonical definition to state claims against.
-/

/-! ## A294166.P1291464581033182856

`A008616(A358437(n)-A034188(n))`
-/

namespace A294166.P1291464581033182856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A358437 n - A034188 n).toNat

end

end A294166.P1291464581033182856

/-! ## A294166.P15089400385777540664

`A008616(A358437(n)-A088357(n))`
-/

namespace A294166.P15089400385777540664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A358437 n - A088357 n).toNat

end

end A294166.P15089400385777540664

/-!
# A294167: Column 1 of triangle A291843.

The programs for A294167, there is no canonical definition to state claims against.
-/

/-! ## A294167.P15419595260910303973

`A291843(A211540(2*n+1)+A000027(2*(n+2)))`
-/

namespace A294167.P15419595260910303973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291843 (A211540 (2 * n + 1) + A000027 (2 * (n + 2))).toNat

end

end A294167.P15419595260910303973

/-!
# A294168: Irregular triangle read by rows in which row n contains significant digits after the radix point for unit fractions 1/n expanded in factorial base.

The programs for A294168, there is no canonical definition to state claims against.
-/

/-! ## A294168.P17296975305279306984

`val(∑[and(3, A079202(n+1))!], 2)`
-/

namespace A294168.P17296975305279306984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 3 (A079202 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A294168.P17296975305279306984

/-! ## A294168.P4026916608540539601

`A001221(gcd(A002262(n), A090032(n)))`
-/

namespace A294168.P4026916608540539601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A002262 n) (A090032 n))

end

end A294168.P4026916608540539601

/-! ## A294168.P10111182762714091608

`A001222(gcd(A042594(n), A061199(n)))`
-/

namespace A294168.P10111182762714091608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A042594 n) (A061199 n))

end

end A294168.P10111182762714091608

/-! ## A294168.P15849165904641849674

`A001221(gcd(A071731(n), A324688(n)))`
-/

namespace A294168.P15849165904641849674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A071731 n) (A324688 n))

end

end A294168.P15849165904641849674

/-! ## A294168.P16818973418351745469

`A007814(A081690(n+3)+A011782(n))`
-/

namespace A294168.P16818973418351745469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A081690 (n + 3) + A011782 n).toNat

end

end A294168.P16818973418351745469

/-!
# A294169: Semiprimes k = pq such that p^k == p (mod k) and q^k == q (mod k).

The programs for A294169, there is no canonical definition to state claims against.
-/

/-! ## A294169.P1423521926029622060

`filter[A384684(n+2), A354927(#)]`
-/

namespace A294169.P1423521926029622060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A294169.P1423521926029622060

/-! ## A294169.P11024140165962459468

`filter[A384684(n+1), A064911(#)]`
-/

namespace A294169.P11024140165962459468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A294169.P11024140165962459468

/-! ## A294169.P10093491828684313920

`filter[A384684(n+1), A101040(#)]`
-/

namespace A294169.P10093491828684313920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A294169.P10093491828684313920

/-! ## A294169.P16800456571602803718

`filter[A384684(n+1), A280710(#)]`
-/

namespace A294169.P16800456571602803718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A294169.P16800456571602803718

/-! ## A294169.P10018969802851901152

`filter[A384684(n+1), A353471(#)]`
-/

namespace A294169.P10018969802851901152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A294169.P10018969802851901152

/-!
# A294170: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 2*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294170, there is no canonical definition to state claims against.
-/

/-! ## A294170.P17459443244144516791

`A294547(n)+∑[A025480(A006355(n))]`
-/

namespace A294170.P17459443244144516791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A006355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294170.P17459443244144516791

/-! ## A294170.P2201415793910283271

`A294552(n)+A003849(A247970(n+1))`
-/

namespace A294170.P2201415793910283271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294552 n + A003849 (A247970 (n + 1)).toNat

end

end A294170.P2201415793910283271

/-! ## A294170.P4763830020399279632

`A000071(n+1)+A293350(n)+A023443(A006355(n))`
-/

namespace A294170.P4763830020399279632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A293350 n + A023443 (A006355 n).toNat)

end

end A294170.P4763830020399279632

/-! ## A294170.P3237004110602718800

`A294547(n)+A023443(∑[A212804(n)])`
-/

namespace A294170.P3237004110602718800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294170.P3237004110602718800

/-! ## A294170.P6238833905516414771

`A294547(n)-A024000(∑[A212804(n)])`
-/

namespace A294170.P6238833905516414771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n - A024000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294170.P6238833905516414771

/-!
# A294172: Maximum value of the cyclic convolution of the first n positive integers with themselves.

The programs for A294172, the canonical program `A294172.P15564028199437214559` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294172 has offset 1).

The definition of A294172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294172.P15564028199437214559

`∑[∑[gcd(n, ∑[n])+1+n]]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294172

/-- `∑[∑[gcd(n, ∑[n])+1+n]]` -/
def P15564028199437214559.Spec : Prop :=
  ∀ n, (P15564028199437214559.a n : ℤ) = A294172 (n + 1)

theorem P15564028199437214559.correct : P15564028199437214559.Spec := by
  intro n
  simp only [A294172, Nat.add_sub_cancel]

end A294172

/-! ## A294172.P11568749271281763779

`∑[∑[lcm(2, n)/2+n+1]]`
-/

namespace A294172.P11568749271281763779
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2 + (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294172.P11568749271281763779

namespace A294172

/-- `∑[∑[lcm(2, n)/2+n+1]]` -/
def P11568749271281763779.Spec : Prop :=
  ∀ n, P11568749271281763779.a n = (A294172 (n + 1) : ℚ)

end A294172

/-! ## A294172.P17042629944331981615

`A342397(n)+∑[n+1]`
-/

namespace A294172.P17042629944331981615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342397 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A294172.P17042629944331981615

namespace A294172

/-- `A342397(n)+∑[n+1]` -/
def P17042629944331981615.Spec : Prop :=
  ∀ n, P17042629944331981615.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P4834832372358790131

`∑[A001318(n)+∑[n+1]]`
-/

namespace A294172.P4834832372358790131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294172.P4834832372358790131

namespace A294172

/-- `∑[A001318(n)+∑[n+1]]` -/
def P4834832372358790131.Spec : Prop :=
  ∀ n, P4834832372358790131.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P8686752366225067917

`∑[∑[A026741(n)+1+n]]`
-/

namespace A294172.P8686752366225067917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294172.P8686752366225067917

namespace A294172

/-- `∑[∑[A026741(n)+1+n]]` -/
def P8686752366225067917.Spec : Prop :=
  ∀ n, P8686752366225067917.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P10540282606096974478

`∑[A274830(n+1)+1+n]`
-/

namespace A294172.P10540282606096974478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294172.P10540282606096974478

namespace A294172

/-- `∑[A274830(n+1)+1+n]` -/
def P10540282606096974478.Spec : Prop :=
  ∀ n, P10540282606096974478.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P6929759227887748382

`∑[∑[abs(n-A064680(n))+1+n]]`
-/

namespace A294172.P6929759227887748382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A064680 n| + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294172.P6929759227887748382

namespace A294172

/-- `∑[∑[abs(n-A064680(n))+1+n]]` -/
def P6929759227887748382.Spec : Prop :=
  ∀ n, P6929759227887748382.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P9390204004373812978

`A080838(n+1)+A008778(n)`
-/

namespace A294172.P9390204004373812978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080838 (n + 1) + A008778 n

end

end A294172.P9390204004373812978

namespace A294172

/-- `A080838(n+1)+A008778(n)` -/
def P9390204004373812978.Spec : Prop :=
  ∀ n, P9390204004373812978.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P7266444317418362760

`A109900(n)+A000292(n+1)`
-/

namespace A294172.P7266444317418362760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + A000292 (n + 1)

end

end A294172.P7266444317418362760

namespace A294172

/-- `A109900(n)+A000292(n+1)` -/
def P7266444317418362760.Spec : Prop :=
  ∀ n, P7266444317418362760.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P16599837973859163124

`A212977(n)+A079824(n+1)`
-/

namespace A294172.P16599837973859163124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212977 n + A079824 (n + 1)

end

end A294172.P16599837973859163124

namespace A294172

/-- `A212977(n)+A079824(n+1)` -/
def P16599837973859163124.Spec : Prop :=
  ∀ n, P16599837973859163124.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P15303989837840747731

`A213779(n+1)-A006918(n)`
-/

namespace A294172.P15303989837840747731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213779 (n + 1) - A006918 n

end

end A294172.P15303989837840747731

namespace A294172

/-- `A213779(n+1)-A006918(n)` -/
def P15303989837840747731.Spec : Prop :=
  ∀ n, P15303989837840747731.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P11388120273655731417

`A000292(n)+A006918(n)+A002623(n)`
-/

namespace A294172.P11388120273655731417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A006918 n + A002623 n)

end

end A294172.P11388120273655731417

namespace A294172

/-- `A000292(n)+A006918(n)+A002623(n)` -/
def P11388120273655731417.Spec : Prop :=
  ∀ n, P11388120273655731417.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P8026562447707549062

`A000330(n+1)+A088003(n+1)-A128624(n+1)`
-/

namespace A294172.P8026562447707549062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A088003 (n + 1) - A128624 (n + 1))

end

end A294172.P8026562447707549062

namespace A294172

/-- `A000330(n+1)+A088003(n+1)-A128624(n+1)` -/
def P8026562447707549062.Spec : Prop :=
  ∀ n, P8026562447707549062.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P4309756797357710367

`A019298(n+1)+A006918(n)`
-/

namespace A294172.P4309756797357710367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (n + 1) + A006918 n

end

end A294172.P4309756797357710367

namespace A294172

/-- `A019298(n+1)+A006918(n)` -/
def P4309756797357710367.Spec : Prop :=
  ∀ n, P4309756797357710367.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P13127207258254640977

`A034828(n+1)+A000292(n+1)`
-/

namespace A294172.P13127207258254640977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + A000292 (n + 1)

end

end A294172.P13127207258254640977

namespace A294172

/-- `A034828(n+1)+A000292(n+1)` -/
def P13127207258254640977.Spec : Prop :=
  ∀ n, P13127207258254640977.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P7811956461679557989

`A199771(n+1)+A005993(n)-A006918(n+1)`
-/

namespace A294172.P7811956461679557989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 1) + (A005993 n - A006918 (n + 1))

end

end A294172.P7811956461679557989

namespace A294172

/-- `A199771(n+1)+A005993(n)-A006918(n+1)` -/
def P7811956461679557989.Spec : Prop :=
  ∀ n, P7811956461679557989.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P13077655956341775180

`A212969(n+2)/2`
-/

namespace A294172.P13077655956341775180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212969 (n + 2) : ℚ) / 2

end

end A294172.P13077655956341775180

namespace A294172

/-- `A212969(n+2)/2` -/
def P13077655956341775180.Spec : Prop :=
  ∀ n, P13077655956341775180.a n = (A294172 (n + 1) : ℚ)

end A294172

/-! ## A294172.P8845464067854116726

`A212685(n+2)-A006918(n+1)`
-/

namespace A294172.P8845464067854116726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212685 (n + 2) - A006918 (n + 1)

end

end A294172.P8845464067854116726

namespace A294172

/-- `A212685(n+2)-A006918(n+1)` -/
def P8845464067854116726.Spec : Prop :=
  ∀ n, P8845464067854116726.a n = A294172 (n + 1)

end A294172

/-! ## A294172.P4961223047973971614

`∑[∑[1-A255563(2*n)]]`
-/

namespace A294172.P4961223047973971614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A255563 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294172.P4961223047973971614

namespace A294172

/-- `∑[∑[1-A255563(2*n)]]` -/
def P4961223047973971614.Spec : Prop :=
  ∀ n, P4961223047973971614.a n = A294172 (n + 1)

end A294172

/-!
# A294173: Numbers k whose nearest neighbors have the same number of divisors, the same number of distinct prime factors, and the same sum of divisors.

The programs for A294173, there is no canonical definition to state claims against.
-/

/-! ## A294173.P17544045497770016636

`A229254(A017983(n+1))+A007318(A071627(n))`
-/

namespace A294173.P17544045497770016636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229254 (A017983 (n + 1)).toNat + A007318 (A071627 n).toNat

end

end A294173.P17544045497770016636

/-!
# A294174: Numbers that can be expressed both as the sum of first primes and as the sum of first composites.

The programs for A294174, there is no canonical definition to state claims against.
-/

/-! ## A294174.P18220049615239195911

`∩[A007504(n), A053767(n)]`
-/

namespace A294174.P18220049615239195911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294174.P18220049615239195911

/-!
# A294175: a(n) = 2^(n-1) + ((1+(-1)^n)/4)*binomial(n, n/2) - binomial(n, floor(n/2)).

The programs for A294175, the canonical program `A294175.P1326977934770168492` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294175 has offset 0).

The definition of A294175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294175.P1326977934770168492

`A027306(n)-A001405(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A294175

/-- `A027306(n)-A001405(n)` -/
def P1326977934770168492.Spec : Prop :=
  ∀ n, P1326977934770168492.a n = A294175 n

theorem P1326977934770168492.correct : P1326977934770168492.Spec := by
  intro n
  simp only [A294175]

end A294175

/-! ## A294175.P10342013038255430581

`A058622(n)-A138364(n)`
-/

namespace A294175.P10342013038255430581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 n - A138364 n

end

end A294175.P10342013038255430581

namespace A294175

/-- `A058622(n)-A138364(n)` -/
def P10342013038255430581.Spec : Prop :=
  ∀ n, P10342013038255430581.a n = A294175 n

end A294175

/-! ## A294175.P3887915850372328852

`A226881(n)-A014495(n)`
-/

namespace A294175.P3887915850372328852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 n - A014495 n

end

end A294175.P3887915850372328852

namespace A294175

/-- `A226881(n)-A014495(n)` -/
def P3887915850372328852.Spec : Prop :=
  ∀ n, P3887915850372328852.a n = A294175 n

theorem P3887915850372328852.correct : P3887915850372328852.Spec := by
  intro n
  simp only [A294175, Nat.add_sub_cancel, A294175.P3887915850372328852.a, A294175.P1326977934770168492.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, A027306, A027306.P2966041652703629727.a, A226881, A226881.P11275722064909766115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294175

/-! ## A294175.P13039131480136850318

`A027306(n)-abs(A126930(n))`
-/

namespace A294175.P13039131480136850318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - |A126930 n|

end

end A294175.P13039131480136850318

namespace A294175

/-- `A027306(n)-abs(A126930(n))` -/
def P13039131480136850318.Spec : Prop :=
  ∀ n, P13039131480136850318.a n = A294175 n

end A294175

/-! ## A294175.P6306660966379616534

`A027306(n)-(A014495(n)+1)`
-/

namespace A294175.P6306660966379616534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - (A014495 n + 1)

end

end A294175.P6306660966379616534

namespace A294175

/-- `A027306(n)-(A014495(n)+1)` -/
def P6306660966379616534.Spec : Prop :=
  ∀ n, P6306660966379616534.a n = A294175 n

theorem P6306660966379616534.correct : P6306660966379616534.Spec := by
  intro n
  simp only [A294175, Nat.add_sub_cancel, A294175.P6306660966379616534.a, A294175.P1326977934770168492.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, A027306, A027306.P2966041652703629727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294175

/-! ## A294175.P10577168585019293751

`A027306(n)+1-A051920(n)`
-/

namespace A294175.P10577168585019293751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + (1 - A051920 n)

end

end A294175.P10577168585019293751

namespace A294175

/-- `A027306(n)+1-A051920(n)` -/
def P10577168585019293751.Spec : Prop :=
  ∀ n, P10577168585019293751.a n = A294175 n

theorem P10577168585019293751.correct : P10577168585019293751.Spec := by
  intro n
  simp only [A294175, Nat.add_sub_cancel, A294175.P10577168585019293751.a, A294175.P1326977934770168492.a, A001405, A001405.P5205018418992951678.a, A027306, A027306.P2966041652703629727.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294175

/-! ## A294175.P15913821874832726696

`A226881(n)+1-A001405(n)`
-/

namespace A294175.P15913821874832726696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 n + (1 - A001405 n)

end

end A294175.P15913821874832726696

namespace A294175

/-- `A226881(n)+1-A001405(n)` -/
def P15913821874832726696.Spec : Prop :=
  ∀ n, P15913821874832726696.a n = A294175 n

theorem P15913821874832726696.correct : P15913821874832726696.Spec := by
  intro n
  simp only [A294175, Nat.add_sub_cancel, A294175.P15913821874832726696.a, A294175.P1326977934770168492.a, A001405, A001405.P5205018418992951678.a, A027306, A027306.P2966041652703629727.a, A226881, A226881.P11275722064909766115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294175

/-! ## A294175.P15465798390815870478

`2^n-A116406(n+1)`
-/

namespace A294175.P15465798390815870478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A116406 (n + 1)

end

end A294175.P15465798390815870478

namespace A294175

/-- `2^n-A116406(n+1)` -/
def P15465798390815870478.Spec : Prop :=
  ∀ n, P15465798390815870478.a n = A294175 n

end A294175

/-! ## A294175.P14697310482662745094

`A045621(n)-A058622(n)`
-/

namespace A294175.P14697310482662745094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n - A058622 n

end

end A294175.P14697310482662745094

namespace A294175

/-- `A045621(n)-A058622(n)` -/
def P14697310482662745094.Spec : Prop :=
  ∀ n, P14697310482662745094.a n = A294175 n

end A294175

/-! ## A294175.P874483214287712473

`A058622(n+1)-A027306(n)`
-/

namespace A294175.P874483214287712473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) - A027306 n

end

end A294175.P874483214287712473

namespace A294175

/-- `A058622(n+1)-A027306(n)` -/
def P874483214287712473.Spec : Prop :=
  ∀ n, P874483214287712473.a n = A294175 n

end A294175

/-! ## A294175.P2125423056914018370

`(A011782(n+1)-A128014(n+1))/2`
-/

namespace A294175.P2125423056914018370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) - A128014 (n + 1) : ℚ) / 2

end

end A294175.P2125423056914018370

namespace A294175

/-- `(A011782(n+1)-A128014(n+1))/2` -/
def P2125423056914018370.Spec : Prop :=
  ∀ n, P2125423056914018370.a n = (A294175 n : ℚ)

end A294175

/-! ## A294175.P14948065771735321080

`(A058622(n+1)-A210736(n+1))/2`
-/

namespace A294175.P14948065771735321080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058622 (n + 1) - A210736 (n + 1) : ℚ) / 2

end

end A294175.P14948065771735321080

namespace A294175

/-- `(A058622(n+1)-A210736(n+1))/2` -/
def P14948065771735321080.Spec : Prop :=
  ∀ n, P14948065771735321080.a n = (A294175 n : ℚ)

end A294175

/-! ## A294175.P11795561834990297350

`A058622(n+1)-(2^n-A058622(n))`
-/

namespace A294175.P11795561834990297350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) - ((2 ^ n : ℤ) - A058622 n)

end

end A294175.P11795561834990297350

namespace A294175

/-- `A058622(n+1)-(2^n-A058622(n))` -/
def P11795561834990297350.Spec : Prop :=
  ∀ n, P11795561834990297350.a n = A294175 n

end A294175

/-! ## A294175.P4883079534733277248

`(A045674(2*n+1)-A128014(n+1))/2`
-/

namespace A294175.P4883079534733277248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045674 (2 * n + 1) - A128014 (n + 1) : ℚ) / 2

end

end A294175.P4883079534733277248

namespace A294175

/-- `(A045674(2*n+1)-A128014(n+1))/2` -/
def P4883079534733277248.Spec : Prop :=
  ∀ n, P4883079534733277248.a n = (A294175 n : ℚ)

end A294175

/-! ## A294175.P4540228669922568701

`A058622(n+1)%A027306(A028310(n))`
-/

namespace A294175.P4540228669922568701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058622 (n + 1)) (A027306 (A028310 n).toNat)

end

end A294175.P4540228669922568701

namespace A294175

/-- `A058622(n+1)%A027306(A028310(n))` -/
def P4540228669922568701.Spec : Prop :=
  ∀ n, P4540228669922568701.a n = A294175 n

end A294175

/-! ## A294175.P12786458255689922123

`A058622(n+1)-(A000225(n)-A058622(n)+1)`
-/

namespace A294175.P12786458255689922123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) - (A000225 n - A058622 n + 1)

end

end A294175.P12786458255689922123

namespace A294175

/-- `A058622(n+1)-(A000225(n)-A058622(n)+1)` -/
def P12786458255689922123.Spec : Prop :=
  ∀ n, P12786458255689922123.a n = A294175 n

end A294175

/-! ## A294175.P12271215547387428388

`A180967(n+1)/4`
-/

namespace A294175.P12271215547387428388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180967 (n + 1) : ℚ) / 4

end

end A294175.P12271215547387428388

namespace A294175

/-- `A180967(n+1)/4` -/
def P12271215547387428388.Spec : Prop :=
  ∀ n, P12271215547387428388.a n = (A294175 n : ℚ)

end A294175

/-! ## A294175.P10937811843429996498

`A117186(n)-2^n`
-/

namespace A294175.P10937811843429996498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 n - (2 ^ n : ℤ)

end

end A294175.P10937811843429996498

namespace A294175

/-- `A117186(n)-2^n` -/
def P10937811843429996498.Spec : Prop :=
  ∀ n, P10937811843429996498.a n = A294175 n

end A294175

/-! ## A294175.P7338235592344895339

`2^(n+1)-A248574(n+1)`
-/

namespace A294175.P7338235592344895339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A248574 (n + 1)

end

end A294175.P7338235592344895339

namespace A294175

/-- `2^(n+1)-A248574(n+1)` -/
def P7338235592344895339.Spec : Prop :=
  ∀ n, P7338235592344895339.a n = A294175 n

end A294175

/-! ## A294175.P5998300638183940032

`A117186(n)%A000079(n)`
-/

namespace A294175.P5998300638183940032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117186 n) (A000079 n)

end

end A294175.P5998300638183940032

namespace A294175

/-- `A117186(n)%A000079(n)` -/
def P5998300638183940032.Spec : Prop :=
  ∀ n, P5998300638183940032.a n = A294175 n

end A294175

/-!
# A294176: Squarefree d such that the fundamental unit of Q(sqrt(d)) is larger than the fundamental unit of Q(sqrt(d)) for any smaller d.

The programs for A294176, there is no canonical definition to state claims against.
-/

/-! ## A294176.P10019502788369616377

`lt[A129283(n), A259825(n+1)]`
-/

namespace A294176.P10019502788369616377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294176.P10019502788369616377

/-! ## A294176.P13190461671290508042

`eq[A002033(A093555(2*n+5)), A021913(n)]`
-/

namespace A294176.P13190461671290508042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A093555 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294176.P13190461671290508042

/-! ## A294176.P5045843655807195651

`∑[A098910(∑[A291700(n)])]`
-/

namespace A294176.P5045843655807195651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098910 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294176.P5045843655807195651

/-! ## A294176.P9464036546481098403

`A243903(∑[A098910(n+1)])`
-/

namespace A294176.P9464036546481098403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294176.P9464036546481098403

/-! ## A294176.P10609434041377256341

`A053438(eq[1, A217770(n)]+1)`
-/

namespace A294176.P10609434041377256341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A294176.P10609434041377256341

/-!
# A294178: a(2n) = 2*n + 1, a(2n+1) = 6*n + 3.

The programs for A294178, the canonical program `A294178.P2907692507844961987` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294178 has offset 0).

The definition of A294178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294178.P2907692507844961987

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294178

/-- `2*a(n-2)-a(n-4)` -/
def P2907692507844961987.Spec : Prop :=
  ∀ n, P2907692507844961987.a n = A294178 n

theorem P2907692507844961987.correct : P2907692507844961987.Spec := by
  intro n
  simp only [A294178]

end A294178

/-! ## A294178.P14971386233844194043

`A289296(n+1)-A289296(n)`
-/

namespace A294178.P14971386233844194043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289296 (n + 1) - A289296 n

end

end A294178.P14971386233844194043

namespace A294178

/-- `A289296(n+1)-A289296(n)` -/
def P14971386233844194043.Spec : Prop :=
  ∀ n, P14971386233844194043.a n = A294178 n

end A294178

/-! ## A294178.P6752550641661297047

`Δ[(n-1)*or(1, n)]`
-/

namespace A294178.P6752550641661297047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294178.P6752550641661297047

namespace A294178

/-- `Δ[(n-1)*or(1, n)]` -/
def P6752550641661297047.Spec : Prop :=
  ∀ n, P6752550641661297047.a n = A294178 n

end A294178

/-! ## A294178.P9462798165387427248

`or(1, 2*lcm(2, n)-n)`
-/

namespace A294178.P9462798165387427248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * Nat.lcm 2 n : ℤ) - (n : ℤ))

end

end A294178.P9462798165387427248

namespace A294178

/-- `or(1, 2*lcm(2, n)-n)` -/
def P9462798165387427248.Spec : Prop :=
  ∀ n, P9462798165387427248.a n = A294178 n

end A294178

/-! ## A294178.P6619463544321404610

`3^(n%2)*or(1, n)`
-/

namespace A294178.P6619463544321404610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2) * Nat.lor 1 n

end

end A294178.P6619463544321404610

namespace A294178

/-- `3^(n%2)*or(1, n)` -/
def P6619463544321404610.Spec : Prop :=
  ∀ n, (P6619463544321404610.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P13311601619777758553

`(2*n)^and(1, n)+n`
-/

namespace A294178.P13311601619777758553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ Nat.land 1 n + n

end

end A294178.P13311601619777758553

namespace A294178

/-- `(2*n)^and(1, n)+n` -/
def P13311601619777758553.Spec : Prop :=
  ∀ n, (P13311601619777758553.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P1526754519571090491

`C(2*n, and(1, n))+n`
-/

namespace A294178.P1526754519571090491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (Nat.land 1 n) + n

end

end A294178.P1526754519571090491

namespace A294178

/-- `C(2*n, and(1, n))+n` -/
def P1526754519571090491.Spec : Prop :=
  ∀ n, (P1526754519571090491.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P10868473594342422056

`Δ[n²-C(n, and(1, n))]`
-/

namespace A294178.P10868473594342422056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose n (Nat.land 1 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294178.P10868473594342422056

namespace A294178

/-- `Δ[n²-C(n, and(1, n))]` -/
def P10868473594342422056.Spec : Prop :=
  ∀ n, P10868473594342422056.a n = A294178 n

end A294178

/-! ## A294178.P10702564472099617994

`∑[n+1]-C(xor(1, n), 2)`
-/

namespace A294178.P10702564472099617994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (Nat.xor 1 n) 2 : ℤ)

end

end A294178.P10702564472099617994

namespace A294178

/-- `∑[n+1]-C(xor(1, n), 2)` -/
def P10702564472099617994.Spec : Prop :=
  ∀ n, P10702564472099617994.a n = A294178 n

end A294178

/-! ## A294178.P16676509508917965088

`Δ[gcd(n, and(1, n))]+2*n`
-/

namespace A294178.P16676509508917965088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)

end

end A294178.P16676509508917965088

namespace A294178

/-- `Δ[gcd(n, and(1, n))]+2*n` -/
def P16676509508917965088.Spec : Prop :=
  ∀ n, P16676509508917965088.a n = A294178 n

end A294178

/-! ## A294178.P17720795771529510878

`or(1, n*(2*n+1)%4)`
-/

namespace A294178.P17720795771529510878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * ((2 * n + 1) % 4))

end

end A294178.P17720795771529510878

namespace A294178

/-- `or(1, n*(2*n+1)%4)` -/
def P17720795771529510878.Spec : Prop :=
  ∀ n, (P17720795771529510878.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P3638593684074748525

`or(1, n*(2*and(1, n)+1))`
-/

namespace A294178.P3638593684074748525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (2 * Nat.land 1 n + 1))

end

end A294178.P3638593684074748525

namespace A294178

/-- `or(1, n*(2*and(1, n)+1))` -/
def P3638593684074748525.Spec : Prop :=
  ∀ n, (P3638593684074748525.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P15984269109198347993

`gcd(2*n, (n+1)%2)+n`
-/

namespace A294178.P15984269109198347993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) ((n + 1) % 2) + n

end

end A294178.P15984269109198347993

namespace A294178

/-- `gcd(2*n, (n+1)%2)+n` -/
def P15984269109198347993.Spec : Prop :=
  ∀ n, (P15984269109198347993.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P4947407803132430926

`C(2*n, (n+2)%2)+n`
-/

namespace A294178.P4947407803132430926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ((n + 2) % 2) + n

end

end A294178.P4947407803132430926

namespace A294178

/-- `C(2*n, (n+2)%2)+n` -/
def P4947407803132430926.Spec : Prop :=
  ∀ n, (P4947407803132430926.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P2449135090032128165

`Δ[n²-(n-1)*and(1, n)]`
-/

namespace A294178.P2449135090032128165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294178.P2449135090032128165

namespace A294178

/-- `Δ[n²-(n-1)*and(1, n)]` -/
def P2449135090032128165.Spec : Prop :=
  ∀ n, P2449135090032128165.a n = A294178 n

end A294178

/-! ## A294178.P10125323220351438520

`Δ[n²-lcm(n-1, and(1, n))]`
-/

namespace A294178.P10125323220351438520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294178.P10125323220351438520

namespace A294178

/-- `Δ[n²-lcm(n-1, and(1, n))]` -/
def P10125323220351438520.Spec : Prop :=
  ∀ n, P10125323220351438520.a n = A294178 n

end A294178

/-! ## A294178.P12273432009572657382

`C(2*n, Δ[floor(n/2)])+n`
-/

namespace A294178.P12273432009572657382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (f1 (n + 1) - f1 n).toNat + n

end

end A294178.P12273432009572657382

namespace A294178

/-- `C(2*n, Δ[floor(n/2)])+n` -/
def P12273432009572657382.Spec : Prop :=
  ∀ n, (P12273432009572657382.a n : ℤ) = A294178 n

end A294178

/-! ## A294178.P10581027512556707467

`∑[∑[ogf((1+3x+x^2+3x^3)/(1+2x+x^2))]]`
-/

namespace A294178.P10581027512556707467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294178.P10581027512556707467

namespace A294178

/-- `∑[∑[ogf((1+3x+x^2+3x^3)/(1+2x+x^2))]]` -/
def P10581027512556707467.Spec : Prop :=
  ∀ n, P10581027512556707467.a n = A294178 n

end A294178

/-! ## A294178.P18065722623552561940

`ogf((1+3x+x^2+3x^3)/(1-2x^2+x^4))`
-/

namespace A294178.P18065722623552561940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 3] [1, 0, -2, 0, 1] n

end

end A294178.P18065722623552561940

namespace A294178

/-- `ogf((1+3x+x^2+3x^3)/(1-2x^2+x^4))` -/
def P18065722623552561940.Spec : Prop :=
  ∀ n, P18065722623552561940.a n = A294178 n

end A294178

/-! ## A294178.P10356267750677066328

`or(1, n-1)²-n*(n-3)`
-/

namespace A294178.P10356267750677066328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1) ^ 2 - (n : ℤ) * ((n : ℤ) - 3)

end

end A294178.P10356267750677066328

namespace A294178

/-- `or(1, n-1)²-n*(n-3)` -/
def P10356267750677066328.Spec : Prop :=
  ∀ n, P10356267750677066328.a n = A294178 n

end A294178

/-!
# A294180: The 3-symbol Pell word.

The programs for A294180, the canonical program `A294180.P3974927329510953203` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294180 has offset 1).

The definition of A294180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294180.P3974927329510953203

`A263844(n+1)+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A294180

/-- `A263844(n+1)+1` -/
def P3974927329510953203.Spec : Prop :=
  ∀ n, P3974927329510953203.a n = A294180 (n + 1)

theorem P3974927329510953203.correct : P3974927329510953203.Spec := by
  intro n
  simp only [A294180, Nat.add_sub_cancel]

end A294180

/-! ## A294180.P10530677329003865521

`A105899(A286992(n+1))`
-/

namespace A294180.P10530677329003865521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 (A286992 (n + 1)).toNat

end

end A294180.P10530677329003865521

namespace A294180

/-- `A105899(A286992(n+1))` -/
def P10530677329003865521.Spec : Prop :=
  ∀ n, P10530677329003865521.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P12979676155092207178

`A282864(Δ[A286687(n+1)])`
-/

namespace A294180.P12979676155092207178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282864 (f1 (n + 1) - f1 n).toNat

end

end A294180.P12979676155092207178

namespace A294180

/-- `A282864(Δ[A286687(n+1)])` -/
def P12979676155092207178.Spec : Prop :=
  ∀ n, P12979676155092207178.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P3618458327699974433

`A307247(A003151(n+1))+1`
-/

namespace A294180.P3618458327699974433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A003151 (n + 1)).toNat + 1

end

end A294180.P3618458327699974433

namespace A294180

/-- `A307247(A003151(n+1))+1` -/
def P3618458327699974433.Spec : Prop :=
  ∀ n, P3618458327699974433.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P3240602727118826488

`A307247(A080652(n+1))+1`
-/

namespace A294180.P3240602727118826488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A080652 (n + 1)).toNat + 1

end

end A294180.P3240602727118826488

namespace A294180

/-- `A307247(A080652(n+1))+1` -/
def P3240602727118826488.Spec : Prop :=
  ∀ n, P3240602727118826488.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P14719463144244853950

`A307247(A082845(n+1))+1`
-/

namespace A294180.P14719463144244853950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A082845 (n + 1)).toNat + 1

end

end A294180.P14719463144244853950

namespace A294180

/-- `A307247(A082845(n+1))+1` -/
def P14719463144244853950.Spec : Prop :=
  ∀ n, P14719463144244853950.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P6594945398297411502

`A307247(A188376(n+1))+1`
-/

namespace A294180.P6594945398297411502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A188376 (n + 1)).toNat + 1

end

end A294180.P6594945398297411502

namespace A294180

/-- `A307247(A188376(n+1))+1` -/
def P6594945398297411502.Spec : Prop :=
  ∀ n, P6594945398297411502.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P3856257373535657039

`A270788(6-Δ[A286687(n+1)])`
-/

namespace A294180.P3856257373535657039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (6 - (f1 (n + 1) - f1 n)).toNat

end

end A294180.P3856257373535657039

namespace A294180

/-- `A270788(6-Δ[A286687(n+1)])` -/
def P3856257373535657039.Spec : Prop :=
  ∀ n, P3856257373535657039.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P7112985548902407130

`gcd(6, Δ[A003151(A003152(n+1)+2)])`
-/

namespace A294180.P7112985548902407130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003152 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (f1 (n + 1) - f1 n)

end

end A294180.P7112985548902407130

namespace A294180

/-- `gcd(6, Δ[A003151(A003152(n+1)+2)])` -/
def P7112985548902407130.Spec : Prop :=
  ∀ n, (P7112985548902407130.a n : ℤ) = A294180 (n + 1)

end A294180

/-! ## A294180.P5692817119782618585

`A171588(n+1)+2-A188374(n+1)`
-/

namespace A294180.P5692817119782618585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) + (2 - A188374 (n + 1))

end

end A294180.P5692817119782618585

namespace A294180

/-- `A171588(n+1)+2-A188374(n+1)` -/
def P5692817119782618585.Spec : Prop :=
  ∀ n, P5692817119782618585.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P16887533032879472813

`(Δ[A001952(A049472(n+1)+1)]+8)%5`
-/

namespace A294180.P16887533032879472813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A049472 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 8) 5

end

end A294180.P16887533032879472813

namespace A294180

/-- `(Δ[A001952(A049472(n+1)+1)]+8)%5` -/
def P16887533032879472813.Spec : Prop :=
  ∀ n, P16887533032879472813.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P17829713855888460625

`∏{e}[A000040(Δ[A286687(n+1)]+1)+1, #]`
-/

namespace A294180.P17829713855888460625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A294180.P17829713855888460625

namespace A294180

/-- `∏{e}[A000040(Δ[A286687(n+1)]+1)+1, #]` -/
def P17829713855888460625.Spec : Prop :=
  ∀ n, (P17829713855888460625.a n : ℤ) = A294180 (n + 1)

end A294180

/-! ## A294180.P12318533548374264307

`A307247(ceil(sqrt(A046092(n)+1))+1+n)+1`
-/

namespace A294180.P12318533548374264307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (⌈Real.sqrt (A046092 n + 1 : ℝ)⌉ + 1 + (n : ℤ)).toNat + 1

end

end A294180.P12318533548374264307

namespace A294180

/-- `A307247(ceil(sqrt(A046092(n)+1))+1+n)+1` -/
def P12318533548374264307.Spec : Prop :=
  ∀ n, P12318533548374264307.a n = A294180 (n + 1)

end A294180

/-! ## A294180.P8805149827610292036

`A171588(n+1)+A286686(n+2)-A286687(n+1)`
-/

namespace A294180.P8805149827610292036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) + (A286686 (n + 2) - A286687 (n + 1))

end

end A294180.P8805149827610292036

namespace A294180

/-- `A171588(n+1)+A286686(n+2)-A286687(n+1)` -/
def P8805149827610292036.Spec : Prop :=
  ∀ n, P8805149827610292036.a n = A294180 (n + 1)

end A294180

/-!
# A294181: Coefficients in expansion of E_2/E_4.

The programs for A294181, there is no canonical definition to state claims against.
-/

/-! ## A294181.P7397436117293207167

`A294183(n)%(3*A001943(n))`
-/

namespace A294181.P7397436117293207167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294183 n) (3 * A001943 n)

end

end A294181.P7397436117293207167

/-!
# A294184: a(n) is the number of ways to arrange numbers from 1 to 2*n in a row, starting with 1, such that the sum of every two adjacent numbers is prime, but also considering the ends as adjacent.

The programs for A294184, there is no canonical definition to state claims against.
-/

/-! ## A294184.P3046772777633862702

`A125712(n+1)/(2*(n+1))`
-/

namespace A294184.P3046772777633862702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125712 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A294184.P3046772777633862702

/-! ## A294184.P8000502636408780186

`sqrt(A123932(n))*A051252(n+1)`
-/

namespace A294184.P8000502636408780186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123932 n : ℝ) * (A051252 (n + 1) : ℝ)

end

end A294184.P8000502636408780186

/-! ## A294184.P630887811717761802

`∑[A014071(n)]*A051252(n+1)`
-/

namespace A294184.P630887811717761802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A051252 (n + 1)

end

end A294184.P630887811717761802

/-!
# A294185: Number of distinct lesser twin primes which are in Goldbach partitions of 2n.

The programs for A294185, there is no canonical definition to state claims against.
-/

/-! ## A294185.P1401297387046472679

`A294186(n+2)`
-/

namespace A294185.P1401297387046472679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294186 (n + 2)

end

end A294185.P1401297387046472679

/-! ## A294185.P17540864851721208993

`xor(A185238(A255509(n+1)), A237284(n+1))`
-/

namespace A294185.P17540864851721208993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185238 (A255509 (n + 1)).toNat) (A237284 (n + 1))

end

end A294185.P17540864851721208993

/-! ## A294185.P12658403312587100145

`A073811(A212390(n))*A237284(n+1)`
-/

namespace A294185.P12658403312587100145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (A212390 n).toNat * A237284 (n + 1)

end

end A294185.P12658403312587100145

/-! ## A294185.P10020916845992479370

`A043288(A214938(n))*A237284(n+1)`
-/

namespace A294185.P10020916845992479370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A214938 n).toNat * A237284 (n + 1)

end

end A294185.P10020916845992479370

/-! ## A294185.P12276699768806892727

`A240328(A223789(n+1))+A237284(n+1)`
-/

namespace A294185.P12276699768806892727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A223789 (n + 1)).toNat + A237284 (n + 1)

end

end A294185.P12276699768806892727

/-!
# A294186: Number of distinct greater twin primes which are in Goldbach partitions of 2n.

The programs for A294186, there is no canonical definition to state claims against.
-/

/-! ## A294186.P18035365982825109853

`A294185(gcd(n, C(2, n)))`
-/

namespace A294186.P18035365982825109853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (Nat.gcd n (Nat.choose 2 n))

end

end A294186.P18035365982825109853

/-! ## A294186.P7434349120353809821

`A294185(floor(acot(n)+n))`
-/

namespace A294186.P7434349120353809821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A294186.P7434349120353809821

/-! ## A294186.P9547949721706515960

`A294185(round(acot(n)+n))`
-/

namespace A294186.P9547949721706515960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A294186.P9547949721706515960

/-! ## A294186.P6697939384279738586

`A294185(or(n, floor(acot(n))))`
-/

namespace A294186.P6697939384279738586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A294186.P6697939384279738586

/-! ## A294186.P2061198186439303191

`A294185(xor(n, floor(acot(n))))`
-/

namespace A294186.P2061198186439303191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A294186.P2061198186439303191

/-! ## A294186.P14948556058663837525

`A294185(abs(1-n)+1)`
-/

namespace A294186.P14948556058663837525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (|1 - (n : ℤ)| + 1).toNat

end

end A294186.P14948556058663837525

/-! ## A294186.P8150165213711948232

`A294185(A028310(n))%12`
-/

namespace A294186.P8150165213711948232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294185 (A028310 n).toNat) 12

end

end A294186.P8150165213711948232

/-! ## A294186.P1540011868952210248

`A294185(A233583(n+1))%12`
-/

namespace A294186.P1540011868952210248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294185 (A233583 (n + 1)).toNat) 12

end

end A294186.P1540011868952210248

/-! ## A294186.P1352676459641276655

`A294185(A000196(n²+1))%12`
-/

namespace A294186.P1352676459641276655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294185 (A000196 (n ^ 2 + 1)).toNat) 12

end

end A294186.P1352676459641276655

/-! ## A294186.P8230619865148793720

`A294185(A008486(n)-2*n)%15`
-/

namespace A294186.P8230619865148793720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294185 (A008486 n - (2 * n : ℤ)).toNat) 15

end

end A294186.P8230619865148793720

/-!
# A294187: Numbers k == 77 (mod 120) such that (2*k-1)*2^((k-1)/2), (2*k-1)*3^((k-1)/2) and (2*k-1)*5^((k-1)/2) are congruent to 1 (mod k).

The programs for A294187, there is no canonical definition to state claims against.
-/

/-! ## A294187.P12693725815391327262

`p?[10*12*n-43]`
-/

namespace A294187.P12693725815391327262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (12 * n) : ℤ) - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294187.P12693725815391327262

/-! ## A294187.P18317537667107144650

`or(1, p?[A128468(4*n+2)])`
-/

namespace A294187.P18317537667107144650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294187.P18317537667107144650

/-! ## A294187.P15601072069698021193

`or(1, p?[A063118(8*n+6)])`
-/

namespace A294187.P15601072069698021193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (8 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294187.P15601072069698021193

/-! ## A294187.P7136411660847799411

`or(1, p?[A316317(9*n+5)])`
-/

namespace A294187.P7136411660847799411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 (9 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294187.P7136411660847799411

/-! ## A294187.P14043005151586607268

`filter[A107003(n+1), A185708(#)]`
-/

namespace A294187.P14043005151586607268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A294187.P14043005151586607268

/-!
# A294188: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(k*(1/(1-x)^k - 1)).

The programs for A294188, there is no canonical definition to state claims against.
-/

/-! ## A294188.P12544368871213973170

`C(A125781(n), A342459(A188358(3*n+4)))`
-/

namespace A294188.P12544368871213973170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A125781 n).toNat (A342459 (A188358 (3 * n + 4)).toNat).toNat

end

end A294188.P12544368871213973170

/-! ## A294188.P3982318513695903850

`A108611(8*A355423(n))`
-/

namespace A294188.P3982318513695903850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (8 * A355423 n).toNat

end

end A294188.P3982318513695903850

/-! ## A294188.P4864581743681447875

`A340251(A054654(n)^4)`
-/

namespace A294188.P4864581743681447875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A054654 n ^ 4).toNat

end

end A294188.P4864581743681447875

/-! ## A294188.P6213204824370308236

`A340251(A355423(n)^4)`
-/

namespace A294188.P6213204824370308236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A355423 n ^ 4).toNat

end

end A294188.P6213204824370308236

/-! ## A294188.P5613981833744105860

`A340251(A054654(n)²²)`
-/

namespace A294188.P5613981833744105860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 ((A054654 n ^ 2) ^ 2).toNat

end

end A294188.P5613981833744105860

/-!
# A294189: E.g.f.: exp(2*(1/(1-x)^2 - 1)).

The programs for A294189, there is no canonical definition to state claims against.
-/

/-! ## A294189.P5942773675489119412

`A294188(∑[n+3])`
-/

namespace A294189.P5942773675489119412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294189.P5942773675489119412

/-! ## A294189.P12158584065043147625

`record[A294188(A165157(n))]`
-/

namespace A294189.P12158584065043147625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 (A165157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294189.P12158584065043147625

/-! ## A294189.P9884777607609154942

`record[A294188(∑[A262672(n)])]`
-/

namespace A294189.P9884777607609154942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294189.P9884777607609154942

/-! ## A294189.P14997230543772997890

`record[gcd(A055138(n), A294188(n))]`
-/

namespace A294189.P14997230543772997890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A294188 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294189.P14997230543772997890

/-! ## A294189.P13927317437399218227

`A294188(A141214(n))%A208022(n+1)`
-/

namespace A294189.P13927317437399218227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294188 (A141214 n).toNat) (A208022 (n + 1))

end

end A294189.P13927317437399218227

/-!
# A294190: Expansion of e.g.f. exp(3*(1/(1-x)^3 - 1)).

The programs for A294190, there is no canonical definition to state claims against.
-/

/-! ## A294190.P13932866351332773733

`A294188(∑[n+3]+n+3)`
-/

namespace A294190.P13932866351332773733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294190.P13932866351332773733

/-! ## A294190.P6456509677274968209

`record[A294188(abs(A046691(n)))]`
-/

namespace A294190.P6456509677274968209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294190.P6456509677274968209

/-! ## A294190.P11040532471889523631

`or(1, A294188(A046691(n+2)))`
-/

namespace A294190.P11040532471889523631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294188 (A046691 (n + 2)).toNat)

end

end A294190.P11040532471889523631

/-! ## A294190.P10338805544291444773

`A294188(A046691(n+2))/A025455(2*n)!`
-/

namespace A294190.P10338805544291444773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294188 (A046691 (n + 2)).toNat : ℚ) / (Nat.factorial (A025455 (2 * n)).toNat : ℚ)

end

end A294190.P10338805544291444773

/-! ## A294190.P1062760912831467078

`A294188(A046691(n+2))+A010051(2*(n+2))`
-/

namespace A294190.P1062760912831467078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 (A046691 (n + 2)).toNat + A010051 (2 * (n + 2))

end

end A294190.P1062760912831467078

/-!
# A294191: a(n) = n! * [x^n] exp(n*((1+x)^n - 1)).

The programs for A294191, there is no canonical definition to state claims against.
-/

/-! ## A294191.P905424211300283513

`A294118(∑[4*n])`
-/

namespace A294191.P905424211300283513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294191.P905424211300283513

/-! ## A294191.P14931324027967220361

`A294118(A046092(n))^A178489(n)`
-/

namespace A294191.P14931324027967220361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294118 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A294191.P14931324027967220361

/-! ## A294191.P2455921824082540154

`lcm(A033999(n), A294118(A046092(n)))`
-/

namespace A294191.P2455921824082540154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A294118 (A046092 n).toNat)

end

end A294191.P2455921824082540154

/-! ## A294191.P6213614792798346728

`A294118(A046092(n))+A000007(n+1)`
-/

namespace A294191.P6213614792798346728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294118 (A046092 n).toNat + A000007 (n + 1)

end

end A294191.P6213614792798346728

/-! ## A294191.P8250044466083704176

`lcm(A057077(n), A294118(A106232(n+1)))`
-/

namespace A294191.P8250044466083704176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A294118 (A106232 (n + 1)).toNat)

end

end A294191.P8250044466083704176

/-!
# A294192: a(n) = n! * [x^n] exp(n*(1/(1-x)^n- 1)).

The programs for A294192, there is no canonical definition to state claims against.
-/

/-! ## A294192.P1142219022518065778

`A294188(∑[4*n])`
-/

namespace A294192.P1142219022518065778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294192.P1142219022518065778

/-! ## A294192.P314754018926707498

`lcm(A009001(n), A294188(A046092(n)))`
-/

namespace A294192.P314754018926707498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 n) (A294188 (A046092 n).toNat)

end

end A294192.P314754018926707498

/-! ## A294192.P4265913003070589854

`or(A000035(n), A294188(A046092(n)))`
-/

namespace A294192.P4265913003070589854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A294188 (A046092 n).toNat)

end

end A294192.P4265913003070589854

/-! ## A294192.P9464528028684592925

`or(A036987(n), A294188(A046092(n)))`
-/

namespace A294192.P9464528028684592925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A294188 (A046092 n).toNat)

end

end A294192.P9464528028684592925

/-! ## A294192.P2021784400089194481

`A178334(n+2)*A294188(A046092(n))`
-/

namespace A294192.P2021784400089194481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 2) * A294188 (A046092 n).toNat

end

end A294192.P2021784400089194481

/-!
# A294193: a(n) = sum of integers between n!+1 and (n+1)!.

The programs for A294193, the canonical program `A294193.P17962944169664122984` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294193 has offset 0).

The definition of A294193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294193.P771956120595191241

`1/2*((n+1)!*((n+1)!+1)-n!*(n!+1))`
-/

namespace A294193.P771956120595191241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((Nat.factorial (n + 1) * (Nat.factorial (n + 1) + 1) : ℤ) - (Nat.factorial n * (Nat.factorial n + 1) : ℤ) : ℚ)

end

end A294193.P771956120595191241

namespace A294193

/-- `1/2*((n+1)!*((n+1)!+1)-n!*(n!+1))` -/
def P771956120595191241.Spec : Prop :=
  ∀ n, P771956120595191241.a n = (A294193 n : ℚ)

end A294193

/-! ## A294193.P17962944169664122984

`A055555(n+1)-A055555(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A294193

/-- `A055555(n+1)-A055555(n)` -/
def P17962944169664122984.Spec : Prop :=
  ∀ n, P17962944169664122984.a n = A294193 n

theorem P17962944169664122984.correct : P17962944169664122984.Spec := by
  intro n
  simp only [A294193]

end A294193

/-! ## A294193.P1754091634610469142

`Δ[C(n!+1, 2)]`
-/

namespace A294193.P1754091634610469142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A294193.P1754091634610469142

namespace A294193

/-- `Δ[C(n!+1, 2)]` -/
def P1754091634610469142.Spec : Prop :=
  ∀ n, P1754091634610469142.a n = A294193 n

end A294193

/-! ## A294193.P4970751019962430007

`Δ[(n!+1/2)²/2]`
-/

namespace A294193.P4970751019962430007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) + (1 : ℚ) / 2) ^ 2 / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294193.P4970751019962430007

namespace A294193

/-- `Δ[(n!+1/2)²/2]` -/
def P4970751019962430007.Spec : Prop :=
  ∀ n, P4970751019962430007.a n = (A294193 n : ℚ)

end A294193

/-! ## A294193.P9464371704399676836

`Δ[(n!+1)/2*n!]`
-/

namespace A294193.P9464371704399676836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℚ) / 2 * (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294193.P9464371704399676836

namespace A294193

/-- `Δ[(n!+1)/2*n!]` -/
def P9464371704399676836.Spec : Prop :=
  ∀ n, P9464371704399676836.a n = (A294193 n : ℚ)

end A294193

/-!
# A294194: a(n) is the sum of primes between n!+1 and (n+1)!.

The programs for A294194, the canonical program `A294194.P9935065760248985394` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294194 has offset 0).

The definition of A294194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294194.P9935065760248985394

`A063959(n+1)-A063959(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A294194

/-- `A063959(n+1)-A063959(n)` -/
def P9935065760248985394.Spec : Prop :=
  ∀ n, P9935065760248985394.a n = A294194 n

theorem P9935065760248985394.correct : P9935065760248985394.Spec := by
  intro n
  simp only [A294194]

end A294194

/-! ## A294194.P6944724690354934741

`Δ[A063959(n)]`
-/

namespace A294194.P6944724690354934741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294194.P6944724690354934741

namespace A294194

/-- `Δ[A063959(n)]` -/
def P6944724690354934741.Spec : Prop :=
  ∀ n, P6944724690354934741.a n = A294194 n

theorem P6944724690354934741.correct : P6944724690354934741.Spec := by
  intro n
  simp only [A294194, Nat.add_sub_cancel, A294194.P6944724690354934741.f1, A294194.P6944724690354934741.a, A294194.P9935065760248985394.a, SequenceMachineLib.memo_apply]

end A294194

/-! ## A294194.P6014966688341407680

`Δ[A007504(A003604(n))]`
-/

namespace A294194.P6014966688341407680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A003604 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294194.P6014966688341407680

namespace A294194

/-- `Δ[A007504(A003604(n))]` -/
def P6014966688341407680.Spec : Prop :=
  ∀ n, P6014966688341407680.a n = A294194 n

end A294194

/-! ## A294194.P17048273082823842572

`A007504(∑[A061232(n)])-A063959(n)`
-/

namespace A294194.P17048273082823842572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A063959 n

end

end A294194.P17048273082823842572

namespace A294194

/-- `A007504(∑[A061232(n)])-A063959(n)` -/
def P17048273082823842572.Spec : Prop :=
  ∀ n, P17048273082823842572.a n = A294194 n

end A294194

/-!
# A294195: 

The programs for A294195, there is no canonical definition to state claims against.
-/

/-! ## A294195.P8889115394115904544

`ratio[A034386(n!)]`
-/

namespace A294195.P8889115394115904544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (Nat.factorial n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A294195.P8889115394115904544

/-!
# A294196: Floor of log of product of all primes between n!+1 and (n+1)!.

The programs for A294196, there is no canonical definition to state claims against.
-/

/-! ## A294196.P11213845576026821077

`A233279(2*A240779(n+1))`
-/

namespace A294196.P11213845576026821077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (2 * A240779 (n + 1)).toNat

end

end A294196.P11213845576026821077

/-!
# A294197: Floor of log base n! of product of all primes between n!+1 and (n+1)!.

The programs for A294197, there is no canonical definition to state claims against.
-/

/-! ## A294197.P16385422709764129407

`A233592(A149924(n+1))`
-/

namespace A294197.P16385422709764129407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233592 (A149924 (n + 1)).toNat

end

end A294197.P16385422709764129407

/-!
# A294198: Labeled trees on n nodes with at least one node of degree two.

The programs for A294198, there is no canonical definition to state claims against.
-/

/-! ## A294198.P1165365979696360486

`A000272(n+1)-A005512(n+1)`
-/

namespace A294198.P1165365979696360486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) - A005512 (n + 1)

end

end A294198.P1165365979696360486

/-! ## A294198.P3346675184991034892

`A343088(A000096(n))-A005512(n+1)`
-/

namespace A294198.P3346675184991034892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A000096 n).toNat - A005512 (n + 1)

end

end A294198.P3346675184991034892

/-! ## A294198.P3371771999661073017

`A343088(A000096(n))-A331437(∑[n]+n)`
-/

namespace A294198.P3371771999661073017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A000096 n).toNat - A331437 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A294198.P3371771999661073017

/-! ## A294198.P12830579142999784433

`A102743(n)-(A277505(n)+A005512(n+1))`
-/

namespace A294198.P12830579142999784433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102743 n - (A277505 n + A005512 (n + 1))

end

end A294198.P12830579142999784433

/-! ## A294198.P5634518098016948598

`A343088(A000096(n))-A060313(n+1)/(n+1)`
-/

namespace A294198.P5634518098016948598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343088 (A000096 n).toNat : ℚ) - (A060313 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294198.P5634518098016948598

/-!
# A294199: Number of partitions of n into powers of 2 such that 1 and 2 cannot both be parts of a particular partition, and 4 and 8 cannot both be parts of a particular partition, and 16 and 32, and so on.

The programs for A294199, there is no canonical definition to state claims against.
-/

/-! ## A294199.P4572529689579018762

`A043568(A102456(n))+A025480(n)`
-/

namespace A294199.P4572529689579018762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A102456 n).toNat + A025480 n

end

end A294199.P4572529689579018762

/-! ## A294199.P7055462983554027625

`A000120(A288664(n)-A329849(n+1))`
-/

namespace A294199.P7055462983554027625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A288664 n - A329849 (n + 1)).toNat

end

end A294199.P7055462983554027625

/-! ## A294199.P11637276081180598780

`A043282(A042950(n))+floor(n/(xor(n, n+1)+1))`
-/

namespace A294199.P11637276081180598780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A042950 n).toNat + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A294199.P11637276081180598780

/-! ## A294199.P3212851563396557579

`A043282(A042950(n))+A025480(n)`
-/

namespace A294199.P3212851563396557579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A042950 n).toNat + A025480 n

end

end A294199.P3212851563396557579

/-! ## A294199.P14895531348972266756

`A262438(A213683(n))+A025480(n)`
-/

namespace A294199.P14895531348972266756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262438 (A213683 n).toNat + A025480 n

end

end A294199.P14895531348972266756

