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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A104600: Number of matrices of any size up to column permutations, with n different elements, zero elsewhere and with no zero row or column.

The programs for A104600, there is no canonical definition to state claims against.
-/

/-! ## A104600.P9838955533711299690

`A305847(n!²)`
-/

namespace A104600.P9838955533711299690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305847 (Nat.factorial n ^ 2)

end

end A104600.P9838955533711299690

/-!
# A104601: Triangle T(r,n) read by rows: number of n X n (0,1)-matrices with exactly r entries equal to 1 and no zero row or columns.

The programs for A104601, there is no canonical definition to state claims against.
-/

/-! ## A104601.P10450380655973103029

`A335156(A191748(n))`
-/

namespace A104601.P10450380655973103029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335156 (A191748 n).toNat

end

end A104601.P10450380655973103029

/-! ## A104601.P17148611898853104609

`A053978(A002863(n+1))*A204329(n+2)`
-/

namespace A104601.P17148611898853104609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053978 (A002863 (n + 1)).toNat * A204329 (n + 2)

end

end A104601.P17148611898853104609

/-!
# A104602: Number of square (0,1)-matrices with exactly n entries equal to 1 and no zero row or columns.

The programs for A104602, there is no canonical definition to state claims against.
-/

/-! ## A104602.P18441123111862777316

`A230880(n)/2^n`
-/

namespace A104602.P18441123111862777316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230880 n : ℚ) / (2 ^ n : ℚ)

end

end A104602.P18441123111862777316

/-! ## A104602.P5239617977099968999

`round(A230880(n)/A000079(n))`
-/

namespace A104602.P5239617977099968999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230880 n : ℚ) / (A000079 n : ℚ))

end

end A104602.P5239617977099968999

/-! ## A104602.P8327348582448463647

`or(A230880(n)/A000079(n), A000007(n))`
-/

namespace A104602.P8327348582448463647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A230880 n : ℚ) / (A000079 n : ℚ))) (A000007 n)

end

end A104602.P8327348582448463647

/-! ## A104602.P15985691202138472282

`A230880(n)/A000079(n)*A007318(∑[n])`
-/

namespace A104602.P15985691202138472282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230880 n : ℚ) / (A000079 n : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A104602.P15985691202138472282

/-! ## A104602.P18044172961113032272

`gcd(A230880(n)/A000079(n), A315596(n)%2)`
-/

namespace A104602.P18044172961113032272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A230880 n : ℚ) / (A000079 n : ℚ))) (Int.tmod (A315596 n) 2)

end

end A104602.P18044172961113032272

/-! ## A104602.P7236710383717152424

`C(A000027(n+1)-n, 2)+A230880(n)/A000079(n)`
-/

namespace A104602.P7236710383717152424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000027 (n + 1) - (n : ℤ)).toNat 2 : ℚ) + (A230880 n : ℚ) / (A000079 n : ℚ)

end

end A104602.P7236710383717152424

/-!
# A104604: From a mathematical riddle that I could not solve.

The programs for A104604, there is no canonical definition to state claims against.
-/

/-! ## A104604.P8931064386079164680

`A069778(∑{p}[n+1, #^val(n+1, #)])+gcd(2, n)`
-/

namespace A104604.P8931064386079164680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 (∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p) + (Nat.gcd 2 n : ℤ)

end

end A104604.P8931064386079164680

/-!
# A104606: Write the natural numbers in base 2 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104606, there is no canonical definition to state claims against.
-/

/-! ## A104606.P3078116398198420981

`A030190(∑[n+1])`
-/

namespace A104606.P3078116398198420981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104606.P3078116398198420981

/-! ## A104606.P1578513756898028050

`A030302(∑[n+1])`
-/

namespace A104606.P1578513756898028050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104606.P1578513756898028050

/-! ## A104606.P4422262960118053712

`A100489(n+1)%2`
-/

namespace A104606.P4422262960118053712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100489 (n + 1)) 2

end

end A104606.P4422262960118053712

/-! ## A104606.P5551369202175912241

`1-A030315(∑[n+1])`
-/

namespace A104606.P5551369202175912241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104606.P5551369202175912241

/-! ## A104606.P4343942062118167765

`∑[Δ[A030190(∑[n])]%2]`
-/

namespace A104606.P4343942062118167765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104606.P4343942062118167765

/-! ## A104606.P4636923294180853640

`and(1, A030190(A000217(n+1)))`
-/

namespace A104606.P4636923294180853640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030190 (A000217 (n + 1)).toNat)

end

end A104606.P4636923294180853640

/-! ## A104606.P2468061887632196960

`and(A020527(n), A100489(n+1))`
-/

namespace A104606.P2468061887632196960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020527 n) (A100489 (n + 1))

end

end A104606.P2468061887632196960

/-! ## A104606.P5376346236394046702

`and(A020737(n), A100489(n+1))`
-/

namespace A104606.P5376346236394046702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A100489 (n + 1))

end

end A104606.P5376346236394046702

/-! ## A104606.P2064053155902210939

`and(A027608(n), A100489(n+1))`
-/

namespace A104606.P2064053155902210939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A100489 (n + 1))

end

end A104606.P2064053155902210939

/-! ## A104606.P4155239862970689141

`and(A048479(n), A100489(n+1))`
-/

namespace A104606.P4155239862970689141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A100489 (n + 1))

end

end A104606.P4155239862970689141

/-! ## A104606.P11511534588805147287

`and(A048578(n), A100489(n+1))`
-/

namespace A104606.P11511534588805147287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A100489 (n + 1))

end

end A104606.P11511534588805147287

/-! ## A104606.P5158946531597917907

`and(A050915(n), A100489(n+1))`
-/

namespace A104606.P5158946531597917907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A100489 (n + 1))

end

end A104606.P5158946531597917907

/-! ## A104606.P17309854470995379231

`and(A060576(n), A100489(n+1))`
-/

namespace A104606.P17309854470995379231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A100489 (n + 1))

end

end A104606.P17309854470995379231

/-! ## A104606.P6883809943461811632

`and(A085601(n), A100489(n+1))`
-/

namespace A104606.P6883809943461811632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085601 n) (A100489 (n + 1))

end

end A104606.P6883809943461811632

/-! ## A104606.P10760676483729296574

`and(A087289(n), A100489(n+1))`
-/

namespace A104606.P10760676483729296574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A100489 (n + 1))

end

end A104606.P10760676483729296574

/-! ## A104606.P6784693275402234440

`and(A092440(n), A100489(n+1))`
-/

namespace A104606.P6784693275402234440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092440 n) (A100489 (n + 1))

end

end A104606.P6784693275402234440

/-! ## A104606.P17352847123803598531

`and(A100489(n+1), A158388(n))`
-/

namespace A104606.P17352847123803598531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100489 (n + 1)) (A158388 n)

end

end A104606.P17352847123803598531

/-! ## A104606.P10374951479468100242

`and(A100489(n+1), A171590(n))`
-/

namespace A104606.P10374951479468100242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100489 (n + 1)) (A171590 n)

end

end A104606.P10374951479468100242

/-! ## A104606.P18262795826286460342

`and(A100489(n+1), A189318(n))`
-/

namespace A104606.P18262795826286460342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100489 (n + 1)) (A189318 n)

end

end A104606.P18262795826286460342

/-! ## A104606.P9230763108559658163

`and(A100489(n+1), A195744(n))`
-/

namespace A104606.P9230763108559658163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100489 (n + 1)) (A195744 n)

end

end A104606.P9230763108559658163

/-!
# A104607: Write the natural numbers in base 3 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104607, there is no canonical definition to state claims against.
-/

/-! ## A104607.P9066288590866829025

`A003137(∑[n+1])`
-/

namespace A104607.P9066288590866829025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104607.P9066288590866829025

/-! ## A104607.P4071731911429923183

`A054635(∑[n+1])`
-/

namespace A104607.P4071731911429923183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104607.P4071731911429923183

/-! ## A104607.P445811859391692374

`2-A030351(∑[n+1])`
-/

namespace A104607.P445811859391692374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A030351 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104607.P445811859391692374

/-! ## A104607.P13476851197265799278

`∑[Δ[A054635(∑[n])]%5]`
-/

namespace A104607.P13476851197265799278
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104607.P13476851197265799278

/-! ## A104607.P15791554685311129399

`A003137(C(n+2, 2))%3`
-/

namespace A104607.P15791554685311129399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003137 (Nat.choose (n + 2) 2)) 3

end

end A104607.P15791554685311129399

/-! ## A104607.P12223164627771871461

`dr(A003137(∑[-xor(n, -1)]))`
-/

namespace A104607.P12223164627771871461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A104607.P12223164627771871461

/-! ## A104607.P2826588117370393210

`dr(A003137(∑[Δ[n²]-n]))`
-/

namespace A104607.P2826588117370393210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A104607.P2826588117370393210

/-! ## A104607.P17297790857121949392

`and(3, A003137(A133263(n+1)-2))`
-/

namespace A104607.P17297790857121949392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A003137 (A133263 (n + 1) - 2).toNat)

end

end A104607.P17297790857121949392

/-! ## A104607.P11442956209162432548

`A003137(A000124(n)+n)*A119335(A000124(n))`
-/

namespace A104607.P11442956209162432548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A000124 n + (n : ℤ)).toNat * A119335 (A000124 n).toNat

end

end A104607.P11442956209162432548

/-!
# A104608: Write the natural numbers in base 4 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104608, there is no canonical definition to state claims against.
-/

/-! ## A104608.P5642775910019024982

`A030373(∑[n+1])`
-/

namespace A104608.P5642775910019024982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104608.P5642775910019024982

/-! ## A104608.P12304697931010364712

`3-A030399(∑[n+1])`
-/

namespace A104608.P12304697931010364712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A030399 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104608.P12304697931010364712

/-! ## A104608.P17379971399657191548

`dr(A030373(Δ[A000292(n)]))`
-/

namespace A104608.P17379971399657191548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030373 (f1 (n + 1) - f1 n).toNat)

end

end A104608.P17379971399657191548

/-! ## A104608.P15003438415930729762

`dr(A030373(record[A008795(n)]))`
-/

namespace A104608.P15003438415930729762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A104608.P15003438415930729762

/-! ## A104608.P5390696522152107574

`dr(A030373(A000096(n)+1))`
-/

namespace A104608.P5390696522152107574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030373 (A000096 n + 1).toNat)

end

end A104608.P5390696522152107574

/-! ## A104608.P9760361794547919545

`dr(A030373(A000217(n+1)))`
-/

namespace A104608.P9760361794547919545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030373 (A000217 (n + 1)).toNat)

end

end A104608.P9760361794547919545

/-! ## A104608.P1584413920343174256

`A030373(record[A038722(n+1)])%4`
-/

namespace A104608.P1584413920343174256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 4

end

end A104608.P1584413920343174256

/-!
# A104609: Write the natural numbers in base 5 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104609, there is no canonical definition to state claims against.
-/

/-! ## A104609.P18034298346315604256

`A031219(∑[n+1])`
-/

namespace A104609.P18034298346315604256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104609.P18034298346315604256

/-! ## A104609.P12621052053807299590

`4-A031251(∑[n+1])`
-/

namespace A104609.P12621052053807299590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A031251 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104609.P12621052053807299590

/-! ## A104609.P1142590735578865761

`A031219(C(n+1, 2)+1+n)%5`
-/

namespace A104609.P1142590735578865761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031219 (Nat.choose (n + 1) 2 + 1 + n)) 5

end

end A104609.P1142590735578865761

/-! ## A104609.P17224137968997685649

`dr(A031219(Δ[A000292(n)]))`
-/

namespace A104609.P17224137968997685649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031219 (f1 (n + 1) - f1 n).toNat)

end

end A104609.P17224137968997685649

/-! ## A104609.P1841371210220497109

`dr(A031219(record[A008795(n)]))`
-/

namespace A104609.P1841371210220497109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A104609.P1841371210220497109

/-! ## A104609.P6290732098231619256

`dr(A031219(A000096(n)+1))`
-/

namespace A104609.P6290732098231619256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031219 (A000096 n + 1).toNat)

end

end A104609.P6290732098231619256

/-! ## A104609.P7065146185361171639

`dr(A031219(A000217(n+1)))`
-/

namespace A104609.P7065146185361171639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031219 (A000217 (n + 1)).toNat)

end

end A104609.P7065146185361171639

/-! ## A104609.P17642230087430003038

`dr(A031219(A000124(n)+n))`
-/

namespace A104609.P17642230087430003038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031219 (A000124 n + (n : ℤ)).toNat)

end

end A104609.P17642230087430003038

/-! ## A104609.P5838572332968041345

`dr(A031219(record[A038722(n+1)]))`
-/

namespace A104609.P5838572332968041345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A104609.P5838572332968041345

/-! ## A104609.P12832812260802523185

`or(A159075(n)², A031219(A000217(n+1)))`
-/

namespace A104609.P12832812260802523185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159075 n ^ 2) (A031219 (A000217 (n + 1)).toNat)

end

end A104609.P12832812260802523185

/-! ## A104609.P9709221796116225208

`A031219(A000217(n+1))+A000007(n+1)`
-/

namespace A104609.P9709221796116225208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A104609.P9709221796116225208

/-! ## A104609.P10645493772131427358

`A031219(A000217(n+1))*A033999(2*n)`
-/

namespace A104609.P10645493772131427358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000217 (n + 1)).toNat * A033999 (2 * n)

end

end A104609.P10645493772131427358

/-! ## A104609.P5105063782205572136

`A000041(C(2, n+2))*A031219(A000217(n+1))`
-/

namespace A104609.P5105063782205572136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A031219 (A000217 (n + 1)).toNat

end

end A104609.P5105063782205572136

/-!
# A104610: Write the natural numbers in base 6 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104610, there is no canonical definition to state claims against.
-/

/-! ## A104610.P264448957446153317

`A030548(∑[n+1])`
-/

namespace A104610.P264448957446153317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104610.P264448957446153317

/-! ## A104610.P10518337309022538001

`5-A030586(∑[n+1])`
-/

namespace A104610.P10518337309022538001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A030586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104610.P10518337309022538001

/-! ## A104610.P4101280362099949219

`dr(A030548(C(n+2, 2)))`
-/

namespace A104610.P4101280362099949219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030548 (Nat.choose (n + 2) 2))

end

end A104610.P4101280362099949219

/-! ## A104610.P12335960450516885287

`A030548(C(n, 2)+2*n+1)%6`
-/

namespace A104610.P12335960450516885287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030548 (Nat.choose n 2 + 2 * n + 1)) 6

end

end A104610.P12335960450516885287

/-! ## A104610.P17352480275949818957

`A030548(C(Δ[n²]-n+1, 2))%6`
-/

namespace A104610.P17352480275949818957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030548 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) + 1).toNat 2)) 6

end

end A104610.P17352480275949818957

/-! ## A104610.P8903361533066666710

`dr(A030548(Δ[A000292(n)]))`
-/

namespace A104610.P8903361533066666710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030548 (f1 (n + 1) - f1 n).toNat)

end

end A104610.P8903361533066666710

/-! ## A104610.P13837892586053135596

`dr(A030548(record[A008795(n)]))`
-/

namespace A104610.P13837892586053135596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A104610.P13837892586053135596

/-! ## A104610.P17454767284208018115

`dr(A030548(A000217(n+1)))`
-/

namespace A104610.P17454767284208018115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030548 (A000217 (n + 1)).toNat)

end

end A104610.P17454767284208018115

/-! ## A104610.P15408959260195904126

`dr(A030548(A000124(n)+n))`
-/

namespace A104610.P15408959260195904126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030548 (A000124 n + (n : ℤ)).toNat)

end

end A104610.P15408959260195904126

/-! ## A104610.P6902689952064430118

`dr(A030548(record[A038722(n+1)]))`
-/

namespace A104610.P6902689952064430118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A104610.P6902689952064430118

/-! ## A104610.P11956210746205435811

`A030548(C(n+2, 2))+A008683(4*(n+1))`
-/

namespace A104610.P11956210746205435811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (Nat.choose (n + 2) 2) + A008683 (4 * (n + 1))

end

end A104610.P11956210746205435811

/-! ## A104610.P10382380222922984183

`abs(A030548(A000217(n+1))*A033999(n))`
-/

namespace A104610.P10382380222922984183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030548 (A000217 (n + 1)).toNat * A033999 n|

end

end A104610.P10382380222922984183

/-! ## A104610.P12662690992907436805

`char[A004442(n)]*A030548(A000217(n+1))`
-/

namespace A104610.P12662690992907436805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A030548 (A000217 (n + 1)).toNat

end

end A104610.P12662690992907436805

/-! ## A104610.P18065791524485839508

`A030548(A000217(n+1))+A008683(4*(n+3))`
-/

namespace A104610.P18065791524485839508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A000217 (n + 1)).toNat + A008683 (4 * (n + 3))

end

end A104610.P18065791524485839508

/-! ## A104610.P2639996079526405268

`A000108(and(1, 1-n))*A030548(A000217(n+1))`
-/

namespace A104610.P2639996079526405268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (1 - (n : ℤ))).toNat * A030548 (A000217 (n + 1)).toNat

end

end A104610.P2639996079526405268

/-! ## A104610.P9587352942319790325

`A000041(gcd(n, n+1))*A030548(A000217(n+1))`
-/

namespace A104610.P9587352942319790325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A030548 (A000217 (n + 1)).toNat

end

end A104610.P9587352942319790325

/-! ## A104610.P13336440513533330323

`A010123(n)^and(1, n)*A030548(A000217(n+1))`
-/

namespace A104610.P13336440513533330323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n ^ Nat.land 1 n * A030548 (A000217 (n + 1)).toNat

end

end A104610.P13336440513533330323

/-! ## A104610.P8071125564161317757

`round(A030548(A000217(n+1))/A014963(4*n+2))`
-/

namespace A104610.P8071125564161317757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030548 (A000217 (n + 1)).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ))

end

end A104610.P8071125564161317757

/-! ## A104610.P9457036602254856438

`A014963(A008458(n))*A030548(A000217(n+1))`
-/

namespace A104610.P9457036602254856438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A030548 (A000217 (n + 1)).toNat

end

end A104610.P9457036602254856438

/-! ## A104610.P8348147473184149525

`A030548(A000217(n+1))+A002262(n)*A133089(n)`
-/

namespace A104610.P8348147473184149525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A000217 (n + 1)).toNat + A002262 n * A133089 n

end

end A104610.P8348147473184149525

/-!
# A104611: Write the natural numbers in base 7 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104611, there is no canonical definition to state claims against.
-/

/-! ## A104611.P10030254789729138767

`A030998(∑[n+1])`
-/

namespace A104611.P10030254789729138767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104611.P10030254789729138767

/-! ## A104611.P15156144515927389655

`6-A031016(∑[n+1])`
-/

namespace A104611.P15156144515927389655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A031016 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104611.P15156144515927389655

/-! ## A104611.P7740469323963542573

`A030998(C(n+2, 2))%7`
-/

namespace A104611.P7740469323963542573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030998 (Nat.choose (n + 2) 2)) 7

end

end A104611.P7740469323963542573

/-! ## A104611.P576223086010975283

`A030998(∑[comp[2*n]-n])%7`
-/

namespace A104611.P576223086010975283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030998 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 7

end

end A104611.P576223086010975283

/-! ## A104611.P10937338276452199938

`dr(A030998(Δ[A000292(n)]))`
-/

namespace A104611.P10937338276452199938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030998 (f1 (n + 1) - f1 n).toNat)

end

end A104611.P10937338276452199938

/-! ## A104611.P5838192480318588778

`dr(A030998(record[A008795(n)]))`
-/

namespace A104611.P5838192480318588778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A104611.P5838192480318588778

/-! ## A104611.P6179691741036008199

`dr(A030998(A000217(n+1)))`
-/

namespace A104611.P6179691741036008199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030998 (A000217 (n + 1)).toNat)

end

end A104611.P6179691741036008199

/-! ## A104611.P1509081225416002343

`dr(A030998(A000124(n)+n))`
-/

namespace A104611.P1509081225416002343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030998 (A000124 n + (n : ℤ)).toNat)

end

end A104611.P1509081225416002343

/-! ## A104611.P8751880364593464912

`dr(A030998(record[A038722(n+1)]))`
-/

namespace A104611.P8751880364593464912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A104611.P8751880364593464912

/-! ## A104611.P9390938434480291993

`A030998(C(n+2, 2))+C(2, A000203(n+2))`
-/

namespace A104611.P9390938434480291993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (Nat.choose (n + 2) 2) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A104611.P9390938434480291993

/-! ## A104611.P17310604918631416135

`A007318(C(2, n+2))*A030998(C(n+2, 2))`
-/

namespace A104611.P17310604918631416135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A030998 (Nat.choose (n + 2) 2)

end

end A104611.P17310604918631416135

/-! ## A104611.P9192382932506048561

`A000034(2*n)*A030998(A000217(n+1))`
-/

namespace A104611.P9192382932506048561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A030998 (A000217 (n + 1)).toNat

end

end A104611.P9192382932506048561

/-!
# A104612: Write the natural numbers in base 8 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104612, there is no canonical definition to state claims against.
-/

/-! ## A104612.P13399306996243691873

`A031035(∑[n+1])`
-/

namespace A104612.P13399306996243691873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104612.P13399306996243691873

/-! ## A104612.P9691607076919346780

`A054634(∑[n+1])`
-/

namespace A104612.P9691607076919346780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104612.P9691607076919346780

/-! ## A104612.P10641932485181662758

`7-A031055(∑[n+1])`
-/

namespace A104612.P10641932485181662758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A031055 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104612.P10641932485181662758

/-! ## A104612.P8385435323103221121

`A031035(C(n+2, 2))%12`
-/

namespace A104612.P8385435323103221121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031035 (Nat.choose (n + 2) 2)) 12

end

end A104612.P8385435323103221121

/-! ## A104612.P14532760177482581348

`dr(A031035(∑[-xor(n, -1)]))`
-/

namespace A104612.P14532760177482581348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A104612.P14532760177482581348

/-! ## A104612.P448370470091333191

`dr(A031035(Δ[A000292(n)]))`
-/

namespace A104612.P448370470091333191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031035 (f1 (n + 1) - f1 n).toNat)

end

end A104612.P448370470091333191

/-! ## A104612.P9144293240684295433

`dr(A031035(A000217(n+1)))`
-/

namespace A104612.P9144293240684295433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031035 (A000217 (n + 1)).toNat)

end

end A104612.P9144293240684295433

/-!
# A104613: Write the natural numbers in base 9 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104613, there is no canonical definition to state claims against.
-/

/-! ## A104613.P5744219013486831192

`A031076(∑[n+1])`
-/

namespace A104613.P5744219013486831192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104613.P5744219013486831192

/-! ## A104613.P13651646578897454931

`8-A031098(∑[n+1])`
-/

namespace A104613.P13651646578897454931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A031098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104613.P13651646578897454931

/-! ## A104613.P6191105468979148762

`dr(A031076(∑[Δ[n²]-n]))`
-/

namespace A104613.P6191105468979148762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A104613.P6191105468979148762

/-! ## A104613.P3971915152821061766

`A031076(A000096(n)+1)%9`
-/

namespace A104613.P3971915152821061766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031076 (A000096 n + 1).toNat) 9

end

end A104613.P3971915152821061766

/-! ## A104613.P16856919156440795388

`A031076(A000217(n+1))%9`
-/

namespace A104613.P16856919156440795388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031076 (A000217 (n + 1)).toNat) 9

end

end A104613.P16856919156440795388

/-! ## A104613.P17952610081377407701

`A031076(∑[Δ[n²]-n])*A267871(n)`
-/

namespace A104613.P17952610081377407701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A267871 n

end

end A104613.P17952610081377407701

/-! ## A104613.P2881483942089672041

`A031076(∑[Δ[n²]-n])%A010702(n)²`
-/

namespace A104613.P2881483942089672041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A010702 n ^ 2)

end

end A104613.P2881483942089672041

/-! ## A104613.P2290326017472361544

`A031076(∑[Δ[n²]-n])-A000035(2*n)`
-/

namespace A104613.P2290326017472361544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 (2 * n)

end

end A104613.P2290326017472361544

/-! ## A104613.P15305050102803168697

`A031076(∑[Δ[n²]-n])*A059841(10*n)`
-/

namespace A104613.P15305050102803168697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A059841 (10 * n)

end

end A104613.P15305050102803168697

/-! ## A104613.P2002697947289083059

`A019433(2*n)!*A031076(∑[Δ[n²]-n])`
-/

namespace A104613.P2002697947289083059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A019433 (2 * n)).toNat : ℤ) * A031076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104613.P2002697947289083059

/-! ## A104613.P13328571264442959915

`or(A000007(n), A031076(A000096(n)+1))`
-/

namespace A104613.P13328571264442959915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A031076 (A000096 n + 1).toNat)

end

end A104613.P13328571264442959915

/-! ## A104613.P7242383832904902218

`or(A000007(n), A031076(A000217(n+1)))`
-/

namespace A104613.P7242383832904902218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A031076 (A000217 (n + 1)).toNat)

end

end A104613.P7242383832904902218

/-! ## A104613.P13708747390258199198

`A007318(C(2, n))*A031076(A000096(n)+1)`
-/

namespace A104613.P13708747390258199198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A031076 (A000096 n + 1).toNat

end

end A104613.P13708747390258199198

/-! ## A104613.P8289390940798693850

`A007318(floor(1/(n+1)))*A031076(A000096(n)+1)`
-/

namespace A104613.P8289390940798693850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A031076 (A000096 n + 1).toNat

end

end A104613.P8289390940798693850

/-!
# A104619: Write the natural numbers in base 16 in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A104619, there is no canonical definition to state claims against.
-/

/-! ## A104619.P7369796950951578710

`A275993(∑[n+1])`
-/

namespace A104619.P7369796950951578710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104619.P7369796950951578710

/-! ## A104619.P4881288349951500016

`A275993(A000217(n+1))%16`
-/

namespace A104619.P4881288349951500016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275993 (A000217 (n + 1)).toNat) 16

end

end A104619.P4881288349951500016

/-! ## A104619.P3536825186879377211

`A275993(A008795(2*n))%53`
-/

namespace A104619.P3536825186879377211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275993 (A008795 (2 * n)).toNat) 53

end

end A104619.P3536825186879377211

/-! ## A104619.P17824582736919918669

`A275993(A000217(n+1))+A000007(n+2)`
-/

namespace A104619.P17824582736919918669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275993 (A000217 (n + 1)).toNat + A000007 (n + 2)

end

end A104619.P17824582736919918669

/-! ## A104619.P13641061807103017922

`A275993(A000217(n+1))-A001489(n)-n`
-/

namespace A104619.P13641061807103017922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275993 (A000217 (n + 1)).toNat - A001489 n - (n : ℤ)

end

end A104619.P13641061807103017922

/-! ## A104619.P1539794312693515081

`A365799(3*n+2)+A275993(A000217(n+1))`
-/

namespace A104619.P1539794312693515081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365799 (3 * n + 2) + A275993 (A000217 (n + 1)).toNat

end

end A104619.P1539794312693515081

/-! ## A104619.P9537999321166713983

`A307409(A000040(n+1))+A275993(A000217(n+1))`
-/

namespace A104619.P9537999321166713983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (A000040 (n + 1)).toNat + A275993 (A000217 (n + 1)).toNat

end

end A104619.P9537999321166713983

/-! ## A104619.P6234186003648002639

`A275993(A000217(n+1))/A323022(A001414(n+3))`
-/

namespace A104619.P6234186003648002639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275993 (A000217 (n + 1)).toNat : ℚ) / (A323022 (A001414 (n + 3)).toNat : ℚ)

end

end A104619.P6234186003648002639

/-! ## A104619.P7840913105927700494

`A275993(A000217(n+1))/A323022(A001248(n+1))`
-/

namespace A104619.P7840913105927700494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275993 (A000217 (n + 1)).toNat : ℚ) / (A323022 (A001248 (n + 1)).toNat : ℚ)

end

end A104619.P7840913105927700494

/-!
# A104621: Heptanacci-Lucas numbers.

The programs for A104621, there is no canonical definition to state claims against.
-/

/-! ## A104621.P16023401125345922273

`A125127(A052905(n+3)-A054977(n))`
-/

namespace A104621.P16023401125345922273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A052905 (n + 3) - A054977 n).toNat

end

end A104621.P16023401125345922273

/-! ## A104621.P11748348454023716312

`A125127(A000217(n+6)-6-A000007(n))`
-/

namespace A104621.P11748348454023716312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A000217 (n + 6) - 6 - A000007 n).toNat

end

end A104621.P11748348454023716312

/-! ## A104621.P2790290655576533560

`A348676(A167614(n+1))-A291700(n)`
-/

namespace A104621.P2790290655576533560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348676 (A167614 (n + 1)).toNat - A291700 n

end

end A104621.P2790290655576533560

/-! ## A104621.P17082293775262827847

`or(3^C(a(n-1), 68)+n, 2^n-1)` with `a(0)=7, a(1)=1`
-/

namespace A104621.P17082293775262827847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n a =>
  Int.lor (3 ^ Nat.choose (a (n - 1)).toNat 68 + n : ℤ) ((2 ^ n : ℤ) - 1)

end

end A104621.P17082293775262827847

/-!
# A104624: Expansion of exp( arcsinh( -2*x ) ) in powers of x.

The programs for A104624, the canonical program `A104624.P6145398982740437534` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104624 has offset 0).

The definition of A104624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104624.P9431233026628607062

`A182122(3*char[1]+n)`
-/

namespace A104624.P9431233026628607062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 (3 * (if ∃ j, f1 j = n then 1 else 0) + n)

end

end A104624.P9431233026628607062

namespace A104624

/-- `A182122(3*char[1]+n)` -/
def P9431233026628607062.Spec : Prop :=
  ∀ n, P9431233026628607062.a n = A104624 n

end A104624

/-! ## A104624.P12398894480765427865

`A182122(n)-4*char[1]`
-/

namespace A104624.P12398894480765427865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 n - ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A104624.P12398894480765427865

namespace A104624

/-- `A182122(n)-4*char[1]` -/
def P12398894480765427865.Spec : Prop :=
  ∀ n, P12398894480765427865.a n = A104624 n

end A104624

/-! ## A104624.P6145398982740437534

`A033999(n)*A182122(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104624

/-- `A033999(n)*A182122(n)` -/
def P6145398982740437534.Spec : Prop :=
  ∀ n, P6145398982740437534.a n = A104624 n

theorem P6145398982740437534.correct : P6145398982740437534.Spec := by
  intro n
  simp only [A104624]

end A104624

/-! ## A104624.P4227157759671447760

`A071936(n+1)*A182122(n)`
-/

namespace A104624.P4227157759671447760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1) * A182122 n

end

end A104624.P4227157759671447760

namespace A104624

/-- `A071936(n+1)*A182122(n)` -/
def P4227157759671447760.Spec : Prop :=
  ∀ n, P4227157759671447760.a n = A104624 n

end A104624

/-! ## A104624.P279353732371750451

`A182122(n)*A309873(n+1)`
-/

namespace A104624.P279353732371750451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 n * A309873 (n + 1)

end

end A104624.P279353732371750451

namespace A104624

/-- `A182122(n)*A309873(n+1)` -/
def P279353732371750451.Spec : Prop :=
  ∀ n, P279353732371750451.a n = A104624 n

end A104624

/-! ## A104624.P15205938339611751352

`A182122(n)/A033999(n+2)`
-/

namespace A104624.P15205938339611751352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182122 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A104624.P15205938339611751352

namespace A104624

/-- `A182122(n)/A033999(n+2)` -/
def P15205938339611751352.Spec : Prop :=
  ∀ n, P15205938339611751352.a n = (A104624 n : ℚ)

end A104624

/-! ## A104624.P4891253744761013516

`A198786(n+1)/A036452(n+1)-A198786(2*n)`
-/

namespace A104624.P4891253744761013516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198786 (n + 1) : ℚ) / (A036452 (n + 1) : ℚ) - (A198786 (2 * n) : ℚ)

end

end A104624.P4891253744761013516

namespace A104624

/-- `A198786(n+1)/A036452(n+1)-A198786(2*n)` -/
def P4891253744761013516.Spec : Prop :=
  ∀ n, P4891253744761013516.a n = (A104624 n : ℚ)

end A104624

/-! ## A104624.P18035228245200646485

`A198786(n+1)/A036453(n+1)-A198786(2*n)`
-/

namespace A104624.P18035228245200646485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198786 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ) - (A198786 (2 * n) : ℚ)

end

end A104624.P18035228245200646485

namespace A104624

/-- `A198786(n+1)/A036453(n+1)-A198786(2*n)` -/
def P18035228245200646485.Spec : Prop :=
  ∀ n, P18035228245200646485.a n = (A104624 n : ℚ)

end A104624

/-! ## A104624.P5126321516551238944

`A124448(∑[n])`
-/

namespace A104624.P5126321516551238944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104624.P5126321516551238944

namespace A104624

/-- `A124448(∑[n])` -/
def P5126321516551238944.Spec : Prop :=
  ∀ n, P5126321516551238944.a n = A104624 n

end A104624

/-! ## A104624.P4971829046849396369

`A206022(∑[n+1]+1)`
-/

namespace A104624.P4971829046849396369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206022 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104624.P4971829046849396369

namespace A104624

/-- `A206022(∑[n+1]+1)` -/
def P4971829046849396369.Spec : Prop :=
  ∀ n, P4971829046849396369.a n = A104624 n

end A104624

/-! ## A104624.P17773871414863176347

`(2-A001511((n+1)²))*A182122(n)`
-/

namespace A104624.P17773871414863176347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001511 ((n + 1) ^ 2)) * A182122 n

end

end A104624.P17773871414863176347

namespace A104624

/-- `(2-A001511((n+1)²))*A182122(n)` -/
def P17773871414863176347.Spec : Prop :=
  ∀ n, P17773871414863176347.a n = A104624 n

end A104624

/-!
# A104625: Expansion of 1/(sqrt(1-4*x) - x^2).

The programs for A104625, there is no canonical definition to state claims against.
-/

/-! ## A104625.P3042822063298952091

`A026242(ceil(sqrt(A125458(n))))`
-/

namespace A104625.P3042822063298952091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 ⌈Real.sqrt (A125458 n : ℝ)⌉.toNat

end

end A104625.P3042822063298952091

/-! ## A104625.P11746004064232643158

`∑[A124741(record[A051139(n)])]`
-/

namespace A104625.P11746004064232643158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051139 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104625.P11746004064232643158

/-! ## A104625.P11111736844726070568

`A008615(A050479(n)+A046113(n))`
-/

namespace A104625.P11111736844726070568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A050479 n + A046113 n).toNat

end

end A104625.P11111736844726070568

/-!
# A104626: Numbers having three 1's in their base-phi representation.

The programs for A104626, the canonical program `A104626.P8849892008519993134` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104626 has offset 1).

The definition of A104626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104626.P6059439623081191351

`record[A049076(n+1)+A000032(A133265(n))]`
-/

namespace A104626.P6059439623081191351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1) + A000032 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104626.P6059439623081191351

namespace A104626

/-- `record[A049076(n+1)+A000032(A133265(n))]` -/
def P6059439623081191351.Spec : Prop :=
  ∀ n, P6059439623081191351.a n = A104626 (n + 1)

end A104626

/-! ## A104626.P7817175108829713152

`record[A089026(n+1)+A000032(A133265(n))]`
-/

namespace A104626.P7817175108829713152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) + A000032 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104626.P7817175108829713152

namespace A104626

/-- `record[A089026(n+1)+A000032(A133265(n))]` -/
def P7817175108829713152.Spec : Prop :=
  ∀ n, P7817175108829713152.a n = A104626 (n + 1)

end A104626

/-! ## A104626.P11983374021603680109

`record[A286477(n+1)+A000032(A133265(n))]`
-/

namespace A104626.P11983374021603680109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1) + A000032 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104626.P11983374021603680109

namespace A104626

/-- `record[A286477(n+1)+A000032(A133265(n))]` -/
def P11983374021603680109.Spec : Prop :=
  ∀ n, P11983374021603680109.a n = A104626 (n + 1)

end A104626

/-! ## A104626.P8849892008519993134

`record[A005248(A145677(n))+A004736(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A104626

/-- `record[A005248(A145677(n))+A004736(n+1)]` -/
def P8849892008519993134.Spec : Prop :=
  ∀ n, P8849892008519993134.a n = A104626 (n + 1)

theorem P8849892008519993134.correct : P8849892008519993134.Spec := by
  intro n
  simp only [A104626, Nat.add_sub_cancel]

end A104626

/-! ## A104626.P12230201214180778898

`A006499(A094497(n))+record[A061084(n)]`
-/

namespace A104626.P12230201214180778898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006499 (A094497 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104626.P12230201214180778898

namespace A104626

/-- `A006499(A094497(n))+record[A061084(n)]` -/
def P12230201214180778898.Spec : Prop :=
  ∀ n, P12230201214180778898.a n = A104626 (n + 1)

end A104626

/-!
# A104627: Numbers having 4 1's in their base-phi representation.

The programs for A104627, there is no canonical definition to state claims against.
-/

/-! ## A104627.P17252637477039140727

`eq[4, A055778(n)]`
-/

namespace A104627.P17252637477039140727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104627.P17252637477039140727

/-! ## A104627.P6168666838781523613

`lt[A001622(A055778(n)), A057427(n)]`
-/

namespace A104627.P6168666838781523613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A055778 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104627.P6168666838781523613

/-! ## A104627.P4056553789841637801

`eq[7, A133772(n+1)]+1`
-/

namespace A104627.P4056553789841637801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104627.P4056553789841637801

/-! ## A104627.P4019239512499781597

`eq[7, A133772(A028310(n))]`
-/

namespace A104627.P4019239512499781597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133772 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104627.P4019239512499781597

/-! ## A104627.P16336808979733777571

`A020725(eq[7, A133772(n+1)])`
-/

namespace A104627.P16336808979733777571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104627.P16336808979733777571

/-!
# A104628: Numbers having 5 1's in their base-phi representation.

The programs for A104628, there is no canonical definition to state claims against.
-/

/-! ## A104628.P10680370545574123905

`eq[5, A055778(n)]`
-/

namespace A104628.P10680370545574123905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104628.P10680370545574123905

/-! ## A104628.P5883610588131318675

`lt[A185015(n), A185015(A055778(n))]`
-/

namespace A104628.P5883610588131318675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (A055778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104628.P5883610588131318675

/-! ## A104628.P10057342871191772004

`lt[A001622(A055778(n)-A057427(n)), 1]`
-/

namespace A104628.P10057342871191772004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A055778 n - A057427 n).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104628.P10057342871191772004

/-! ## A104628.P7603870417508812321

`lt[A135073(n+1), A255857(A055778(n))]`
-/

namespace A104628.P7603870417508812321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255857 (A055778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104628.P7603870417508812321

/-! ## A104628.P7596075118342432917

`lt[A113000(n+1), A255857(A055778(n))]`
-/

namespace A104628.P7596075118342432917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255857 (A055778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104628.P7596075118342432917

/-!
# A104629: Expansion of (1-2*x-sqrt(1-4*x))/(x^2 * (1+2*x+sqrt(1-4*x))).

The programs for A104629, the canonical program `A104629.P11080252807694944211` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104629 has offset 0).

The definition of A104629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104629.P11080252807694944211

`A000957(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104629

/-- `A000957(n+3)` -/
def P11080252807694944211.Spec : Prop :=
  ∀ n, P11080252807694944211.a n = A104629 n

theorem P11080252807694944211.correct : P11080252807694944211.Spec := by
  intro n
  simp only [A104629]

end A104629

/-! ## A104629.P18424892777713691963

`∑[A122920(n)]`
-/

namespace A104629.P18424892777713691963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104629.P18424892777713691963

namespace A104629

/-- `∑[A122920(n)]` -/
def P18424892777713691963.Spec : Prop :=
  ∀ n, P18424892777713691963.a n = A104629 n

end A104629

/-! ## A104629.P4103577329595540080

`record[A065600(n)]`
-/

namespace A104629.P4103577329595540080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104629.P4103577329595540080

namespace A104629

/-- `record[A065600(n)]` -/
def P4103577329595540080.Spec : Prop :=
  ∀ n, P4103577329595540080.a n = A104629 n

end A104629

/-! ## A104629.P8129215754396228010

`record[abs(A064310(n))]`
-/

namespace A104629.P8129215754396228010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064310 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104629.P8129215754396228010

namespace A104629

/-- `record[abs(A064310(n))]` -/
def P8129215754396228010.Spec : Prop :=
  ∀ n, P8129215754396228010.a n = A104629 n

end A104629

/-! ## A104629.P13531310550746035447

`record[abs(A126983(n))]`
-/

namespace A104629.P13531310550746035447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126983 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104629.P13531310550746035447

namespace A104629

/-- `record[abs(A126983(n))]` -/
def P13531310550746035447.Spec : Prop :=
  ∀ n, P13531310550746035447.a n = A104629 n

end A104629

/-! ## A104629.P16325135116824736549

`abs(A064310(n+3))`
-/

namespace A104629.P16325135116824736549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064310 (n + 3)|

end

end A104629.P16325135116824736549

namespace A104629

/-- `abs(A064310(n+3))` -/
def P16325135116824736549.Spec : Prop :=
  ∀ n, P16325135116824736549.a n = A104629 n

end A104629

/-! ## A104629.P5417127024131042558

`abs(A126983(n+3))`
-/

namespace A104629.P5417127024131042558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126983 (n + 3)|

end

end A104629.P5417127024131042558

namespace A104629

/-- `abs(A126983(n+3))` -/
def P5417127024131042558.Spec : Prop :=
  ∀ n, P5417127024131042558.a n = A104629 n

end A104629

/-! ## A104629.P9524021929015339959

`Δ[A135336(n+1)]`
-/

namespace A104629.P9524021929015339959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104629.P9524021929015339959

namespace A104629

/-- `Δ[A135336(n+1)]` -/
def P9524021929015339959.Spec : Prop :=
  ∀ n, P9524021929015339959.a n = A104629 n

end A104629

/-! ## A104629.P10707549696099168072

`record[Δ[abs(A105524(n))]]`
-/

namespace A104629.P10707549696099168072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105524 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104629.P10707549696099168072

namespace A104629

/-- `record[Δ[abs(A105524(n))]]` -/
def P10707549696099168072.Spec : Prop :=
  ∀ n, P10707549696099168072.a n = A104629 n

end A104629

/-! ## A104629.P15973639891806733736

`A065600(C(n+3, 2))`
-/

namespace A104629.P15973639891806733736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (Nat.choose (n + 3) 2)

end

end A104629.P15973639891806733736

namespace A104629

/-- `A065600(C(n+3, 2))` -/
def P15973639891806733736.Spec : Prop :=
  ∀ n, P15973639891806733736.a n = A104629 n

end A104629

/-! ## A104629.P4704293392773128903

`record[A000957(abs(1-n))]`
-/

namespace A104629.P4704293392773128903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104629.P4704293392773128903

namespace A104629

/-- `record[A000957(abs(1-n))]` -/
def P4704293392773128903.Spec : Prop :=
  ∀ n, P4704293392773128903.a n = A104629 n

end A104629

/-! ## A104629.P6724818541626981115

`record[-A126983(n+1)]`
-/

namespace A104629.P6724818541626981115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A126983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104629.P6724818541626981115

namespace A104629

/-- `record[-A126983(n+1)]` -/
def P6724818541626981115.Spec : Prop :=
  ∀ n, P6724818541626981115.a n = A104629 n

end A104629

/-! ## A104629.P14358102104543513536

`A065600(∑[n+2]+1)`
-/

namespace A104629.P14358102104543513536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104629.P14358102104543513536

namespace A104629

/-- `A065600(∑[n+2]+1)` -/
def P14358102104543513536.Spec : Prop :=
  ∀ n, P14358102104543513536.a n = A104629 n

end A104629

/-! ## A104629.P14828847220961605995

`(A000108(n+2)-a(n-1))/2` with `a(0)=1`
-/

namespace A104629.P14828847220961605995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A000108 (n + 2) : ℚ) - a (n - 1)) / 2

end

end A104629.P14828847220961605995

namespace A104629

/-- `(A000108(n+2)-a(n-1))/2` -/
def P14828847220961605995.Spec : Prop :=
  ∀ n, P14828847220961605995.a n = (A104629 n : ℚ)

end A104629

/-! ## A104629.P1752434618668262303

`A389115(n)+A114495(n+1)`
-/

namespace A104629.P1752434618668262303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389115 n + A114495 (n + 1)

end

end A104629.P1752434618668262303

namespace A104629

/-- `A389115(n)+A114495(n+1)` -/
def P1752434618668262303.Spec : Prop :=
  ∀ n, P1752434618668262303.a n = A104629 n

end A104629

/-! ## A104629.P14872419211371658678

`A033999(n)*A064310(n+3)`
-/

namespace A104629.P14872419211371658678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A064310 (n + 3)

end

end A104629.P14872419211371658678

namespace A104629

/-- `A033999(n)*A064310(n+3)` -/
def P14872419211371658678.Spec : Prop :=
  ∀ n, P14872419211371658678.a n = A104629 n

end A104629

/-! ## A104629.P4086891715523337166

`A118973(n+1)-A126983(n+1)`
-/

namespace A104629.P4086891715523337166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118973 (n + 1) - A126983 (n + 1)

end

end A104629.P4086891715523337166

namespace A104629

/-- `A118973(n+1)-A126983(n+1)` -/
def P4086891715523337166.Spec : Prop :=
  ∀ n, P4086891715523337166.a n = A104629 n

end A104629

/-! ## A104629.P3779532196570173946

`A126983(n+2)+A000958(n+2)`
-/

namespace A104629.P3779532196570173946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) + A000958 (n + 2)

end

end A104629.P3779532196570173946

namespace A104629

/-- `A126983(n+2)+A000958(n+2)` -/
def P3779532196570173946.Spec : Prop :=
  ∀ n, P3779532196570173946.a n = A104629 n

end A104629

/-! ## A104629.P1283420540013577733

`A135339(n+2)-A000108(n+1)`
-/

namespace A104629.P1283420540013577733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135339 (n + 2) - A000108 (n + 1)

end

end A104629.P1283420540013577733

namespace A104629

/-- `A135339(n+2)-A000108(n+1)` -/
def P1283420540013577733.Spec : Prop :=
  ∀ n, P1283420540013577733.a n = A104629 n

end A104629

/-! ## A104629.P15052633123157686509

`A135339(n+2)+A115140(n+2)`
-/

namespace A104629.P15052633123157686509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135339 (n + 2) + A115140 (n + 2)

end

end A104629.P15052633123157686509

namespace A104629

/-- `A135339(n+2)+A115140(n+2)` -/
def P15052633123157686509.Spec : Prop :=
  ∀ n, P15052633123157686509.a n = A104629 n

end A104629

/-!
# A104630: Expansion of x/(1-5*x+7*x^2-5*x^3+x^4).

The programs for A104630, the canonical program `A104630.P4508701568664287247` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104630 has offset 0).

The definition of A104630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-5x+7x^2-5x^3+x^4))` (program `A104630.P4508701568664287247`, by `A104630.P4508701568664287247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104630.P4508701568664287247

`ogf(x/(1-5x+7x^2-5x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104630

/-- `ogf(x/(1-5x+7x^2-5x^3+x^4))` -/
def P4508701568664287247.Spec : Prop :=
  ∀ n, P4508701568664287247.a n = A104630 n

theorem P4508701568664287247.correct : P4508701568664287247.Spec := by
  intro n
  simp only [A104630]

end A104630

/-! ## A104630.P4867554120753542077

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=18`
-/

namespace A104630.P4867554120753542077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 18] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A104630.P4867554120753542077

namespace A104630

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P4867554120753542077.Spec : Prop :=
  ∀ n, P4867554120753542077.a n = A104630 n

end A104630

/-! ## A104630.P11382305463054530420

`A099448(n)-A289780(n)`
-/

namespace A104630.P11382305463054530420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099448 n - A289780 n

end

end A104630.P11382305463054530420

namespace A104630

/-- `A099448(n)-A289780(n)` -/
def P11382305463054530420.Spec : Prop :=
  ∀ n, P11382305463054530420.a n = A104630 n

end A104630

/-! ## A104630.P17998238832477746950

`A289780(n)-A389933(n)`
-/

namespace A104630.P17998238832477746950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n - A389933 n

end

end A104630.P17998238832477746950

namespace A104630

/-- `A289780(n)-A389933(n)` -/
def P17998238832477746950.Spec : Prop :=
  ∀ n, P17998238832477746950.a n = A104630 n

end A104630

/-! ## A104630.P16654887758172360547

`A099448(A028310(n))%A289780(n)`
-/

namespace A104630.P16654887758172360547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099448 (A028310 n).toNat) (A289780 n)

end

end A104630.P16654887758172360547

namespace A104630

/-- `A099448(A028310(n))%A289780(n)` -/
def P16654887758172360547.Spec : Prop :=
  ∀ n, P16654887758172360547.a n = A104630 n

end A104630

/-! ## A104630.P4831352373372132576

`A099448(A000007(n)+n)%A289780(n)`
-/

namespace A104630.P4831352373372132576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099448 (A000007 n + (n : ℤ)).toNat) (A289780 n)

end

end A104630.P4831352373372132576

namespace A104630

/-- `A099448(A000007(n)+n)%A289780(n)` -/
def P4831352373372132576.Spec : Prop :=
  ∀ n, P4831352373372132576.a n = A104630 n

end A104630

/-! ## A104630.P8471577775675540581

`A389699(n+1)-(A389933(n)+A389699(n))`
-/

namespace A104630.P8471577775675540581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 (n + 1) - (A389933 n + A389699 n)

end

end A104630.P8471577775675540581

namespace A104630

/-- `A389699(n+1)-(A389933(n)+A389699(n))` -/
def P8471577775675540581.Spec : Prop :=
  ∀ n, P8471577775675540581.a n = A104630 n

end A104630

/-! ## A104630.P7702890781614569339

`A289780(n+1)-A390824(n+1)`
-/

namespace A104630.P7702890781614569339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 (n + 1) - A390824 (n + 1)

end

end A104630.P7702890781614569339

namespace A104630

/-- `A289780(n+1)-A390824(n+1)` -/
def P7702890781614569339.Spec : Prop :=
  ∀ n, P7702890781614569339.a n = A104630 n

end A104630

/-! ## A104630.P10690532840729581073

`(A099448(n)%A289780(n))%A033453(n)`
-/

namespace A104630.P10690532840729581073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A099448 n) (A289780 n)) (A033453 n)

end

end A104630.P10690532840729581073

namespace A104630

/-- `(A099448(n)%A289780(n))%A033453(n)` -/
def P10690532840729581073.Spec : Prop :=
  ∀ n, P10690532840729581073.a n = A104630 n

end A104630

/-!
# A104631: Coefficient of x^(2n+1) in the expansion of (1+x+x^2+x^3+x^4)^n.

The programs for A104631, there is no canonical definition to state claims against.
-/

/-! ## A104631.P2528192551548320083

`A005191(n)-A007043(n)`
-/

namespace A104631.P2528192551548320083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n - A007043 n

end

end A104631.P2528192551548320083

/-! ## A104631.P11020417208113134902

`A201552(A347553(n+3))-A007043(n)`
-/

namespace A104631.P11020417208113134902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A347553 (n + 3)).toNat - A007043 n

end

end A104631.P11020417208113134902

/-! ## A104631.P12157265007963648952

`A201552(A027379(n)-n)-A007043(n)`
-/

namespace A104631.P12157265007963648952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A027379 n - (n : ℤ)).toNat - A007043 n

end

end A104631.P12157265007963648952

/-! ## A104631.P6268494172747379081

`A201552(A179865(n+1)+n)-A007043(n)`
-/

namespace A104631.P6268494172747379081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A179865 (n + 1) + (n : ℤ)).toNat - A007043 n

end

end A104631.P6268494172747379081

/-! ## A104631.P18095591016413977022

`A201552(A000096(n)+A054977(n)-1)-A007043(n)`
-/

namespace A104631.P18095591016413977022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A000096 n + (A054977 n - 1)).toNat - A007043 n

end

end A104631.P18095591016413977022

/-! ## A104631.P18211515251338678976

`record[A010054(n+2)*A035343(n+1)]`
-/

namespace A104631.P18211515251338678976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A035343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104631.P18211515251338678976

/-! ## A104631.P1887803700421454082

`(A035343(n*Δ[n²])-A007043(n))%(8^n)`
-/

namespace A104631.P1887803700421454082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035343 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat - A007043 n) (8 ^ n : ℤ)

end

end A104631.P1887803700421454082

/-!
# A104632: 1/n times A104631(n), the coefficient of x^(2n+1) in the expansion of (1+x+x^2+x^3+x^4)^n.

The programs for A104632, there is no canonical definition to state claims against.
-/

/-! ## A104632.P9453818247463546863

`A104631(n+1)/(n+1)`
-/

namespace A104632.P9453818247463546863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104631 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A104632.P9453818247463546863

/-! ## A104632.P11031248729350004334

`record[A104631(A008619(n))/A052938(n)]`
-/

namespace A104632.P11031248729350004334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104631 (A008619 n).toNat : ℚ) / (A052938 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104632.P11031248729350004334

/-! ## A104632.P12566391035683004390

`record[ratio[A035343(A000124(n))]]`
-/

namespace A104632.P12566391035683004390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 (A000124 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104632.P12566391035683004390

/-! ## A104632.P10205808896902985039

`record[ratio[A035343(A134869(n+1))]]`
-/

namespace A104632.P10205808896902985039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 (A134869 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104632.P10205808896902985039

/-! ## A104632.P4250833926283154426

`A035343(A347553(2*(n+2)))/(n+1)`
-/

namespace A104632.P4250833926283154426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035343 (A347553 (2 * (n + 2))).toNat : ℚ) / (n + 1 : ℚ)

end

end A104632.P4250833926283154426

/-! ## A104632.P9719971306283866289

`record[A035343(A347553(n+3))/A008619(n)]`
-/

namespace A104632.P9719971306283866289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035343 (A347553 (n + 3)).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104632.P9719971306283866289

/-!
# A104633: Triangle T(n,k) = k*(k-n-1)*(k-n-2)/2 read by rows, 1<=k<=n.

The programs for A104633, the canonical program `A104633.P12323607776174508310` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104633 has offset 1).

The definition of A104633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104633.P12323607776174508310

`A062707(n)+A049777(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104633

/-- `A062707(n)+A049777(n+1)` -/
def P12323607776174508310.Spec : Prop :=
  ∀ n, P12323607776174508310.a n = A104633 (n + 1)

theorem P12323607776174508310.correct : P12323607776174508310.Spec := by
  intro n
  simp only [A104633, Nat.add_sub_cancel]

end A104633

/-! ## A104633.P6280013879707292102

`A193976(n)-A104792(n+1)`
-/

namespace A104633.P6280013879707292102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193976 n - A104792 (n + 1)

end

end A104633.P6280013879707292102

namespace A104633

/-- `A193976(n)-A104792(n+1)` -/
def P6280013879707292102.Spec : Prop :=
  ∀ n, P6280013879707292102.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P1536220362294698897

`A122432(n)*A140756(n+1)`
-/

namespace A104633.P1536220362294698897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122432 n * A140756 (n + 1)

end

end A104633.P1536220362294698897

namespace A104633

/-- `A122432(n)*A140756(n+1)` -/
def P1536220362294698897.Spec : Prop :=
  ∀ n, P1536220362294698897.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P13283423377655497566

`abs(A002260(n+1)*A122432(n))`
-/

namespace A104633.P13283423377655497566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) * A122432 n|

end

end A104633.P13283423377655497566

namespace A104633

/-- `abs(A002260(n+1)*A122432(n))` -/
def P13283423377655497566.Spec : Prop :=
  ∀ n, P13283423377655497566.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P17207982587149987633

`sqrt(A133819(n+1))*A250252(A099375(n))`
-/

namespace A104633.P17207982587149987633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A250252 (A099375 n).toNat : ℝ)

end

end A104633.P17207982587149987633

namespace A104633

/-- `sqrt(A133819(n+1))*A250252(A099375(n))` -/
def P17207982587149987633.Spec : Prop :=
  ∀ n, P17207982587149987633.a n = (A104633 (n + 1) : ℝ)

end A104633

/-! ## A104633.P8467620576068994193

`A000217(A004736(n+1))*A002260(n+1)`
-/

namespace A104633.P8467620576068994193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1)).toNat * A002260 (n + 1)

end

end A104633.P8467620576068994193

namespace A104633

/-- `A000217(A004736(n+1))*A002260(n+1)` -/
def P8467620576068994193.Spec : Prop :=
  ∀ n, P8467620576068994193.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P16847340150613811818

`(A002262(n)+1)*A000217(A004736(n+1))`
-/

namespace A104633.P16847340150613811818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000217 (A004736 (n + 1)).toNat

end

end A104633.P16847340150613811818

namespace A104633

/-- `(A002262(n)+1)*A000217(A004736(n+1))` -/
def P16847340150613811818.Spec : Prop :=
  ∀ n, P16847340150613811818.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P17984999039823387820

`(A000096(A025581(n))+1)*A002260(n+1)`
-/

namespace A104633.P17984999039823387820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 (A025581 n).toNat + 1) * A002260 (n + 1)

end

end A104633.P17984999039823387820

namespace A104633

/-- `(A000096(A025581(n))+1)*A002260(n+1)` -/
def P17984999039823387820.Spec : Prop :=
  ∀ n, P17984999039823387820.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P6008309205860562565

`A000217(A025581(n)+1)*A002260(n+1)`
-/

namespace A104633.P6008309205860562565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A025581 n + 1).toNat * A002260 (n + 1)

end

end A104633.P6008309205860562565

namespace A104633

/-- `A000217(A025581(n)+1)*A002260(n+1)` -/
def P6008309205860562565.Spec : Prop :=
  ∀ n, P6008309205860562565.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P1228135152468902356

`A104634(n+1)-2*A000292(A025581(n))`
-/

namespace A104633.P1228135152468902356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) - 2 * A000292 (A025581 n).toNat

end

end A104633.P1228135152468902356

namespace A104633

/-- `A104634(n+1)-2*A000292(A025581(n))` -/
def P1228135152468902356.Spec : Prop :=
  ∀ n, P1228135152468902356.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P6000623854536204521

`abs(A000217(A004736(n+1))*A140756(n+1))`
-/

namespace A104633.P6000623854536204521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (A004736 (n + 1)).toNat * A140756 (n + 1)|

end

end A104633.P6000623854536204521

namespace A104633

/-- `abs(A000217(A004736(n+1))*A140756(n+1))` -/
def P6000623854536204521.Spec : Prop :=
  ∀ n, P6000623854536204521.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P3398901625136329867

`A002260(n+1)*A161680(A004736(n+1)+1)`
-/

namespace A104633.P3398901625136329867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A161680 (A004736 (n + 1) + 1).toNat

end

end A104633.P3398901625136329867

namespace A104633

/-- `A002260(n+1)*A161680(A004736(n+1)+1)` -/
def P3398901625136329867.Spec : Prop :=
  ∀ n, P3398901625136329867.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P11268136834063990945

`A000217(A127739(n+1)-n)*A002260(n+1)`
-/

namespace A104633.P11268136834063990945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A127739 (n + 1) - (n : ℤ)).toNat * A002260 (n + 1)

end

end A104633.P11268136834063990945

namespace A104633

/-- `A000217(A127739(n+1)-n)*A002260(n+1)` -/
def P11268136834063990945.Spec : Prop :=
  ∀ n, P11268136834063990945.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P5221377272746383312

`A000217(A114327(n)+A002260(n+1))*A002260(n+1)`
-/

namespace A104633.P5221377272746383312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A114327 n + A002260 (n + 1)).toNat * A002260 (n + 1)

end

end A104633.P5221377272746383312

namespace A104633

/-- `A000217(A114327(n)+A002260(n+1))*A002260(n+1)` -/
def P5221377272746383312.Spec : Prop :=
  ∀ n, P5221377272746383312.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P15181601548106908627

`A000217(A002024(n+1)-A002262(n))*A002260(n+1)`
-/

namespace A104633.P15181601548106908627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1) - A002262 n).toNat * A002260 (n + 1)

end

end A104633.P15181601548106908627

namespace A104633

/-- `A000217(A002024(n+1)-A002262(n))*A002260(n+1)` -/
def P15181601548106908627.Spec : Prop :=
  ∀ n, P15181601548106908627.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P11084629713257668096

`A000217(A003991(n+1)/A002260(n+1))*A002260(n+1)`
-/

namespace A104633.P11084629713257668096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A003991 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat * A002260 (n + 1)

end

end A104633.P11084629713257668096

namespace A104633

/-- `A000217(A003991(n+1)/A002260(n+1))*A002260(n+1)` -/
def P11084629713257668096.Spec : Prop :=
  ∀ n, P11084629713257668096.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P7848116376679450875

`A003991(n+1)/A004736(n+1)*A000217(A004736(n+1))`
-/

namespace A104633.P7848116376679450875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A000217 (A004736 (n + 1)).toNat : ℚ)

end

end A104633.P7848116376679450875

namespace A104633

/-- `A003991(n+1)/A004736(n+1)*A000217(A004736(n+1))` -/
def P7848116376679450875.Spec : Prop :=
  ∀ n, P7848116376679450875.a n = (A104633 (n + 1) : ℚ)

end A104633

/-! ## A104633.P5804194405284702418

`A127779(A038722(n+1))`
-/

namespace A104633.P5804194405284702418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (A038722 (n + 1)).toNat

end

end A104633.P5804194405284702418

namespace A104633

/-- `A127779(A038722(n+1))` -/
def P5804194405284702418.Spec : Prop :=
  ∀ n, P5804194405284702418.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P10958559479156212833

`A000217(A004736(n+1))*A004736(A038722(n+1))`
-/

namespace A104633.P10958559479156212833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1)).toNat * A004736 (A038722 (n + 1)).toNat

end

end A104633.P10958559479156212833

namespace A104633

/-- `A000217(A004736(n+1))*A004736(A038722(n+1))` -/
def P10958559479156212833.Spec : Prop :=
  ∀ n, P10958559479156212833.a n = A104633 (n + 1)

end A104633

/-! ## A104633.P13843966710475058588

`A158824(A080036(n+1))`
-/

namespace A104633.P13843966710475058588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158824 (A080036 (n + 1)).toNat

end

end A104633.P13843966710475058588

namespace A104633

/-- `A158824(A080036(n+1))` -/
def P13843966710475058588.Spec : Prop :=
  ∀ n, P13843966710475058588.a n = A104633 (n + 1)

end A104633

/-!
# A104634: Triangle T(n,k) = (k-1-n)*(k-2-n)*(k+2*n)/6, 1<=k<=n.

The programs for A104634, the canonical program `A104634.P15686132702936156286` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104634 has offset 1).

The definition of A104634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104634.P1628536825267227343

`A082652(∑[char[∑[n]]]²-n)`
-/

namespace A104634.P1628536825267227343
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A104634.P1628536825267227343

namespace A104634

/-- `A082652(∑[char[∑[n]]]²-n)` -/
def P1628536825267227343.Spec : Prop :=
  ∀ n, P1628536825267227343.a n = A104634 (n + 1)

end A104634

/-! ## A104634.P13928058763343560151

`A213751(n+1)-A062707(n)`
-/

namespace A104634.P13928058763343560151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) - A062707 n

end

end A104634.P13928058763343560151

namespace A104634

/-- `A213751(n+1)-A062707(n)` -/
def P13928058763343560151.Spec : Prop :=
  ∀ n, P13928058763343560151.a n = A104634 (n + 1)

end A104634

/-! ## A104634.P17230575859300187925

`2*A213500(n+1)-A104633(n+1)`
-/

namespace A104634.P17230575859300187925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213500 (n + 1) - A104633 (n + 1)

end

end A104634.P17230575859300187925

namespace A104634

/-- `2*A213500(n+1)-A104633(n+1)` -/
def P17230575859300187925.Spec : Prop :=
  ∀ n, P17230575859300187925.a n = A104634 (n + 1)

end A104634

/-! ## A104634.P15686132702936156286

`A104633(n+1)+2*A000292(A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104634

/-- `A104633(n+1)+2*A000292(A025581(n))` -/
def P15686132702936156286.Spec : Prop :=
  ∀ n, P15686132702936156286.a n = A104634 (n + 1)

theorem P15686132702936156286.correct : P15686132702936156286.Spec := by
  intro n
  simp only [A104634, Nat.add_sub_cancel]

end A104634

/-! ## A104634.P14593116796557454414

`A104633(n+1)+A007290(A004736(n+1)+1)`
-/

namespace A104634.P14593116796557454414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A007290 (A004736 (n + 1) + 1).toNat

end

end A104634.P14593116796557454414

namespace A104634

/-- `A104633(n+1)+A007290(A004736(n+1)+1)` -/
def P14593116796557454414.Spec : Prop :=
  ∀ n, P14593116796557454414.a n = A104634 (n + 1)

end A104634

/-! ## A104634.P1237455123670968426

`(A104716(n+1)+A000217(A004736(n+1)))/2`
-/

namespace A104634.P1237455123670968426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104716 (n + 1) + A000217 (A004736 (n + 1)).toNat : ℚ) / 2

end

end A104634.P1237455123670968426

namespace A104634

/-- `(A104716(n+1)+A000217(A004736(n+1)))/2` -/
def P1237455123670968426.Spec : Prop :=
  ∀ n, P1237455123670968426.a n = (A104634 (n + 1) : ℚ)

end A104634

/-! ## A104634.P10012223951155337013

`A193892(comp[∑[n]])`
-/

namespace A104634.P10012223951155337013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193892 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A104634.P10012223951155337013

namespace A104634

/-- `A193892(comp[∑[n]])` -/
def P10012223951155337013.Spec : Prop :=
  ∀ n, P10012223951155337013.a n = A104634 (n + 1)

end A104634

/-! ## A104634.P4461449280362439603

`A193891(A099375(n)+n)`
-/

namespace A104634.P4461449280362439603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 (A099375 n + (n : ℤ)).toNat

end

end A104634.P4461449280362439603

namespace A104634

/-- `A193891(A099375(n)+n)` -/
def P4461449280362439603.Spec : Prop :=
  ∀ n, P4461449280362439603.a n = A104634 (n + 1)

end A104634

/-! ## A104634.P4611125013569408743

`A213500(A185869(n+1)+A004736(n+1))/2`
-/

namespace A104634.P4611125013569408743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213500 (A185869 (n + 1) + A004736 (n + 1)).toNat : ℚ) / 2

end

end A104634.P4611125013569408743

namespace A104634

/-- `A213500(A185869(n+1)+A004736(n+1))/2` -/
def P4611125013569408743.Spec : Prop :=
  ∀ n, P4611125013569408743.a n = (A104634 (n + 1) : ℚ)

end A104634

/-! ## A104634.P7331551509572191624

`A193891(A380649(n+1))`
-/

namespace A104634.P7331551509572191624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193891 (A380649 (n + 1)).toNat

end

end A104634.P7331551509572191624

namespace A104634

/-- `A193891(A380649(n+1))` -/
def P7331551509572191624.Spec : Prop :=
  ∀ n, P7331551509572191624.a n = A104634 (n + 1)

end A104634

/-!
# A104635: Odd n such that 2*n+1 is prime.

The programs for A104635, the canonical program `A104635.P8825604190058391155` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104635 has offset 1).

The definition of A104635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104635.P8825604190058391155

`floor(A002145(n+1)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104635

/-- `floor(A002145(n+1)/2)` -/
def P8825604190058391155.Spec : Prop :=
  ∀ n, P8825604190058391155.a n = A104635 (n + 1)

theorem P8825604190058391155.correct : P8825604190058391155.Spec := by
  intro n
  simp only [A104635, Nat.add_sub_cancel]

end A104635

/-! ## A104635.P3113427510788688200

`(p?[4*n-1]-1)/2`
-/

namespace A104635.P3113427510788688200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A104635.P3113427510788688200

namespace A104635

/-- `(p?[4*n-1]-1)/2` -/
def P3113427510788688200.Spec : Prop :=
  ∀ n, P3113427510788688200.a n = (A104635 (n + 1) : ℚ)

end A104635

/-! ## A104635.P16725390832813520480

`A087915(n+1)+1`
-/

namespace A104635.P16725390832813520480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + 1

end

end A104635.P16725390832813520480

namespace A104635

/-- `A087915(n+1)+1` -/
def P16725390832813520480.Spec : Prop :=
  ∀ n, P16725390832813520480.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P3206685558648564460

`A090670(n+1)-2`
-/

namespace A104635.P3206685558648564460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1) - 2

end

end A104635.P3206685558648564460

namespace A104635

/-- `A090670(n+1)-2` -/
def P3206685558648564460.Spec : Prop :=
  ∀ n, P3206685558648564460.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P16314895817720134042

`A089257(n+1)-3`
-/

namespace A104635.P16314895817720134042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089257 (n + 1) - 3

end

end A104635.P16314895817720134042

namespace A104635

/-- `A089257(n+1)-3` -/
def P16314895817720134042.Spec : Prop :=
  ∀ n, P16314895817720134042.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P11945506962856585193

`A089193(n+1)-4`
-/

namespace A104635.P11945506962856585193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1) - 4

end

end A104635.P11945506962856585193

namespace A104635

/-- `A089193(n+1)-4` -/
def P11945506962856585193.Spec : Prop :=
  ∀ n, P11945506962856585193.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P8780772826978134477

`2*A095278(n+1)+1`
-/

namespace A104635.P8780772826978134477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095278 (n + 1) + 1

end

end A104635.P8780772826978134477

namespace A104635

/-- `2*A095278(n+1)+1` -/
def P8780772826978134477.Spec : Prop :=
  ∀ n, P8780772826978134477.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P8946283993786950318

`2*A005099(n+1)-1`
-/

namespace A104635.P8946283993786950318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005099 (n + 1) - 1

end

end A104635.P8946283993786950318

namespace A104635

/-- `2*A005099(n+1)-1` -/
def P8946283993786950318.Spec : Prop :=
  ∀ n, P8946283993786950318.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P7849777508471299690

`2*A089986(n+1)+3`
-/

namespace A104635.P7849777508471299690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089986 (n + 1) + 3

end

end A104635.P7849777508471299690

namespace A104635

/-- `2*A089986(n+1)+3` -/
def P7849777508471299690.Spec : Prop :=
  ∀ n, P7849777508471299690.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P16358690482442924522

`2*A156287(n+1)-3`
-/

namespace A104635.P16358690482442924522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156287 (n + 1) - 3

end

end A104635.P16358690482442924522

namespace A104635

/-- `2*A156287(n+1)-3` -/
def P16358690482442924522.Spec : Prop :=
  ∀ n, P16358690482442924522.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P5262790744387677944

`a(n-1)+2*A082076(n)` with `a(0)=1`
-/

namespace A104635.P5262790744387677944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A082076 n

end

end A104635.P5262790744387677944

namespace A104635

/-- `a(n-1)+2*A082076(n)` -/
def P5262790744387677944.Spec : Prop :=
  ∀ n, P5262790744387677944.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P14675928390167786158

`A095278(n+1)+A005099(n+1)`
-/

namespace A104635.P14675928390167786158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + A005099 (n + 1)

end

end A104635.P14675928390167786158

namespace A104635

/-- `A095278(n+1)+A005099(n+1)` -/
def P14675928390167786158.Spec : Prop :=
  ∀ n, P14675928390167786158.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P6435644645314453651

`A156287(n+1)+A089986(n+1)`
-/

namespace A104635.P6435644645314453651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) + A089986 (n + 1)

end

end A104635.P6435644645314453651

namespace A104635

/-- `A156287(n+1)+A089986(n+1)` -/
def P6435644645314453651.Spec : Prop :=
  ∀ n, P6435644645314453651.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P10875623023449761337

`A190105(n+1)-A005099(n+1)`
-/

namespace A104635.P10875623023449761337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) - A005099 (n + 1)

end

end A104635.P10875623023449761337

namespace A104635

/-- `A190105(n+1)-A005099(n+1)` -/
def P10875623023449761337.Spec : Prop :=
  ∀ n, P10875623023449761337.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P10367892027052277608

`A089217(n+1)%A089257(n+1)`
-/

namespace A104635.P10367892027052277608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089217 (n + 1)) (A089257 (n + 1))

end

end A104635.P10367892027052277608

namespace A104635

/-- `A089217(n+1)%A089257(n+1)` -/
def P10367892027052277608.Spec : Prop :=
  ∀ n, P10367892027052277608.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P16583015611881664905

`A090658(n+1)%A090670(n+1)`
-/

namespace A104635.P16583015611881664905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090658 (n + 1)) (A090670 (n + 1))

end

end A104635.P16583015611881664905

namespace A104635

/-- `A090658(n+1)%A090670(n+1)` -/
def P16583015611881664905.Spec : Prop :=
  ∀ n, P16583015611881664905.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P11051545350822563588

`∪[A186297(n+1), A186302(n+1)]`
-/

namespace A104635.P11051545350822563588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104635.P11051545350822563588

namespace A104635

/-- `∪[A186297(n+1), A186302(n+1)]` -/
def P11051545350822563588.Spec : Prop :=
  ∀ n, (P11051545350822563588.a n : ℤ) = A104635 (n + 1)

end A104635

/-! ## A104635.P17884887133625667120

`A002145(n+1)-(A005099(n+1)+A005099(n+1))`
-/

namespace A104635.P17884887133625667120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - (A005099 (n + 1) + A005099 (n + 1))

end

end A104635.P17884887133625667120

namespace A104635

/-- `A002145(n+1)-(A005099(n+1)+A005099(n+1))` -/
def P17884887133625667120.Spec : Prop :=
  ∀ n, P17884887133625667120.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P11499995221423909812

`A002145(n+1)-(A156287(n+1)+A095278(n+1))`
-/

namespace A104635.P11499995221423909812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - (A156287 (n + 1) + A095278 (n + 1))

end

end A104635.P11499995221423909812

namespace A104635

/-- `A002145(n+1)-(A156287(n+1)+A095278(n+1))` -/
def P11499995221423909812.Spec : Prop :=
  ∀ n, P11499995221423909812.a n = A104635 (n + 1)

end A104635

/-! ## A104635.P8065650501044675733

`A190105(n+1)+A190105(n+1)-A002145(n+1)`
-/

namespace A104635.P8065650501044675733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) + (A190105 (n + 1) - A002145 (n + 1))

end

end A104635.P8065650501044675733

namespace A104635

/-- `A190105(n+1)+A190105(n+1)-A002145(n+1)` -/
def P8065650501044675733.Spec : Prop :=
  ∀ n, P8065650501044675733.a n = A104635 (n + 1)

end A104635

/-!
# A104636: Even n such that 2n+1 is prime.

The programs for A104636, the canonical program `A104636.P6043474996076477470` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104636 has offset 1).

The definition of A104636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104636.P6987985705517902861

`(p?[4*n+1]-1)/2`
-/

namespace A104636.P6987985705517902861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2

end

end A104636.P6987985705517902861

namespace A104636

/-- `(p?[4*n+1]-1)/2` -/
def P6987985705517902861.Spec : Prop :=
  ∀ n, P6987985705517902861.a n = (A104636 (n + 1) : ℚ)

end A104636

/-! ## A104636.P6043474996076477470

`xor(1, ceil(p?[4*n+1]/2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104636

/-- `xor(1, ceil(p?[4*n+1]/2))` -/
def P6043474996076477470.Spec : Prop :=
  ∀ n, P6043474996076477470.a n = A104636 (n + 1)

theorem P6043474996076477470.correct : P6043474996076477470.Spec := by
  intro n
  simp only [A104636, Nat.add_sub_cancel]

end A104636

/-! ## A104636.P17269498822108129527

`eq[(-1)^n, ∑{e}[2*n+1, #]]`
-/

namespace A104636.P17269498822108129527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A104636.P17269498822108129527

namespace A104636

/-- `eq[(-1)^n, ∑{e}[2*n+1, #]]` -/
def P17269498822108129527.Spec : Prop :=
  ∀ n, (P17269498822108129527.a n : ℤ) = A104636 (n + 1)

end A104636

/-! ## A104636.P14871955837395607061

`floor(p?[2*n+2*n+1]/2)`
-/

namespace A104636.P14871955837395607061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋

end

end A104636.P14871955837395607061

namespace A104636

/-- `floor(p?[2*n+2*n+1]/2)` -/
def P14871955837395607061.Spec : Prop :=
  ∀ n, P14871955837395607061.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P3792423471461241689

`eq[1, A211173(n)]`
-/

namespace A104636.P3792423471461241689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104636.P3792423471461241689

namespace A104636

/-- `eq[1, A211173(n)]` -/
def P3792423471461241689.Spec : Prop :=
  ∀ n, (P3792423471461241689.a n : ℤ) = A104636 (n + 1)

end A104636

/-! ## A104636.P7395334984312918672

`eq[2, A383777(n)]`
-/

namespace A104636.P7395334984312918672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104636.P7395334984312918672

namespace A104636

/-- `eq[2, A383777(n)]` -/
def P7395334984312918672.Spec : Prop :=
  ∀ n, (P7395334984312918672.a n : ℤ) = A104636 (n + 1)

end A104636

/-! ## A104636.P7598410045418117701

`A119681(n+1)-1`
-/

namespace A104636.P7598410045418117701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1) - 1

end

end A104636.P7598410045418117701

namespace A104636

/-- `A119681(n+1)-1` -/
def P7598410045418117701.Spec : Prop :=
  ∀ n, P7598410045418117701.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P1263976490857334610

`2*A005098(n+1)`
-/

namespace A104636.P1263976490857334610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1)

end

end A104636.P1263976490857334610

namespace A104636

/-- `2*A005098(n+1)` -/
def P1263976490857334610.Spec : Prop :=
  ∀ n, P1263976490857334610.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P7872339087776612892

`A089255(n+1)-3`
-/

namespace A104636.P7872339087776612892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1) - 3

end

end A104636.P7872339087776612892

namespace A104636

/-- `A089255(n+1)-3` -/
def P7872339087776612892.Spec : Prop :=
  ∀ n, P7872339087776612892.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P15449563460999807794

`A152680(n+1)/2`
-/

namespace A104636.P15449563460999807794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) : ℚ) / 2

end

end A104636.P15449563460999807794

namespace A104636

/-- `A152680(n+1)/2` -/
def P15449563460999807794.Spec : Prop :=
  ∀ n, P15449563460999807794.a n = (A104636 (n + 1) : ℚ)

end A104636

/-! ## A104636.P5854238786364908677

`eq[4, A286461(n+1)]`
-/

namespace A104636.P5854238786364908677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104636.P5854238786364908677

namespace A104636

/-- `eq[4, A286461(n+1)]` -/
def P5854238786364908677.Spec : Prop :=
  ∀ n, (P5854238786364908677.a n : ℤ) = A104636 (n + 1)

end A104636

/-! ## A104636.P15487328078306331723

`floor(sqrt(A171555(n+1)))`
-/

namespace A104636.P15487328078306331723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A171555 (n + 1))

end

end A104636.P15487328078306331723

namespace A104636

/-- `floor(sqrt(A171555(n+1)))` -/
def P15487328078306331723.Spec : Prop :=
  ∀ n, P15487328078306331723.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P11280810014438487764

`filter[2*n, A101264(#)]`
-/

namespace A104636.P11280810014438487764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j) = 1) n)

end

end A104636.P11280810014438487764

namespace A104636

/-- `filter[2*n, A101264(#)]` -/
def P11280810014438487764.Spec : Prop :=
  ∀ n, (P11280810014438487764.a n : ℤ) = A104636 (n + 1)

end A104636

/-! ## A104636.P4462469280973560493

`floor(A002144(n+1)/2)`
-/

namespace A104636.P4462469280973560493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002144 (n + 1) : ℚ) / 2⌋

end

end A104636.P4462469280973560493

namespace A104636

/-- `floor(A002144(n+1)/2)` -/
def P4462469280973560493.Spec : Prop :=
  ∀ n, P4462469280973560493.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P1995910826755540105

`floor(A002313(n+2)/2)`
-/

namespace A104636.P1995910826755540105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002313 (n + 2) : ℚ) / 2⌋

end

end A104636.P1995910826755540105

namespace A104636

/-- `floor(A002313(n+2)/2)` -/
def P1995910826755540105.Spec : Prop :=
  ∀ n, P1995910826755540105.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P5515959692407784158

`floor(A280084(n+2)/2)`
-/

namespace A104636.P5515959692407784158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280084 (n + 2) : ℚ) / 2⌋

end

end A104636.P5515959692407784158

namespace A104636

/-- `floor(A280084(n+2)/2)` -/
def P5515959692407784158.Spec : Prop :=
  ∀ n, P5515959692407784158.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P7432206360986465383

`record[A057024(n+1)-1]`
-/

namespace A104636.P7432206360986465383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057024 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104636.P7432206360986465383

namespace A104636

/-- `record[A057024(n+1)-1]` -/
def P7432206360986465383.Spec : Prop :=
  ∀ n, P7432206360986465383.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P17614736122921654674

`record[A195508(2*(n+1))]`
-/

namespace A104636.P17614736122921654674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104636.P17614736122921654674

namespace A104636

/-- `record[A195508(2*(n+1))]` -/
def P17614736122921654674.Spec : Prop :=
  ∀ n, P17614736122921654674.a n = A104636 (n + 1)

end A104636

/-! ## A104636.P7741532613303086874

`2*comp[A045751(n+1)]`
-/

namespace A104636.P7741532613303086874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104636.P7741532613303086874

namespace A104636

/-- `2*comp[A045751(n+1)]` -/
def P7741532613303086874.Spec : Prop :=
  ∀ n, (P7741532613303086874.a n : ℤ) = A104636 (n + 1)

end A104636

/-! ## A104636.P540295367254139431

`2*(A111215(n+1)+1)`
-/

namespace A104636.P540295367254139431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A111215 (n + 1) + 1)

end

end A104636.P540295367254139431

namespace A104636

/-- `2*(A111215(n+1)+1)` -/
def P540295367254139431.Spec : Prop :=
  ∀ n, P540295367254139431.a n = A104636 (n + 1)

end A104636

/-!
# A104637: Number of even digits in n-th prime.

The programs for A104637, the canonical program `A104637.P9162351111245222730` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104637 has offset 1).

The definition of A104637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A196563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104637.P9162351111245222730

`A196563(A000040(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104637

/-- `A196563(A000040(n+1))` -/
def P9162351111245222730.Spec : Prop :=
  ∀ n, P9162351111245222730.a n = A104637 (n + 1)

theorem P9162351111245222730.correct : P9162351111245222730.Spec := by
  intro n
  simp only [A104637, Nat.add_sub_cancel]

end A104637

/-! ## A104637.P2181703036323181268

`∑{digits}[p?[abs(xor(n, -2))], (#+5)%2]`
-/

namespace A104637.P2181703036323181268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x + 5) % 2).sum

end

end A104637.P2181703036323181268

namespace A104637

/-- `∑{digits}[p?[abs(xor(n, -2))], (#+5)%2]` -/
def P2181703036323181268.Spec : Prop :=
  ∀ n, (P2181703036323181268.a n : ℤ) = A104637 (n + 1)

end A104637

/-! ## A104637.P10847268988409763470

`A196563(p?[xor(1, n)+1])`
-/

namespace A104637.P10847268988409763470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A104637.P10847268988409763470

namespace A104637

/-- `A196563(p?[xor(1, n)+1])` -/
def P10847268988409763470.Spec : Prop :=
  ∀ n, P10847268988409763470.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P14226542153402318281

`A196563(p?[abs(xor(1, -n))])`
-/

namespace A104637.P14226542153402318281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104637.P14226542153402318281

namespace A104637

/-- `A196563(p?[abs(xor(1, -n))])` -/
def P14226542153402318281.Spec : Prop :=
  ∀ n, P14226542153402318281.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P6810700081166723374

`A196563(p?[round(sqrt(n)+n)])`
-/

namespace A104637.P6810700081166723374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104637.P6810700081166723374

namespace A104637

/-- `A196563(p?[round(sqrt(n)+n)])` -/
def P6810700081166723374.Spec : Prop :=
  ∀ n, P6810700081166723374.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P9504477241726401303

`∑{digits}[Δ[A008348(n)], (#+1)%2]`
-/

namespace A104637.P9504477241726401303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x + 1) % 2).sum

end

end A104637.P9504477241726401303

namespace A104637

/-- `∑{digits}[Δ[A008348(n)], (#+1)%2]` -/
def P9504477241726401303.Spec : Prop :=
  ∀ n, (P9504477241726401303.a n : ℤ) = A104637 (n + 1)

end A104637

/-! ## A104637.P5296989307114297992

`∑{digits}[A008578(n+2), (21-#)%2]`
-/

namespace A104637.P5296989307114297992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (21 - (x : ℤ)) 2).sum

end

end A104637.P5296989307114297992

namespace A104637

/-- `∑{digits}[A008578(n+2), (21-#)%2]` -/
def P5296989307114297992.Spec : Prop :=
  ∀ n, P5296989307114297992.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P9842897837342006351

`A196563(∏{p}[p?[n-(-1)^n], #])`
-/

namespace A104637.P9842897837342006351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A104637.P9842897837342006351

namespace A104637

/-- `A196563(∏{p}[p?[n-(-1)^n], #])` -/
def P9842897837342006351.Spec : Prop :=
  ∀ n, P9842897837342006351.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P5756241292055750090

`∑{digits}[record[A020639(n+2)], and(1, #+1)]`
-/

namespace A104637.P5756241292055750090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.land 1 (x + 1)).sum

end

end A104637.P5756241292055750090

namespace A104637

/-- `∑{digits}[record[A020639(n+2)], and(1, #+1)]` -/
def P5756241292055750090.Spec : Prop :=
  ∀ n, (P5756241292055750090.a n : ℤ) = A104637 (n + 1)

end A104637

/-! ## A104637.P16187240693133841471

`∑{p}[3*p?[round(8*n/7)], A196563(#)]`
-/

namespace A104637.P16187240693133841471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A196563 p

end

end A104637.P16187240693133841471

namespace A104637

/-- `∑{p}[3*p?[round(8*n/7)], A196563(#)]` -/
def P16187240693133841471.Spec : Prop :=
  ∀ n, P16187240693133841471.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P639473256192956649

`∑{digits}[record[A000010(n+1)+1], and(1, #+1)]`
-/

namespace A104637.P639473256192956649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.land 1 (x + 1)).sum

end

end A104637.P639473256192956649

namespace A104637

/-- `∑{digits}[record[A000010(n+1)+1], and(1, #+1)]` -/
def P639473256192956649.Spec : Prop :=
  ∀ n, (P639473256192956649.a n : ℤ) = A104637 (n + 1)

end A104637

/-! ## A104637.P7800401053981463493

`A196563(Δ[A007504(n)])`
-/

namespace A104637.P7800401053981463493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (f1 (n + 1) - f1 n).toNat

end

end A104637.P7800401053981463493

namespace A104637

/-- `A196563(Δ[A007504(n)])` -/
def P7800401053981463493.Spec : Prop :=
  ∀ n, P7800401053981463493.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P5762138080370257067

`A196563(record[A051698(n)])`
-/

namespace A104637.P5762138080370257067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104637.P5762138080370257067

namespace A104637

/-- `A196563(record[A051698(n)])` -/
def P5762138080370257067.Spec : Prop :=
  ∀ n, P5762138080370257067.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P2446715154454171347

`A196563(A004087(n+1))`
-/

namespace A104637.P2446715154454171347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A004087 (n + 1)).toNat

end

end A104637.P2446715154454171347

namespace A104637

/-- `A196563(A004087(n+1))` -/
def P2446715154454171347.Spec : Prop :=
  ∀ n, P2446715154454171347.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P7925587543993974266

`A196563(A028906(n+1))`
-/

namespace A104637.P7925587543993974266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A028906 (n + 1)).toNat

end

end A104637.P7925587543993974266

namespace A104637

/-- `A196563(A028906(n+1))` -/
def P7925587543993974266.Spec : Prop :=
  ∀ n, P7925587543993974266.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P5616916777073876335

`A196563(A039790(n+1))`
-/

namespace A104637.P5616916777073876335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A039790 (n + 1)).toNat

end

end A104637.P5616916777073876335

namespace A104637

/-- `A196563(A039790(n+1))` -/
def P5616916777073876335.Spec : Prop :=
  ∀ n, P5616916777073876335.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P9986938820997116924

`A196563(A101989(n+1))`
-/

namespace A104637.P9986938820997116924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A101989 (n + 1)).toNat

end

end A104637.P9986938820997116924

namespace A104637

/-- `A196563(A101989(n+1))` -/
def P9986938820997116924.Spec : Prop :=
  ∀ n, P9986938820997116924.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P1761990401054502069

`A196563(A161847(n+1))`
-/

namespace A104637.P1761990401054502069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A161847 (n + 1)).toNat

end

end A104637.P1761990401054502069

namespace A104637

/-- `A196563(A161847(n+1))` -/
def P1761990401054502069.Spec : Prop :=
  ∀ n, P1761990401054502069.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P12862350637843732754

`A196563(A171021(n+1))`
-/

namespace A104637.P12862350637843732754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A171021 (n + 1)).toNat

end

end A104637.P12862350637843732754

namespace A104637

/-- `A196563(A171021(n+1))` -/
def P12862350637843732754.Spec : Prop :=
  ∀ n, P12862350637843732754.a n = A104637 (n + 1)

end A104637

/-! ## A104637.P11317453381987523938

`A196563(A171024(n+1))`
-/

namespace A104637.P11317453381987523938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A171024 (n + 1)).toNat

end

end A104637.P11317453381987523938

namespace A104637

/-- `A196563(A171024(n+1))` -/
def P11317453381987523938.Spec : Prop :=
  ∀ n, P11317453381987523938.a n = A104637 (n + 1)

end A104637

/-!
# A104638: Number of odd digits in n-th prime.

The programs for A104638, the canonical program `A104638.P17611447121107343307` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104638 has offset 1).

The definition of A104638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104638.P17611447121107343307

`A196564(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104638

/-- `A196564(A000040(n+1))` -/
def P17611447121107343307.Spec : Prop :=
  ∀ n, P17611447121107343307.a n = A104638 (n + 1)

theorem P17611447121107343307.correct : P17611447121107343307.Spec := by
  intro n
  simp only [A104638, Nat.add_sub_cancel]

end A104638

/-! ## A104638.P5865200194017414855

`∑{digits}[A000040(n+1), A000035(#)]`
-/

namespace A104638.P5865200194017414855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A104638.P5865200194017414855

namespace A104638

/-- `∑{digits}[A000040(n+1), A000035(#)]` -/
def P5865200194017414855.Spec : Prop :=
  ∀ n, P5865200194017414855.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P14168625602611390068

`∑{digits}[A028906(n+1), A000035(#)]`
-/

namespace A104638.P14168625602611390068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A104638.P14168625602611390068

namespace A104638

/-- `∑{digits}[A028906(n+1), A000035(#)]` -/
def P14168625602611390068.Spec : Prop :=
  ∀ n, P14168625602611390068.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P15505134483094476946

`∑{digits}[A000040(n+1), A101660(#²)]`
-/

namespace A104638.P15505134483094476946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A101660 (x ^ 2)).sum

end

end A104638.P15505134483094476946

namespace A104638

/-- `∑{digits}[A000040(n+1), A101660(#²)]` -/
def P15505134483094476946.Spec : Prop :=
  ∀ n, P15505134483094476946.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P15985985308154828426

`∑{digits}[A000040(n+1), A059841(#+1)]`
-/

namespace A104638.P15985985308154828426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 (x + 1)).sum

end

end A104638.P15985985308154828426

namespace A104638

/-- `∑{digits}[A000040(n+1), A059841(#+1)]` -/
def P15985985308154828426.Spec : Prop :=
  ∀ n, P15985985308154828426.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P14498696239257832755

`∑{digits}[A000040(n+1), A327515(#+1)]`
-/

namespace A104638.P14498696239257832755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A327515 (x + 1)).sum

end

end A104638.P14498696239257832755

namespace A104638

/-- `∑{digits}[A000040(n+1), A327515(#+1)]` -/
def P14498696239257832755.Spec : Prop :=
  ∀ n, P14498696239257832755.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P62334138014981537

`∑{digits}[A028905(n+1), A071649(#)/#]`
-/

namespace A104638.P62334138014981537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (A071649 x : ℚ) / (x : ℚ)).sum

end

end A104638.P62334138014981537

namespace A104638

/-- `∑{digits}[A028905(n+1), A071649(#)/#]` -/
def P62334138014981537.Spec : Prop :=
  ∀ n, P62334138014981537.a n = (A104638 (n + 1) : ℚ)

end A104638

/-! ## A104638.P771632292170903941

`∑{digits}[A000040(n+1), A167465(#²²)]`
-/

namespace A104638.P771632292170903941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A167465 ((x ^ 2) ^ 2)).sum

end

end A104638.P771632292170903941

namespace A104638

/-- `∑{digits}[A000040(n+1), A167465(#²²)]` -/
def P771632292170903941.Spec : Prop :=
  ∀ n, P771632292170903941.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P6775747345927511861

`A196564(A028905(n+1))`
-/

namespace A104638.P6775747345927511861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A028905 (n + 1)).toNat

end

end A104638.P6775747345927511861

namespace A104638

/-- `A196564(A028905(n+1))` -/
def P6775747345927511861.Spec : Prop :=
  ∀ n, P6775747345927511861.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P7061215704943764719

`A196564(A004087(n+1))`
-/

namespace A104638.P7061215704943764719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A004087 (n + 1)).toNat

end

end A104638.P7061215704943764719

namespace A104638

/-- `A196564(A004087(n+1))` -/
def P7061215704943764719.Spec : Prop :=
  ∀ n, P7061215704943764719.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P7813477003884603923

`A196564(A028906(n+1))`
-/

namespace A104638.P7813477003884603923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A028906 (n + 1)).toNat

end

end A104638.P7813477003884603923

namespace A104638

/-- `A196564(A028906(n+1))` -/
def P7813477003884603923.Spec : Prop :=
  ∀ n, P7813477003884603923.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P14595345762488552712

`A196564(A161847(n+1))`
-/

namespace A104638.P14595345762488552712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A161847 (n + 1)).toNat

end

end A104638.P14595345762488552712

namespace A104638

/-- `A196564(A161847(n+1))` -/
def P14595345762488552712.Spec : Prop :=
  ∀ n, P14595345762488552712.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P14213854865697694503

`A196564(A171014(n+1))`
-/

namespace A104638.P14213854865697694503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171014 (n + 1)).toNat

end

end A104638.P14213854865697694503

namespace A104638

/-- `A196564(A171014(n+1))` -/
def P14213854865697694503.Spec : Prop :=
  ∀ n, P14213854865697694503.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P7345339835727773668

`A196564(A171019(n+1))`
-/

namespace A104638.P7345339835727773668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171019 (n + 1)).toNat

end

end A104638.P7345339835727773668

namespace A104638

/-- `A196564(A171019(n+1))` -/
def P7345339835727773668.Spec : Prop :=
  ∀ n, P7345339835727773668.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P4680539382733087594

`A196564(A171021(n+1))`
-/

namespace A104638.P4680539382733087594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171021 (n + 1)).toNat

end

end A104638.P4680539382733087594

namespace A104638

/-- `A196564(A171021(n+1))` -/
def P4680539382733087594.Spec : Prop :=
  ∀ n, P4680539382733087594.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P7484677005218757958

`A196564(A171024(n+1))`
-/

namespace A104638.P7484677005218757958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171024 (n + 1)).toNat

end

end A104638.P7484677005218757958

namespace A104638

/-- `A196564(A171024(n+1))` -/
def P7484677005218757958.Spec : Prop :=
  ∀ n, P7484677005218757958.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P11433843360876309262

`A196564(A171026(n+1))`
-/

namespace A104638.P11433843360876309262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171026 (n + 1)).toNat

end

end A104638.P11433843360876309262

namespace A104638

/-- `A196564(A171026(n+1))` -/
def P11433843360876309262.Spec : Prop :=
  ∀ n, P11433843360876309262.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P18109631158116724964

`A196564(A171028(n+1))`
-/

namespace A104638.P18109631158116724964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171028 (n + 1)).toNat

end

end A104638.P18109631158116724964

namespace A104638

/-- `A196564(A171028(n+1))` -/
def P18109631158116724964.Spec : Prop :=
  ∀ n, P18109631158116724964.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P13937075558787073415

`A196564(A171030(n+1))`
-/

namespace A104638.P13937075558787073415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171030 (n + 1)).toNat

end

end A104638.P13937075558787073415

namespace A104638

/-- `A196564(A171030(n+1))` -/
def P13937075558787073415.Spec : Prop :=
  ∀ n, P13937075558787073415.a n = A104638 (n + 1)

end A104638

/-! ## A104638.P13799315802615586513

`A196564(A171032(n+1))`
-/

namespace A104638.P13799315802615586513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171032 (n + 1)).toNat

end

end A104638.P13799315802615586513

namespace A104638

/-- `A196564(A171032(n+1))` -/
def P13799315802615586513.Spec : Prop :=
  ∀ n, P13799315802615586513.a n = A104638 (n + 1)

end A104638

/-!
# A104639: Number of even digits in n^3.

The programs for A104639, the canonical program `A104639.P5236722509912022066` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104639 has offset 1).

The definition of A104639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196563, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104639.P5236722509912022066

`A196563((n+1)^3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104639

/-- `A196563((n+1)^3)` -/
def P5236722509912022066.Spec : Prop :=
  ∀ n, P5236722509912022066.a n = A104639 (n + 1)

theorem P5236722509912022066.correct : P5236722509912022066.Spec := by
  intro n
  simp only [A104639, Nat.add_sub_cancel]

end A104639

/-! ## A104639.P9424678519764599972

`∑{digits}[(n+1)^3, A056594(#)²]`
-/

namespace A104639.P9424678519764599972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A056594 x ^ 2).sum

end

end A104639.P9424678519764599972

namespace A104639

/-- `∑{digits}[(n+1)^3, A056594(#)²]` -/
def P9424678519764599972.Spec : Prop :=
  ∀ n, P9424678519764599972.a n = A104639 (n + 1)

end A104639

/-! ## A104639.P12737953736884553913

`∑{digits}[(n+1)^3, A041943(#)%2]`
-/

namespace A104639.P12737953736884553913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A041943 x) 2).sum

end

end A104639.P12737953736884553913

namespace A104639

/-- `∑{digits}[(n+1)^3, A041943(#)%2]` -/
def P12737953736884553913.Spec : Prop :=
  ∀ n, P12737953736884553913.a n = A104639 (n + 1)

end A104639

/-! ## A104639.P4956201487673977106

`∑{digits}[(n+1)*(n+1)², A059841(#)]`
-/

namespace A104639.P4956201487673977106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A059841 x).sum

end

end A104639.P4956201487673977106

namespace A104639

/-- `∑{digits}[(n+1)*(n+1)², A059841(#)]` -/
def P4956201487673977106.Spec : Prop :=
  ∀ n, P4956201487673977106.a n = A104639 (n + 1)

end A104639

/-! ## A104639.P2313798647359940113

`∑{digits}[(n+1)*(n+1)², A016213(#)²]`
-/

namespace A104639.P2313798647359940113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A016213 x ^ 2).sum

end

end A104639.P2313798647359940113

namespace A104639

/-- `∑{digits}[(n+1)*(n+1)², A016213(#)²]` -/
def P2313798647359940113.Spec : Prop :=
  ∀ n, P2313798647359940113.a n = A104639 (n + 1)

end A104639

/-! ## A104639.P8113060310841191809

`A111393(n+1)-A104640(n+1)`
-/

namespace A104639.P8113060310841191809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111393 (n + 1) - A104640 (n + 1)

end

end A104639.P8113060310841191809

namespace A104639

/-- `A111393(n+1)-A104640(n+1)` -/
def P8113060310841191809.Spec : Prop :=
  ∀ n, P8113060310841191809.a n = A104639 (n + 1)

end A104639

/-! ## A104639.P2634954692038880261

`∑{digits}[(n+1)^3, A206479(A000096(#)+1)]`
-/

namespace A104639.P2634954692038880261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A206479 (A000096 x + 1).toNat).sum

end

end A104639.P2634954692038880261

namespace A104639

/-- `∑{digits}[(n+1)^3, A206479(A000096(#)+1)]` -/
def P2634954692038880261.Spec : Prop :=
  ∀ n, P2634954692038880261.a n = A104639 (n + 1)

end A104639

/-!
# A104640: Number of odd digits in n^3.

The programs for A104640, the canonical program `A104640.P1133001230402896565` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104640 has offset 1).

The definition of A104640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196564, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104640.P1133001230402896565

`A196564((n+1)^3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104640

/-- `A196564((n+1)^3)` -/
def P1133001230402896565.Spec : Prop :=
  ∀ n, P1133001230402896565.a n = A104640 (n + 1)

theorem P1133001230402896565.correct : P1133001230402896565.Spec := by
  intro n
  simp only [A104640, Nat.add_sub_cancel]

end A104640

/-! ## A104640.P4684602269252483380

`∑{digits}[(n+1)^3, #%2]`
-/

namespace A104640.P4684602269252483380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum

end

end A104640.P4684602269252483380

namespace A104640

/-- `∑{digits}[(n+1)^3, #%2]` -/
def P4684602269252483380.Spec : Prop :=
  ∀ n, (P4684602269252483380.a n : ℤ) = A104640 (n + 1)

end A104640

/-! ## A104640.P10250707412896728782

`∑{digits}[(n+1)^3, and(1, #)]`
-/

namespace A104640.P10250707412896728782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A104640.P10250707412896728782

namespace A104640

/-- `∑{digits}[(n+1)^3, and(1, #)]` -/
def P10250707412896728782.Spec : Prop :=
  ∀ n, (P10250707412896728782.a n : ℤ) = A104640 (n + 1)

end A104640

/-! ## A104640.P11737520443864597925

`∑{digits}[(n+1)^3, A000035(#)]`
-/

namespace A104640.P11737520443864597925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000035 x).sum

end

end A104640.P11737520443864597925

namespace A104640

/-- `∑{digits}[(n+1)^3, A000035(#)]` -/
def P11737520443864597925.Spec : Prop :=
  ∀ n, P11737520443864597925.a n = A104640 (n + 1)

end A104640

/-! ## A104640.P5190260481819478994

`∑{digits}[(n+1)^3, A101659(#²)]`
-/

namespace A104640.P5190260481819478994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A101659 (x ^ 2)).sum

end

end A104640.P5190260481819478994

namespace A104640

/-- `∑{digits}[(n+1)^3, A101659(#²)]` -/
def P5190260481819478994.Spec : Prop :=
  ∀ n, P5190260481819478994.a n = A104640 (n + 1)

end A104640

/-! ## A104640.P2460701722518986171

`∑{digits}[(n+1)^3, A007814(#²+1)]`
-/

namespace A104640.P2460701722518986171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007814 (x ^ 2 + 1)).sum

end

end A104640.P2460701722518986171

namespace A104640

/-- `∑{digits}[(n+1)^3, A007814(#²+1)]` -/
def P2460701722518986171.Spec : Prop :=
  ∀ n, P2460701722518986171.a n = A104640 (n + 1)

end A104640

/-! ## A104640.P15341703000086203438

`A111393(n+1)-A104639(n+1)`
-/

namespace A104640.P15341703000086203438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111393 (n + 1) - A104639 (n + 1)

end

end A104640.P15341703000086203438

namespace A104640

/-- `A111393(n+1)-A104639(n+1)` -/
def P15341703000086203438.Spec : Prop :=
  ∀ n, P15341703000086203438.a n = A104640 (n + 1)

end A104640

/-!
# A104641: Numbers n such that n^3 has equal number of odd and even digits.

The programs for A104641, the canonical program `A104641.P16051552740361381644` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104641 has offset 1).

The definition of A104641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104641.P16051552740361381644

`eq[A104639(n+1), A104640(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104641

/-- `eq[A104639(n+1), A104640(n+1)]+1` -/
def P16051552740361381644.Spec : Prop :=
  ∀ n, (P16051552740361381644.a n : ℤ) = A104641 (n + 1)

theorem P16051552740361381644.correct : P16051552740361381644.Spec := by
  intro n
  simp only [A104641, Nat.add_sub_cancel]

end A104641

/-! ## A104641.P11533318540833859120

`A020725(eq[A104639(n+1), A104640(n+1)])`
-/

namespace A104641.P11533318540833859120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104641.P11533318540833859120

namespace A104641

/-- `A020725(eq[A104639(n+1), A104640(n+1)])` -/
def P11533318540833859120.Spec : Prop :=
  ∀ n, P11533318540833859120.a n = A104641 (n + 1)

end A104641

/-! ## A104641.P15830447920023348598

`A065475(eq[A104639(n+1), A104640(n+1)])`
-/

namespace A104641.P15830447920023348598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104641.P15830447920023348598

namespace A104641

/-- `A065475(eq[A104639(n+1), A104640(n+1)])` -/
def P15830447920023348598.Spec : Prop :=
  ∀ n, P15830447920023348598.a n = A104641 (n + 1)

end A104641

/-! ## A104641.P11903413924663310581

`A104694(3*n+2)`
-/

namespace A104641.P11903413924663310581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104694 (3 * n + 2)

end

end A104641.P11903413924663310581

namespace A104641

/-- `A104694(3*n+2)` -/
def P11903413924663310581.Spec : Prop :=
  ∀ n, P11903413924663310581.a n = A104641 (n + 1)

end A104641

/-! ## A104641.P8466102161128626580

`record[A104694(∑[3-a(n-1)])]` with `a(0)=2`
-/

namespace A104641.P8466102161128626580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104694 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104641.P8466102161128626580

namespace A104641

/-- `record[A104694(∑[3-a(n-1)])]` -/
def P8466102161128626580.Spec : Prop :=
  ∀ n, P8466102161128626580.a n = A104641 (n + 1)

end A104641

/-!
# A104643: Number of arrangements that can be formed by taking n distinct things out of 25.

The programs for A104643, the canonical program `A104643.P15675090950004982284` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104643 has offset 0).

The definition of A104643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104643.P15675090950004982284

`n!*C(25, n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104643

/-- `n!*C(25, n)` -/
def P15675090950004982284.Spec : Prop :=
  ∀ n, (P15675090950004982284.a n : ℤ) = A104643 n

theorem P15675090950004982284.correct : P15675090950004982284.Spec := by
  intro n
  simp only [A104643]

end A104643

/-!
# A104645: Difference between the previous and the next primes to x, where x is the number obtained from concatenation of the first n primes (A019518).

The programs for A104645, there is no canonical definition to state claims against.
-/

/-! ## A104645.P8695491627717964298

`A074366(n+2)-A276201(n+2)`
-/

namespace A104645.P8695491627717964298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074366 (n + 2) - A276201 (n + 2)

end

end A104645.P8695491627717964298

/-! ## A104645.P13357572021960281035

`A074366(A020725(n+1))%A276201(n+2)`
-/

namespace A104645.P13357572021960281035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074366 (A020725 (n + 1)).toNat) (A276201 (n + 2))

end

end A104645.P13357572021960281035

/-! ## A104645.P9266001793231346112

`A000027(A074366(n+2)%A276201(n+2))`
-/

namespace A104645.P9266001793231346112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A074366 (n + 2)) (A276201 (n + 2))).toNat

end

end A104645.P9266001793231346112

/-!
# A104647: a(n) = a(n-1) mod n + a(n-2) mod n; a(0) = 0, a(1) = 1.

The programs for A104647, the canonical program `A104647.P11954120761466050391` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104647 has offset 0).

The definition of A104647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104647.P11954120761466050391

`a(n-2)%n+a(n-1)%n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104647

/-- `a(n-2)%n+a(n-1)%n` -/
def P11954120761466050391.Spec : Prop :=
  ∀ n, (P11954120761466050391.a n : ℤ) = A104647 n

theorem P11954120761466050391.correct : P11954120761466050391.Spec := by
  intro n
  simp only [A104647]

end A104647

/-! ## A104647.P3670153371518675762

`∑[A105855(abs(1-n))]`
-/

namespace A104647.P3670153371518675762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105855 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104647.P3670153371518675762

namespace A104647

/-- `∑[A105855(abs(1-n))]` -/
def P3670153371518675762.Spec : Prop :=
  ∀ n, P3670153371518675762.a n = A104647 n

end A104647

/-! ## A104647.P5734016248755646217

`A105855(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A104647.P5734016248755646217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A105855 (n - 1) + a (n - 1)

end

end A104647.P5734016248755646217

namespace A104647

/-- `A105855(n-1)+a(n-1)` -/
def P5734016248755646217.Spec : Prop :=
  ∀ n, P5734016248755646217.a n = A104647 n

end A104647

/-! ## A104647.P15539124831851750736

`Δ[A105856(round(sqrt(n²+1))-1)]`
-/

namespace A104647.P15539124831851750736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104647.P15539124831851750736

namespace A104647

/-- `Δ[A105856(round(sqrt(n²+1))-1)]` -/
def P15539124831851750736.Spec : Prop :=
  ∀ n, P15539124831851750736.a n = A104647 n

end A104647

/-! ## A104647.P13186143104665187611

`∑[A105855(n)]-A105855(n)`
-/

namespace A104647.P13186143104665187611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105855 n

end

end A104647.P13186143104665187611

namespace A104647

/-- `∑[A105855(n)]-A105855(n)` -/
def P13186143104665187611.Spec : Prop :=
  ∀ n, P13186143104665187611.a n = A104647 n

end A104647

/-! ## A104647.P4776808984169157899

`A105856(n)-A105856(A028310(n)-1)`
-/

namespace A104647.P4776808984169157899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 n - A105856 (A028310 n - 1).toNat

end

end A104647.P4776808984169157899

namespace A104647

/-- `A105856(n)-A105856(A028310(n)-1)` -/
def P4776808984169157899.Spec : Prop :=
  ∀ n, P4776808984169157899.a n = A104647 n

end A104647

/-! ## A104647.P7712237231904884599

`Δ[A105856(n)]-A105855(n)`
-/

namespace A104647.P7712237231904884599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A105855 n

end

end A104647.P7712237231904884599

namespace A104647

/-- `Δ[A105856(n)]-A105855(n)` -/
def P7712237231904884599.Spec : Prop :=
  ∀ n, P7712237231904884599.a n = A104647 n

end A104647

/-! ## A104647.P8760705555237930820

`A105856(n+1)-(A105856(n)+A105855(n))`
-/

namespace A104647.P8760705555237930820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 (n + 1) - (A105856 n + A105855 n)

end

end A104647.P8760705555237930820

namespace A104647

/-- `A105856(n+1)-(A105856(n)+A105855(n))` -/
def P8760705555237930820.Spec : Prop :=
  ∀ n, P8760705555237930820.a n = A104647 n

end A104647

/-!
# A104648: Cardinality of set of sets of parts of all partitions of n into odd parts.

The programs for A104648, there is no canonical definition to state claims against.
-/

/-! ## A104648.P6168001745513116560

`A096911(n+1)+A280285(3*n)%A280182(n+1)`
-/

namespace A104648.P6168001745513116560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 1) + Int.tmod (A280285 (3 * n)) (A280182 (n + 1))

end

end A104648.P6168001745513116560

/-! ## A104648.P7907515555699392337

`A350029(A035365(n+1))`
-/

namespace A104648.P7907515555699392337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A035365 (n + 1)).toNat

end

end A104648.P7907515555699392337

/-! ## A104648.P8222639676690126404

`ceil(A069916(3*n)/A342497(3*n+2))`
-/

namespace A104648.P8222639676690126404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069916 (3 * n) : ℚ) / (A342497 (3 * n + 2) : ℚ)⌉

end

end A104648.P8222639676690126404

/-! ## A104648.P13484183508907669160

`A350029(or(A052816(n), A347523(n)))`
-/

namespace A104648.P13484183508907669160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (Int.lor (A052816 n) (A347523 n)).toNat

end

end A104648.P13484183508907669160

/-! ## A104648.P7761638712995974697

`A127321(A323812(n+1))`
-/

namespace A104648.P7761638712995974697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A323812 (n + 1)).toNat

end

end A104648.P7761638712995974697

/-!
# A104653: Number of topologically distinct trees with n vertices, including Steiner trees.

The programs for A104653, there is no canonical definition to state claims against.
-/

/-! ## A104653.P18156661267464412108

`Δ[A168183(∏[A228129(n+1)])]`
-/

namespace A104653.P18156661267464412108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228129 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104653.P18156661267464412108

/-! ## A104653.P10250435346313706940

`floor(A000193(A000108(n+4))^n/9)+n`
-/

namespace A104653.P10250435346313706940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000193 (A000108 (n + 4)).toNat ^ n : ℚ) / 9⌋ + (n : ℤ)

end

end A104653.P10250435346313706940

/-!
# A104654: Leading entry in row n of triangle A101513.

The programs for A104654, there is no canonical definition to state claims against.
-/

/-! ## A104654.P5744728405586494109

`A101513(∑[n]+1)`
-/

namespace A104654.P5744728405586494109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104654.P5744728405586494109

/-! ## A104654.P3495804007738992449

`or(char[3], A101513(A000124(n)))`
-/

namespace A104654.P3495804007738992449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A101513 (A000124 n).toNat)

end

end A104654.P3495804007738992449

/-! ## A104654.P11757296783580342619

`∑{d}[A101513(A000124(n)), A000010(#)]`
-/

namespace A104654.P11757296783580342619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A104654.P11757296783580342619

/-! ## A104654.P570069233441644326

`A007318(∑[n])*A101513(A000124(n))`
-/

namespace A104654.P570069233441644326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A101513 (A000124 n).toNat

end

end A104654.P570069233441644326

/-! ## A104654.P10929585056010746218

`A101513(A000124(n))%∑[A000032(n)]`
-/

namespace A104654.P10929585056010746218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101513 (A000124 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104654.P10929585056010746218

/-! ## A104654.P2312430247454865966

`A101513(A000124(n))/A007318(C(3, n))`
-/

namespace A104654.P2312430247454865966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101513 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A104654.P2312430247454865966

/-! ## A104654.P9989827679575078598

`A101513(A000124(n))^(A000040(n+1)%2)`
-/

namespace A104654.P9989827679575078598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101513 (A000124 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A104654.P9989827679575078598

/-! ## A104654.P6535681962440189220

`A101513(A000124(n))+A001222(gcd(n, n+1))`
-/

namespace A104654.P6535681962440189220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (A000124 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A104654.P6535681962440189220

/-!
# A104655: Let c(i) = A018252(i) be the i-th nonprime; then the final entry in row n of A101513 is c(a(n)) (see A104656), for n >= 3.

The programs for A104655, there is no canonical definition to state claims against.
-/

/-! ## A104655.P10136730916616358156

`A305800(A104656(n+3))-1`
-/

namespace A104655.P10136730916616358156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A104656 (n + 3)).toNat - 1

end

end A104655.P10136730916616358156

/-! ## A104655.P12083979611666105767

`A125269(A183073(2*(n+1)))+A001971(2*(n+2))`
-/

namespace A104655.P12083979611666105767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125269 (A183073 (2 * (n + 1))).toNat + A001971 (2 * (n + 2))

end

end A104655.P12083979611666105767

/-! ## A104655.P17069131853297226005

`A297030(A286780(n+3))+A074148(n+1)`
-/

namespace A104655.P17069131853297226005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297030 (A286780 (n + 3)).toNat + A074148 (n + 1)

end

end A104655.P17069131853297226005

/-! ## A104655.P9119198589949004308

`A084265(n+1)+A030341(A305995(3*n+2))`
-/

namespace A104655.P9119198589949004308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 (n + 1) + A030341 (A305995 (3 * n + 2)).toNat

end

end A104655.P9119198589949004308

/-! ## A104655.P6276244032753259387

`A136687(A000720(3*n+4))+eq[1, A105848(n)]+1`
-/

namespace A104655.P6276244032753259387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 (A000720 (3 * n + 4)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A104655.P6276244032753259387

/-!
# A104656: Final entry in row n of triangle in A101513.

The programs for A104656, there is no canonical definition to state claims against.
-/

/-! ## A104656.P1300134247757493055

`A101513(∑[n+1])`
-/

namespace A104656.P1300134247757493055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104656.P1300134247757493055

/-! ## A104656.P6186860785926237036

`and(-1, A101513(A000217(n+1)))`
-/

namespace A104656.P6186860785926237036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A101513 (A000217 (n + 1)).toNat)

end

end A104656.P6186860785926237036

/-! ## A104656.P9885739942513707399

`record[A101513(n+1)/A101508(n)]`
-/

namespace A104656.P9885739942513707399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101513 (n + 1) : ℚ) / (A101508 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104656.P9885739942513707399

/-! ## A104656.P6155848380886202487

`record[gcd(A025581(n), A101513(n+1))]`
-/

namespace A104656.P6155848380886202487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A101513 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104656.P6155848380886202487

/-! ## A104656.P17005232437636427417

`A000027(A101513(∑[Δ[n²]-n]))`
-/

namespace A104656.P17005232437636427417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A101513 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A104656.P17005232437636427417

/-! ## A104656.P7434044275946395044

`lcm((-1)^n, A101513(A161680(n+2)))`
-/

namespace A104656.P7434044275946395044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A101513 (A161680 (n + 2)).toNat)

end

end A104656.P7434044275946395044

/-! ## A104656.P14741155937511509059

`record[A101513(A000217(A154958(n)))]`
-/

namespace A104656.P14741155937511509059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (A000217 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104656.P14741155937511509059

/-! ## A104656.P15577446383324289964

`record[A101513(A000217(A344180(n)))]`
-/

namespace A104656.P15577446383324289964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (A000217 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104656.P15577446383324289964

/-! ## A104656.P17130469276030940648

`∑{d}[A101513(A000217(n+1)), A000010(#)]`
-/

namespace A104656.P17130469276030940648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A104656.P17130469276030940648

/-! ## A104656.P13775801838143903338

`A101513(A000217(n+1))%A000041(n+11)`
-/

namespace A104656.P13775801838143903338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101513 (A000217 (n + 1)).toNat) (A000041 (n + 11))

end

end A104656.P13775801838143903338

/-!
# A104657: Positive integers n such that n^19 + 1 is semiprime (A001358).

The programs for A104657, there is no canonical definition to state claims against.
-/

/-! ## A104657.P11255440469686225016

`p?[A250187(n+1)+1]-1`
-/

namespace A104657.P11255440469686225016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250187 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A104657.P11255440469686225016

/-! ## A104657.P7436773045931687154

`∩[A006093(n+1), A250187(n+1)]`
-/

namespace A104657.P7436773045931687154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104657.P7436773045931687154

/-! ## A104657.P4056852103874290428

`∩[A068499(n+1), A250187(n+1)]`
-/

namespace A104657.P4056852103874290428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104657.P4056852103874290428

/-! ## A104657.P13837408230697323140

`A000010(p?[A250187(n+1)+1])`
-/

namespace A104657.P13837408230697323140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250187 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104657.P13837408230697323140

/-! ## A104657.P17810041596284552198

`∩[A249428(n+1), A250187(n+1)]`
-/

namespace A104657.P17810041596284552198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104657.P17810041596284552198

/-!
# A104658: Number of distinct prime factors of 23 concatenated n times.

The programs for A104658, there is no canonical definition to state claims against.
-/

/-! ## A104658.P10627934839547047413

`A095370(2*(n+1))`
-/

namespace A104658.P10627934839547047413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (2 * (n + 1))

end

end A104658.P10627934839547047413

/-! ## A104658.P3048746426679691748

`A095370(Δ[n²+n])+C(n, n+2)`
-/

namespace A104658.P3048746426679691748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (Nat.choose n (n + 2) : ℤ)

end

end A104658.P3048746426679691748

/-! ## A104658.P18009452403814988217

`A028310(A095370(Δ[n²+n]))`
-/

namespace A104658.P18009452403814988217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A104658.P18009452403814988217

/-! ## A104658.P7005233717832653806

`floor(A095370(A103517(n))+acot(n))`
-/

namespace A104658.P7005233717832653806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095370 (A103517 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A104658.P7005233717832653806

/-! ## A104658.P15013982221471648537

`A119704(n+1)+A095370(n+1)`
-/

namespace A104658.P15013982221471648537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 (n + 1) + A095370 (n + 1)

end

end A104658.P15013982221471648537

/-! ## A104658.P6879957855648276839

`A102347(2*(n+1))-A010892(n)²`
-/

namespace A104658.P6879957855648276839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (2 * (n + 1)) - A010892 n ^ 2

end

end A104658.P6879957855648276839

/-! ## A104658.P7786036779883224733

`A102347(2*(n+1))-A011655(n+1)`
-/

namespace A104658.P7786036779883224733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (2 * (n + 1)) - A011655 (n + 1)

end

end A104658.P7786036779883224733

/-! ## A104658.P16915536826803365026

`A102347(2*(n+1))-A057078(n+2)²`
-/

namespace A104658.P16915536826803365026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (2 * (n + 1)) - A057078 (n + 2) ^ 2

end

end A104658.P16915536826803365026

/-! ## A104658.P7433641708713551302

`A102347(2*(n+1))-A059841(A004523(2*n+1))`
-/

namespace A104658.P7433641708713551302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (2 * (n + 1)) - A059841 (A004523 (2 * n + 1)).toNat

end

end A104658.P7433641708713551302

/-! ## A104658.P16879602317158287376

`A102347(2*(n+1))-A000035(A064989(2*(n+1)))`
-/

namespace A104658.P16879602317158287376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (2 * (n + 1)) - A000035 (A064989 (2 * (n + 1))).toNat

end

end A104658.P16879602317158287376

/-!
# A104659: Number of distinct prime divisors of 44...441 (with n 4s).

The programs for A104659, there is no canonical definition to state claims against.
-/

/-! ## A104659.P158776975915152358

`A193330(or((n+1)*∑{digits}[n, #], A079437(n)))`
-/

namespace A104659.P158776975915152358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (Int.lor (((n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A079437 n)).toNat

end

end A104659.P158776975915152358

/-! ## A104659.P15344158716432526778

`A189008(n+1)+A167968(A325040(n+1))`
-/

namespace A104659.P15344158716432526778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (n + 1) + A167968 (A325040 (n + 1)).toNat

end

end A104659.P15344158716432526778

/-! ## A104659.P523429980146608597

`A123556(A134468(n+4)-A162598(n+1))`
-/

namespace A104659.P523429980146608597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (A134468 (n + 4) - A162598 (n + 1)).toNat

end

end A104659.P523429980146608597

/-! ## A104659.P14586274775998353102

`A060130(A111541(2*(n+1))+A000203(n+1))`
-/

namespace A104659.P14586274775998353102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A111541 (2 * (n + 1)) + A000203 (n + 1)).toNat

end

end A104659.P14586274775998353102

/-!
# A104664: Records in A105822.

The programs for A104664, there is no canonical definition to state claims against.
-/

/-! ## A104664.P322495129816423372

`record[A105822(n+1)]`
-/

namespace A104664.P322495129816423372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104664.P322495129816423372

/-! ## A104664.P8781141694455368729

`A105822(A104665(n+1))`
-/

namespace A104664.P8781141694455368729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (A104665 (n + 1)).toNat

end

end A104664.P8781141694455368729

/-! ## A104664.P12689020364022841930

`record[∏{e}[2^n, A105836(#)]]`
-/

namespace A104664.P12689020364022841930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A105836 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104664.P12689020364022841930

/-! ## A104664.P7134302812081713602

`record[∏{e}[A000079(n), A105822(#)]]`
-/

namespace A104664.P7134302812081713602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A105822 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104664.P7134302812081713602

/-! ## A104664.P1349825885809556473

`∑[gcd(A135290(n+2), A135318(n))]`
-/

namespace A104664.P1349825885809556473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135290 (n + 2)) (A135318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104664.P1349825885809556473

/-!
# A104665: Positions of records in A105822.

The programs for A104665, there is no canonical definition to state claims against.
-/

/-! ## A104665.P12585416496770265225

`A104663(A104664(n+1))`
-/

namespace A104665.P12585416496770265225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104663 (A104664 (n + 1)).toNat

end

end A104665.P12585416496770265225

/-! ## A104665.P18310610498563135078

`A104663(record[A105822(n+1)])`
-/

namespace A104665.P18310610498563135078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104663 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104665.P18310610498563135078

/-! ## A104665.P3449989627076168393

`∑[A034178(char[A355031(n+1)]+2^n)]`
-/

namespace A104665.P3449989627076168393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355031 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104665.P3449989627076168393

/-!
# A104670: a(n) = binomial(n+2, 2)*binomial(n+7, n).

The programs for A104670, the canonical program `A104670.P2725709005556919079` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104670 has offset 0).

The definition of A104670 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)*C(n+7, n)` (program `A104670.P2725709005556919079`, by `A104670.P2725709005556919079.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104670.P2315636693872456520

`C(n+2, 2)*C(n+7, 7)`
-/

namespace A104670.P2315636693872456520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 * Nat.choose (n + 7) 7

end

end A104670.P2315636693872456520

namespace A104670

/-- `C(n+2, 2)*C(n+7, 7)` -/
def P2315636693872456520.Spec : Prop :=
  ∀ n, (P2315636693872456520.a n : ℤ) = A104670 n

end A104670

/-! ## A104670.P2725709005556919079

`C(n+2, 2)*C(n+7, n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104670

/-- `C(n+2, 2)*C(n+7, n)` -/
def P2725709005556919079.Spec : Prop :=
  ∀ n, (P2725709005556919079.a n : ℤ) = A104670 n

theorem P2725709005556919079.correct : P2725709005556919079.Spec := by
  intro n
  simp only [A104670]

end A104670

/-! ## A104670.P18004450851264002417

`C(n+7, 7)*∑[n+1]`
-/

namespace A104670.P18004450851264002417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104670.P18004450851264002417

namespace A104670

/-- `C(n+7, 7)*∑[n+1]` -/
def P18004450851264002417.Spec : Prop :=
  ∀ n, (P18004450851264002417.a n : ℤ) = A104670 n

end A104670

/-! ## A104670.P10633436033522649089

`∑[n+1]*∑[∑[∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A104670.P10633436033522649089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A104670.P10633436033522649089

namespace A104670

/-- `∑[n+1]*∑[∑[∑[∑[∑[∑[n+1]]]]]]` -/
def P10633436033522649089.Spec : Prop :=
  ∀ n, (P10633436033522649089.a n : ℤ) = A104670 n

end A104670

/-! ## A104670.P12216076321091145643

`abs(Δ[A000292(n)]*A000580(n+7))`
-/

namespace A104670.P12216076321091145643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000580 (n + 7)|

end

end A104670.P12216076321091145643

namespace A104670

/-- `abs(Δ[A000292(n)]*A000580(n+7))` -/
def P12216076321091145643.Spec : Prop :=
  ∀ n, P12216076321091145643.a n = A104670 n

end A104670

/-! ## A104670.P9403087110597398386

`-(∑[A001478(n+1)]*A000580(n+7))`
-/

namespace A104670.P9403087110597398386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7))

end

end A104670.P9403087110597398386

namespace A104670

/-- `-(∑[A001478(n+1)]*A000580(n+7))` -/
def P9403087110597398386.Spec : Prop :=
  ∀ n, P9403087110597398386.a n = A104670 n

end A104670

/-! ## A104670.P8426250841582776612

`A000580(n+7)+A000096(n)*A000580(n+7)`
-/

namespace A104670.P8426250841582776612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + A000096 n * A000580 (n + 7)

end

end A104670.P8426250841582776612

namespace A104670

/-- `A000580(n+7)+A000096(n)*A000580(n+7)` -/
def P8426250841582776612.Spec : Prop :=
  ∀ n, P8426250841582776612.a n = A104670 n

end A104670

/-! ## A104670.P7145003402266157870

`A000217(n+1)+A000217(n+1)*A124090(n+7)`
-/

namespace A104670.P7145003402266157870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A124090 (n + 7)

end

end A104670.P7145003402266157870

namespace A104670

/-- `A000217(n+1)+A000217(n+1)*A124090(n+7)` -/
def P7145003402266157870.Spec : Prop :=
  ∀ n, P7145003402266157870.a n = A104670 n

end A104670

/-! ## A104670.P15117786515804334610

`A000580(n+7)*A001788(n+1)/A000079(n)`
-/

namespace A104670.P15117786515804334610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) * A001788 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A104670.P15117786515804334610

namespace A104670

/-- `A000580(n+7)*A001788(n+1)/A000079(n)` -/
def P15117786515804334610.Spec : Prop :=
  ∀ n, P15117786515804334610.a n = (A104670 n : ℚ)

end A104670

/-! ## A104670.P12167734969864836473

`A062190(∑[n+3])`
-/

namespace A104670.P12167734969864836473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104670.P12167734969864836473

namespace A104670

/-- `A062190(∑[n+3])` -/
def P12167734969864836473.Spec : Prop :=
  ∀ n, P12167734969864836473.a n = A104670 n

end A104670

/-!
# A104671: a(n) = binomial(n+3,n)*binomial(n+8,n).

The programs for A104671, the canonical program `A104671.P6447243050929129854` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104671 has offset 0).

The definition of A104671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, n)*C(n+8, n)` (program `A104671.P6447243050929129854`, by `A104671.P6447243050929129854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104671.P1426302853636281423

`C(n+3, 3)*C(n+8, n)`
-/

namespace A104671.P1426302853636281423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * Nat.choose (n + 8) n

end

end A104671.P1426302853636281423

namespace A104671

/-- `C(n+3, 3)*C(n+8, n)` -/
def P1426302853636281423.Spec : Prop :=
  ∀ n, (P1426302853636281423.a n : ℤ) = A104671 n

end A104671

/-! ## A104671.P6447243050929129854

`C(n+3, n)*C(n+8, n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104671

/-- `C(n+3, n)*C(n+8, n)` -/
def P6447243050929129854.Spec : Prop :=
  ∀ n, (P6447243050929129854.a n : ℤ) = A104671 n

theorem P6447243050929129854.correct : P6447243050929129854.Spec := by
  intro n
  simp only [A104671]

end A104671

/-! ## A104671.P6638419942546247156

`∑[n+1]*A053310(n)`
-/

namespace A104671.P6638419942546247156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A053310 n

end

end A104671.P6638419942546247156

namespace A104671

/-- `∑[n+1]*A053310(n)` -/
def P6638419942546247156.Spec : Prop :=
  ∀ n, P6638419942546247156.a n = A104671 n

end A104671

/-! ## A104671.P525239534439783937

`∑[∑[n+1]]*A000581(n+8)`
-/

namespace A104671.P525239534439783937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000581 (n + 8)

end

end A104671.P525239534439783937

namespace A104671

/-- `∑[∑[n+1]]*A000581(n+8)` -/
def P525239534439783937.Spec : Prop :=
  ∀ n, P525239534439783937.a n = A104671 n

end A104671

/-! ## A104671.P17985278274495080408

`∑[∑[n+1]]*∑[A000580(n+7)]`
-/

namespace A104671.P17985278274495080408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A104671.P17985278274495080408

namespace A104671

/-- `∑[∑[n+1]]*∑[A000580(n+7)]` -/
def P17985278274495080408.Spec : Prop :=
  ∀ n, P17985278274495080408.a n = A104671 n

end A104671

/-! ## A104671.P11482174085950258666

`(A166813(n+1)-A166812(n+1))*A000292(n+1)`
-/

namespace A104671.P11482174085950258666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166813 (n + 1) - A166812 (n + 1)) * A000292 (n + 1)

end

end A104671.P11482174085950258666

namespace A104671

/-- `(A166813(n+1)-A166812(n+1))*A000292(n+1)` -/
def P11482174085950258666.Spec : Prop :=
  ∀ n, P11482174085950258666.a n = A104671 n

end A104671

/-! ## A104671.P8906673660751701676

`∑[∑[A299338(2*n)]]*A000292(n+1)`
-/

namespace A104671.P8906673660751701676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 1)

end

end A104671.P8906673660751701676

namespace A104671

/-- `∑[∑[A299338(2*n)]]*A000292(n+1)` -/
def P8906673660751701676.Spec : Prop :=
  ∀ n, P8906673660751701676.a n = A104671 n

end A104671

/-! ## A104671.P5905337802386629186

`A062190(A055999(n+1)+2)`
-/

namespace A104671.P5905337802386629186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A055999 (n + 1) + 2).toNat

end

end A104671.P5905337802386629186

namespace A104671

/-- `A062190(A055999(n+1)+2)` -/
def P5905337802386629186.Spec : Prop :=
  ∀ n, P5905337802386629186.a n = A104671 n

end A104671

/-! ## A104671.P13412190741679449567

`A062190(A055998(n+2)-1)`
-/

namespace A104671.P13412190741679449567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A055998 (n + 2) - 1).toNat

end

end A104671.P13412190741679449567

namespace A104671

/-- `A062190(A055998(n+2)-1)` -/
def P13412190741679449567.Spec : Prop :=
  ∀ n, P13412190741679449567.a n = A104671 n

end A104671

/-! ## A104671.P94457362652096687

`A062190(A000096(n+2)+n+1)`
-/

namespace A104671.P94457362652096687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A104671.P94457362652096687

namespace A104671

/-- `A062190(A000096(n+2)+n+1)` -/
def P94457362652096687.Spec : Prop :=
  ∀ n, P94457362652096687.a n = A104671 n

end A104671

/-! ## A104671.P7305303132181416267

`A062190(A034856(n+2)+n+2)`
-/

namespace A104671.P7305303132181416267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A034856 (n + 2) + (n + 2 : ℤ)).toNat

end

end A104671.P7305303132181416267

namespace A104671

/-- `A062190(A034856(n+2)+n+2)` -/
def P7305303132181416267.Spec : Prop :=
  ∀ n, P7305303132181416267.a n = A104671 n

end A104671

/-! ## A104671.P10914900507141119668

`A007318(A000096(n+7)+9)*∑[∑[n+1]]`
-/

namespace A104671.P10914900507141119668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 7) + 9).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A104671.P10914900507141119668

namespace A104671

/-- `A007318(A000096(n+7)+9)*∑[∑[n+1]]` -/
def P10914900507141119668.Spec : Prop :=
  ∀ n, P10914900507141119668.a n = A104671 n

end A104671

/-! ## A104671.P12451278703955236740

`A007318(A000217(n+9)-9)*∑[∑[n+1]]`
-/

namespace A104671.P12451278703955236740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 9) - 9).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A104671.P12451278703955236740

namespace A104671

/-- `A007318(A000217(n+9)-9)*∑[∑[n+1]]` -/
def P12451278703955236740.Spec : Prop :=
  ∀ n, P12451278703955236740.a n = A104671 n

end A104671

/-!
# A104672: a(n) = binomial(n+4,n)*binomial(n+9,n).

The programs for A104672, the canonical program `A104672.P15191051411318922584` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104672 has offset 0).

The definition of A104672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, n)*C(n+9, n)` (program `A104672.P15191051411318922584`, by `A104672.P15191051411318922584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104672.P10638517805785805303

`C(n+4, 4)*C(n+9, n)`
-/

namespace A104672.P10638517805785805303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 * Nat.choose (n + 9) n

end

end A104672.P10638517805785805303

namespace A104672

/-- `C(n+4, 4)*C(n+9, n)` -/
def P10638517805785805303.Spec : Prop :=
  ∀ n, (P10638517805785805303.a n : ℤ) = A104672 n

end A104672

/-! ## A104672.P15191051411318922584

`C(n+4, n)*C(n+9, n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104672

/-- `C(n+4, n)*C(n+9, n)` -/
def P15191051411318922584.Spec : Prop :=
  ∀ n, (P15191051411318922584.a n : ℤ) = A104672 n

theorem P15191051411318922584.correct : P15191051411318922584.Spec := by
  intro n
  simp only [A104672]

end A104672

/-! ## A104672.P6289177781200101372

`∑[∑[∑[n+1]]]*A000582(n+9)`
-/

namespace A104672.P6289177781200101372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000582 (n + 9)

end

end A104672.P6289177781200101372

namespace A104672

/-- `∑[∑[∑[n+1]]]*A000582(n+9)` -/
def P6289177781200101372.Spec : Prop :=
  ∀ n, P6289177781200101372.a n = A104672 n

end A104672

/-! ## A104672.P5473512497301653205

`5/A020710(n)*A105252(n)`
-/

namespace A104672.P5473512497301653205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (A020710 n : ℚ) * (A105252 n : ℚ)

end

end A104672.P5473512497301653205

namespace A104672

/-- `5/A020710(n)*A105252(n)` -/
def P5473512497301653205.Spec : Prop :=
  ∀ n, P5473512497301653205.a n = (A104672 n : ℚ)

end A104672

/-! ## A104672.P12622420174955282642

`A000582(n+9)*A027626(A055998(n))`
-/

namespace A104672.P12622420174955282642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A027626 (A055998 n).toNat

end

end A104672.P12622420174955282642

namespace A104672

/-- `A000582(n+9)*A027626(A055998(n))` -/
def P12622420174955282642.Spec : Prop :=
  ∀ n, P12622420174955282642.a n = A104672 n

end A104672

/-! ## A104672.P10372915925424076728

`A001720(n+4)/A000142(n+1)*A056114(n)`
-/

namespace A104672.P10372915925424076728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001720 (n + 4) : ℚ) / (A000142 (n + 1) : ℚ) * (A056114 n : ℚ)

end

end A104672.P10372915925424076728

namespace A104672

/-- `A001720(n+4)/A000142(n+1)*A056114(n)` -/
def P10372915925424076728.Spec : Prop :=
  ∀ n, P10372915925424076728.a n = (A104672 n : ℚ)

end A104672

/-! ## A104672.P6638479967219270122

`A062151(n)/n!`
-/

namespace A104672.P6638479967219270122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062151 n : ℚ) / (Nat.factorial n : ℚ)

end

end A104672.P6638479967219270122

namespace A104672

/-- `A062151(n)/n!` -/
def P6638479967219270122.Spec : Prop :=
  ∀ n, P6638479967219270122.a n = (A104672 n : ℚ)

end A104672

/-!
# A104673: a(n) = binomial(n+5, n)*binomial(n+10, n).

The programs for A104673, the canonical program `A104673.P7718802253225284828` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104673 has offset 0).

The definition of A104673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, n)*C(n+10, n)` (program `A104673.P7718802253225284828`, by `A104673.P7718802253225284828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104673.P1410057729990621974

`C(n+5, 5)*C(n+10, n)`
-/

namespace A104673.P1410057729990621974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 5 * Nat.choose (n + 10) n

end

end A104673.P1410057729990621974

namespace A104673

/-- `C(n+5, 5)*C(n+10, n)` -/
def P1410057729990621974.Spec : Prop :=
  ∀ n, (P1410057729990621974.a n : ℤ) = A104673 n

end A104673

/-! ## A104673.P7718802253225284828

`C(n+5, n)*C(n+10, n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104673

/-- `C(n+5, n)*C(n+10, n)` -/
def P7718802253225284828.Spec : Prop :=
  ∀ n, (P7718802253225284828.a n : ℤ) = A104673 n

theorem P7718802253225284828.correct : P7718802253225284828.Spec := by
  intro n
  simp only [A104673]

end A104673

/-! ## A104673.P7933780883210530011

`(n+10)*A105252(n)/10`
-/

namespace A104673.P7933780883210530011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℚ) * ((A105252 n : ℚ) / 10)

end

end A104673.P7933780883210530011

namespace A104673

/-- `(n+10)*A105252(n)/10` -/
def P7933780883210530011.Spec : Prop :=
  ∀ n, P7933780883210530011.a n = (A104673 n : ℚ)

end A104673

/-! ## A104673.P222287622841635634

`(A051745(n+1)-(n+1))*∑[A000582(n+9)]`
-/

namespace A104673.P222287622841635634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051745 (n + 1) - (n + 1 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104673.P222287622841635634

namespace A104673

/-- `(A051745(n+1)-(n+1))*∑[A000582(n+9)]` -/
def P222287622841635634.Spec : Prop :=
  ∀ n, P222287622841635634.a n = A104673 n

end A104673

/-! ## A104673.P763521475981809374

`A000389(n+5)*A001287(n)`
-/

namespace A104673.P763521475981809374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A001287 (n + 10)

end

end A104673.P763521475981809374

namespace A104673

/-- `A000389(n+5)*A001287(n)` -/
def P763521475981809374.Spec : Prop :=
  ∀ n, P763521475981809374.a n = A104673 n

end A104673

/-! ## A104673.P10195785504217374268

`∑[A000582(n+9)]*A000389(n+5)`
-/

namespace A104673.P10195785504217374268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000389 (n + 5)

end

end A104673.P10195785504217374268

namespace A104673

/-- `∑[A000582(n+9)]*A000389(n+5)` -/
def P10195785504217374268.Spec : Prop :=
  ∀ n, P10195785504217374268.a n = A104673 n

end A104673

/-! ## A104673.P14832232496390375069

`∑[A000582(n+9)]*A178822(∑[n])`
-/

namespace A104673.P14832232496390375069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A178822 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A104673.P14832232496390375069

namespace A104673

/-- `∑[A000582(n+9)]*A178822(∑[n])` -/
def P14832232496390375069.Spec : Prop :=
  ∀ n, P14832232496390375069.a n = A104673 n

end A104673

/-! ## A104673.P5190371681882403681

`A062152(n)/n!`
-/

namespace A104673.P5190371681882403681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062152 n : ℚ) / (Nat.factorial n : ℚ)

end

end A104673.P5190371681882403681

namespace A104673

/-- `A062152(n)/n!` -/
def P5190371681882403681.Spec : Prop :=
  ∀ n, P5190371681882403681.a n = (A104673 n : ℚ)

end A104673

/-! ## A104673.P5990154797957221515

`A001725(n+5)/A000142(n)*A051431(n)/n!`
-/

namespace A104673.P5990154797957221515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A051431 n : ℚ) / (Nat.factorial n : ℚ)

end

end A104673.P5990154797957221515

namespace A104673

/-- `A001725(n+5)/A000142(n)*A051431(n)/n!` -/
def P5990154797957221515.Spec : Prop :=
  ∀ n, P5990154797957221515.a n = (A104673 n : ℚ)

end A104673

/-!
# A104674: a(n) = binomial(n+6, 6) * binomial(n+11, n).

The programs for A104674, the canonical program `A104674.P10439437643810004853` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104674 has offset 0).

The definition of A104674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*C(n+11, n)` (program `A104674.P10439437643810004853`, by `A104674.P10439437643810004853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104674.P10439437643810004853

`C(n+6, 6)*C(n+11, n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104674

/-- `C(n+6, 6)*C(n+11, n)` -/
def P10439437643810004853.Spec : Prop :=
  ∀ n, (P10439437643810004853.a n : ℤ) = A104674 n

theorem P10439437643810004853.correct : P10439437643810004853.Spec := by
  intro n
  simp only [A104674]

end A104674

/-! ## A104674.P11394683327931263403

`∑[∑[A000332(n+4)]]*A001288(n)`
-/

namespace A104674.P11394683327931263403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001288 (n + 11)

end

end A104674.P11394683327931263403

namespace A104674

/-- `∑[∑[A000332(n+4)]]*A001288(n)` -/
def P11394683327931263403.Spec : Prop :=
  ∀ n, P11394683327931263403.a n = A104674 n

end A104674

/-! ## A104674.P16114641324868600654

`∑[A000389(n+5)]*A001288(n)`
-/

namespace A104674.P16114641324868600654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001288 (n + 11)

end

end A104674.P16114641324868600654

namespace A104674

/-- `∑[A000389(n+5)]*A001288(n)` -/
def P16114641324868600654.Spec : Prop :=
  ∀ n, P16114641324868600654.a n = A104674 n

end A104674

/-! ## A104674.P13676100348580667535

`A000579(n+6)*A001288(n)`
-/

namespace A104674.P13676100348580667535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A001288 (n + 11)

end

end A104674.P13676100348580667535

namespace A104674

/-- `A000579(n+6)*A001288(n)` -/
def P13676100348580667535.Spec : Prop :=
  ∀ n, P13676100348580667535.a n = A104674 n

end A104674

/-! ## A104674.P4370059772677974604

`∑[A001287(n)]*A000579(n+6)`
-/

namespace A104674.P4370059772677974604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000579 (n + 6)

end

end A104674.P4370059772677974604

namespace A104674

/-- `∑[A001287(n)]*A000579(n+6)` -/
def P4370059772677974604.Spec : Prop :=
  ∀ n, P4370059772677974604.a n = A104674 n

end A104674

/-! ## A104674.P7006891111387734430

`∑[∑[A000582(n+9)]]*A000579(n+6)`
-/

namespace A104674.P7006891111387734430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000579 (n + 6)

end

end A104674.P7006891111387734430

namespace A104674

/-- `∑[∑[A000582(n+9)]]*A000579(n+6)` -/
def P7006891111387734430.Spec : Prop :=
  ∀ n, P7006891111387734430.a n = A104674 n

end A104674

/-! ## A104674.P6643717922391984917

`A001288(n)*A299338(2*n)`
-/

namespace A104674.P6643717922391984917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11) * A299338 (2 * n)

end

end A104674.P6643717922391984917

namespace A104674

/-- `A001288(n)*A299338(2*n)` -/
def P6643717922391984917.Spec : Prop :=
  ∀ n, P6643717922391984917.a n = A104674 n

end A104674

/-!
# A104675: a(n) = C(n+1,n) * C(n+6,1).

The programs for A104675, the canonical program `A104675.P5088918627986565140` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104675 has offset 0).

The definition of A104675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, n)*C(n+6, 1)` (program `A104675.P5088918627986565140`, by `A104675.P5088918627986565140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104675.P16168541216740687531

`(n+1)*(n+6)`
-/

namespace A104675.P16168541216740687531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 6)

end

end A104675.P16168541216740687531

namespace A104675

/-- `(n+1)*(n+6)` -/
def P16168541216740687531.Spec : Prop :=
  ∀ n, (P16168541216740687531.a n : ℤ) = A104675 n

theorem P16168541216740687531.correct : P16168541216740687531.Spec := by
  intro n
  simp only [A104675, Nat.add_sub_cancel, A104675.P16168541216740687531.a, A104675.P5088918627986565140.a, SequenceMachineLib.memo_apply]
  try simp

end A104675

/-! ## A104675.P5088918627986565140

`C(n+1, n)*C(n+6, 1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104675

/-- `C(n+1, n)*C(n+6, 1)` -/
def P5088918627986565140.Spec : Prop :=
  ∀ n, (P5088918627986565140.a n : ℤ) = A104675 n

theorem P5088918627986565140.correct : P5088918627986565140.Spec := by
  intro n
  simp only [A104675]

end A104675

/-! ## A104675.P11861095170574539525

`A028557(n+1)`
-/

namespace A104675.P11861095170574539525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (n + 1)

end

end A104675.P11861095170574539525

namespace A104675

/-- `A028557(n+1)` -/
def P11861095170574539525.Spec : Prop :=
  ∀ n, P11861095170574539525.a n = A104675 n

end A104675

/-! ## A104675.P15992673542952088786

`record[(n-1)*(n-6)]`
-/

namespace A104675.P15992673542952088786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104675.P15992673542952088786

namespace A104675

/-- `record[(n-1)*(n-6)]` -/
def P15992673542952088786.Spec : Prop :=
  ∀ n, P15992673542952088786.a n = A104675 n

end A104675

/-! ## A104675.P3652755725058931166

`floor(2/acot(∑[n+3]))`
-/

namespace A104675.P3652755725058931166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A104675.P3652755725058931166

namespace A104675

/-- `floor(2/acot(∑[n+3]))` -/
def P3652755725058931166.Spec : Prop :=
  ∀ n, P3652755725058931166.a n = A104675 n

end A104675

/-! ## A104675.P8254346749708932210

`round(2/acot(∑[n+3]))`
-/

namespace A104675.P8254346749708932210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A104675.P8254346749708932210

namespace A104675

/-- `round(2/acot(∑[n+3]))` -/
def P8254346749708932210.Spec : Prop :=
  ∀ n, P8254346749708932210.a n = A104675 n

end A104675

/-! ## A104675.P18176592580577663575

`2/tan(acot(∑[n+3]))`
-/

namespace A104675.P18176592580577663575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A104675.P18176592580577663575

namespace A104675

/-- `2/tan(acot(∑[n+3]))` -/
def P18176592580577663575.Spec : Prop :=
  ∀ n, P18176592580577663575.a n = (A104675 n : ℝ)

end A104675

/-! ## A104675.P6119424325181288967

`∑[n+3]/cot(atan(2))`
-/

namespace A104675.P6119424325181288967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A104675.P6119424325181288967

namespace A104675

/-- `∑[n+3]/cot(atan(2))` -/
def P6119424325181288967.Spec : Prop :=
  ∀ n, P6119424325181288967.a n = (A104675 n : ℝ)

end A104675

/-! ## A104675.P9545709968013804057

`∑[n+3]/sinh(log(ϕ))`
-/

namespace A104675.P9545709968013804057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.sinh (Real.log Real.goldenRatio)

end

end A104675.P9545709968013804057

namespace A104675

/-- `∑[n+3]/sinh(log(ϕ))` -/
def P9545709968013804057.Spec : Prop :=
  ∀ n, P9545709968013804057.a n = (A104675 n : ℝ)

end A104675

/-! ## A104675.P12168875499057114373

`ogf((6-4x)/(1-3x+3x^2-x^3))`
-/

namespace A104675.P12168875499057114373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -4] [1, -3, 3, -1] n

end

end A104675.P12168875499057114373

namespace A104675

/-- `ogf((6-4x)/(1-3x+3x^2-x^3))` -/
def P12168875499057114373.Spec : Prop :=
  ∀ n, P12168875499057114373.a n = A104675 n

end A104675

/-! ## A104675.P8903627301295436285

`lcm(n+3, n+4)-6`
-/

namespace A104675.P8903627301295436285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (n + 4) : ℤ) - 6

end

end A104675.P8903627301295436285

namespace A104675

/-- `lcm(n+3, n+4)-6` -/
def P8903627301295436285.Spec : Prop :=
  ∀ n, P8903627301295436285.a n = A104675 n

end A104675

/-! ## A104675.P6235875307593680231

`abs(∑[a(n-1)+2])` with `a(0)=6`
-/

namespace A104675.P6235875307593680231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104675.P6235875307593680231

namespace A104675

/-- `abs(∑[a(n-1)+2])` -/
def P6235875307593680231.Spec : Prop :=
  ∀ n, (P6235875307593680231.a n : ℤ) = A104675 n

end A104675

/-! ## A104675.P9127667534929790888

`floor(∑[a(n-1)+2])` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A104675.P9127667534929790888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104675.P9127667534929790888

namespace A104675

/-- `floor(∑[a(n-1)+2])` -/
def P9127667534929790888.Spec : Prop :=
  ∀ n, (P9127667534929790888.a n : ℤ) = A104675 n

end A104675

/-! ## A104675.P7992166127502003191

`ceil(∑[a(n-1)+2])` with `a(0)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A104675.P7992166127502003191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104675.P7992166127502003191

namespace A104675

/-- `ceil(∑[a(n-1)+2])` -/
def P7992166127502003191.Spec : Prop :=
  ∀ n, (P7992166127502003191.a n : ℤ) = A104675 n

end A104675

/-! ## A104675.P882909555168442439

`round(∑[a(n-1)+2])` with `a(0)=6`

`round` is left out, it is the identity on integers.
-/

namespace A104675.P882909555168442439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104675.P882909555168442439

namespace A104675

/-- `round(∑[a(n-1)+2])` -/
def P882909555168442439.Spec : Prop :=
  ∀ n, (P882909555168442439.a n : ℤ) = A104675 n

end A104675

/-! ## A104675.P8902961191995976074

`record[(3-n)²-3]+n`
-/

namespace A104675.P8902961191995976074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A104675.P8902961191995976074

namespace A104675

/-- `record[(3-n)²-3]+n` -/
def P8902961191995976074.Spec : Prop :=
  ∀ n, P8902961191995976074.a n = A104675 n

end A104675

/-! ## A104675.P6266702185695563644

`n-(3-record[(n-3)²])`
-/

namespace A104675.P6266702185695563644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (3 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A104675.P6266702185695563644

namespace A104675

/-- `n-(3-record[(n-3)²])` -/
def P6266702185695563644.Spec : Prop :=
  ∀ n, P6266702185695563644.a n = A104675 n

end A104675

/-! ## A104675.P9799710677676983203

`∑[a(n-1)+4]/2` with `a(0)=12`
-/

namespace A104675.P9799710677676983203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A104675.P9799710677676983203

namespace A104675

/-- `∑[a(n-1)+4]/2` -/
def P9799710677676983203.Spec : Prop :=
  ∀ n, P9799710677676983203.a n = (A104675 n : ℚ)

end A104675

/-! ## A104675.P5370323532027658166

`xor(1, (n+3)²-2+n)`
-/

namespace A104675.P5370323532027658166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n + 3) ^ 2 : ℤ) - 2 + (n : ℤ))

end

end A104675.P5370323532027658166

namespace A104675

/-- `xor(1, (n+3)²-2+n)` -/
def P5370323532027658166.Spec : Prop :=
  ∀ n, P5370323532027658166.a n = A104675 n

end A104675

/-!
# A104676: a(n) = binomial(n+2,2) * binomial(n+7,2).

The programs for A104676, the canonical program `A104676.P4526428598802646888` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104676 has offset 0).

The definition of A104676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)*C(n+7, 2)` (program `A104676.P4526428598802646888`, by `A104676.P4526428598802646888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104676.P4526428598802646888

`C(n+2, 2)*C(n+7, 2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104676

/-- `C(n+2, 2)*C(n+7, 2)` -/
def P4526428598802646888.Spec : Prop :=
  ∀ n, (P4526428598802646888.a n : ℤ) = A104676 n

theorem P4526428598802646888.correct : P4526428598802646888.Spec := by
  intro n
  simp only [A104676]

end A104676

/-! ## A104676.P10552013924372188535

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=21, a(1)=84, a(2)=216, a(3)=450, a(4)=825`
-/

namespace A104676.P10552013924372188535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 84, 216, 450, 825] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A104676.P10552013924372188535

namespace A104676

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10552013924372188535.Spec : Prop :=
  ∀ n, P10552013924372188535.a n = A104676 n

end A104676

/-! ## A104676.P6909518331946589302

`A000217(n+1)*A000217(n+6)`
-/

namespace A104676.P6909518331946589302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000217 (n + 6)

end

end A104676.P6909518331946589302

namespace A104676

/-- `A000217(n+1)*A000217(n+6)` -/
def P6909518331946589302.Spec : Prop :=
  ∀ n, P6909518331946589302.a n = A104676 n

end A104676

/-! ## A104676.P17296413332597632721

`C(n+7, 2)*∑[n+1]`
-/

namespace A104676.P17296413332597632721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104676.P17296413332597632721

namespace A104676

/-- `C(n+7, 2)*∑[n+1]` -/
def P17296413332597632721.Spec : Prop :=
  ∀ n, (P17296413332597632721.a n : ℤ) = A104676 n

end A104676

/-! ## A104676.P17972131324710255583

`∑[∑[3*((n+3)²-2)]]`
-/

namespace A104676.P17972131324710255583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n + 3) ^ 2 : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104676.P17972131324710255583

namespace A104676

/-- `∑[∑[3*((n+3)²-2)]]` -/
def P17972131324710255583.Spec : Prop :=
  ∀ n, P17972131324710255583.a n = A104676 n

end A104676

/-! ## A104676.P14965620199575202695

`(∑[xor(n+2, -1)]-(n+4))*∑[xor(n+2, -1)]`
-/

namespace A104676.P14965620199575202695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (-1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n + 4 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A104676.P14965620199575202695

namespace A104676

/-- `(∑[xor(n+2, -1)]-(n+4))*∑[xor(n+2, -1)]` -/
def P14965620199575202695.Spec : Prop :=
  ∀ n, P14965620199575202695.a n = A104676 n

end A104676

/-! ## A104676.P8587216138180819050

`3*A212347(n+5)/2`
-/

namespace A104676.P8587216138180819050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A212347 (n + 5) : ℚ) / 2)

end

end A104676.P8587216138180819050

namespace A104676

/-- `3*A212347(n+5)/2` -/
def P8587216138180819050.Spec : Prop :=
  ∀ n, P8587216138180819050.a n = (A104676 n : ℚ)

end A104676

/-! ## A104676.P4928111236398194969

`3*(A224000(n+1)-(n+2))`
-/

namespace A104676.P4928111236398194969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A224000 (n + 1) - (n + 2 : ℤ))

end

end A104676.P4928111236398194969

namespace A104676

/-- `3*(A224000(n+1)-(n+2))` -/
def P4928111236398194969.Spec : Prop :=
  ∀ n, P4928111236398194969.a n = A104676 n

end A104676

/-! ## A104676.P1142332287913777222

`(n+1)*A104473(n+1)/(n+3)`
-/

namespace A104676.P1142332287913777222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A104473 (n + 1) : ℚ) / (n + 3 : ℚ))

end

end A104676.P1142332287913777222

namespace A104676

/-- `(n+1)*A104473(n+1)/(n+3)` -/
def P1142332287913777222.Spec : Prop :=
  ∀ n, P1142332287913777222.a n = (A104676 n : ℚ)

end A104676

/-! ## A104676.P15880764150258818073

`(A155212(n)+5)*A027379(n+1)`
-/

namespace A104676.P15880764150258818073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155212 n + 5) * A027379 (n + 1)

end

end A104676.P15880764150258818073

namespace A104676

/-- `(A155212(n)+5)*A027379(n+1)` -/
def P15880764150258818073.Spec : Prop :=
  ∀ n, P15880764150258818073.a n = A104676 n

end A104676

/-! ## A104676.P5171388437868157615

`(A155212(n)+5)*A055998(n+1)`
-/

namespace A104676.P5171388437868157615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155212 n + 5) * A055998 (n + 1)

end

end A104676.P5171388437868157615

namespace A104676

/-- `(A155212(n)+5)*A055998(n+1)` -/
def P5171388437868157615.Spec : Prop :=
  ∀ n, P5171388437868157615.a n = A104676 n

end A104676

/-! ## A104676.P8387597633970296397

`(A052905(n)+2)*Δ[A034857(n+1)]`
-/

namespace A104676.P8387597633970296397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052905 n + 2) * (f1 (n + 1) - f1 n)

end

end A104676.P8387597633970296397

namespace A104676

/-- `(A052905(n)+2)*Δ[A034857(n+1)]` -/
def P8387597633970296397.Spec : Prop :=
  ∀ n, P8387597633970296397.a n = A104676 n

end A104676

/-! ## A104676.P10187434613927035088

`(A052905(n)+2)*Δ[A006416(n+2)]`
-/

namespace A104676.P10187434613927035088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052905 n + 2) * (f1 (n + 1) - f1 n)

end

end A104676.P10187434613927035088

namespace A104676

/-- `(A052905(n)+2)*Δ[A006416(n+2)]` -/
def P10187434613927035088.Spec : Prop :=
  ∀ n, P10187434613927035088.a n = A104676 n

end A104676

/-! ## A104676.P7623520883248517672

`(A052905(n+1)+2)*A027379(n+1)`
-/

namespace A104676.P7623520883248517672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052905 (n + 1) + 2) * A027379 (n + 1)

end

end A104676.P7623520883248517672

namespace A104676

/-- `(A052905(n+1)+2)*A027379(n+1)` -/
def P7623520883248517672.Spec : Prop :=
  ∀ n, P7623520883248517672.a n = A104676 n

end A104676

/-! ## A104676.P1888591822787017954

`(A052905(n+1)+2)*A055998(n+1)`
-/

namespace A104676.P1888591822787017954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052905 (n + 1) + 2) * A055998 (n + 1)

end

end A104676.P1888591822787017954

namespace A104676

/-- `(A052905(n+1)+2)*A055998(n+1)` -/
def P1888591822787017954.Spec : Prop :=
  ∀ n, P1888591822787017954.a n = A104676 n

end A104676

/-! ## A104676.P4913354154244452116

`A027379(n+1)/2*A104675(n+1)`
-/

namespace A104676.P4913354154244452116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027379 (n + 1) : ℚ) / 2 * (A104675 (n + 1) : ℚ)

end

end A104676.P4913354154244452116

namespace A104676

/-- `A027379(n+1)/2*A104675(n+1)` -/
def P4913354154244452116.Spec : Prop :=
  ∀ n, P4913354154244452116.a n = (A104676 n : ℚ)

end A104676

/-! ## A104676.P6159026105845226620

`A055998(n+1)/2*A104675(n+1)`
-/

namespace A104676.P6159026105845226620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055998 (n + 1) : ℚ) / 2 * (A104675 (n + 1) : ℚ)

end

end A104676.P6159026105845226620

namespace A104676

/-- `A055998(n+1)/2*A104675(n+1)` -/
def P6159026105845226620.Spec : Prop :=
  ∀ n, P6159026105845226620.a n = (A104676 n : ℚ)

end A104676

/-! ## A104676.P5061926330683128695

`A034856(n+1)+A034856(n+2)*A052905(n+1)`
-/

namespace A104676.P5061926330683128695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + A034856 (n + 2) * A052905 (n + 1)

end

end A104676.P5061926330683128695

namespace A104676

/-- `A034856(n+1)+A034856(n+2)*A052905(n+1)` -/
def P5061926330683128695.Spec : Prop :=
  ∀ n, P5061926330683128695.a n = A104676 n

end A104676

/-! ## A104676.P2689474037637246055

`∑[n+3]*A027379(n+2)`
-/

namespace A104676.P2689474037637246055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A027379 (n + 2)

end

end A104676.P2689474037637246055

namespace A104676

/-- `∑[n+3]*A027379(n+2)` -/
def P2689474037637246055.Spec : Prop :=
  ∀ n, P2689474037637246055.a n = A104676 n

end A104676

/-! ## A104676.P8765824259374802844

`∑[n+3]*A055998(n+2)`
-/

namespace A104676.P8765824259374802844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A055998 (n + 2)

end

end A104676.P8765824259374802844

namespace A104676

/-- `∑[n+3]*A055998(n+2)` -/
def P8765824259374802844.Spec : Prop :=
  ∀ n, P8765824259374802844.a n = A104676 n

end A104676

/-!
# A104677: a(n) = binomial(n+3,3)*binomial(n+8,3).

The programs for A104677, the canonical program `A104677.P121708351852665836` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104677 has offset 0).

The definition of A104677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*C(n+8, 3)` (program `A104677.P121708351852665836`, by `A104677.P121708351852665836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104677.P121708351852665836

`C(n+3, 3)*C(n+8, 3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104677

/-- `C(n+3, 3)*C(n+8, 3)` -/
def P121708351852665836.Spec : Prop :=
  ∀ n, (P121708351852665836.a n : ℤ) = A104677 n

theorem P121708351852665836.correct : P121708351852665836.Spec := by
  intro n
  simp only [A104677]

end A104677

/-! ## A104677.P16197625250428239542

`4*A033276(n+6)`
-/

namespace A104677.P16197625250428239542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033276 (n + 6)

end

end A104677.P16197625250428239542

namespace A104677

/-- `4*A033276(n+6)` -/
def P16197625250428239542.Spec : Prop :=
  ∀ n, P16197625250428239542.a n = A104677 n

end A104677

/-! ## A104677.P9466062269045366248

`A000292(n+1)*A000292(n+6)`
-/

namespace A104677.P9466062269045366248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000292 (n + 6)

end

end A104677.P9466062269045366248

namespace A104677

/-- `A000292(n+1)*A000292(n+6)` -/
def P9466062269045366248.Spec : Prop :=
  ∀ n, P9466062269045366248.a n = A104677 n

end A104677

/-! ## A104677.P14199214437753433513

`∑[(n+4)*A212347(n+5)]`
-/

namespace A104677.P14199214437753433513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A212347 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104677.P14199214437753433513

namespace A104677

/-- `∑[(n+4)*A212347(n+5)]` -/
def P14199214437753433513.Spec : Prop :=
  ∀ n, P14199214437753433513.a n = A104677 n

end A104677

/-! ## A104677.P7638882064645420584

`A104474(n+1)/A105939(n+1)*A104474(n)`
-/

namespace A104677.P7638882064645420584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104474 (n + 1) : ℚ) / (A105939 (n + 1) : ℚ) * (A104474 n : ℚ)

end

end A104677.P7638882064645420584

namespace A104677

/-- `A104474(n+1)/A105939(n+1)*A104474(n)` -/
def P7638882064645420584.Spec : Prop :=
  ∀ n, P7638882064645420584.a n = (A104677 n : ℚ)

end A104677

/-! ## A104677.P12205224999726560019

`Δ[A005582(n)]*A005586(n+3)`
-/

namespace A104677.P12205224999726560019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005586 (n + 3)

end

end A104677.P12205224999726560019

namespace A104677

/-- `Δ[A005582(n)]*A005586(n+3)` -/
def P12205224999726560019.Spec : Prop :=
  ∀ n, P12205224999726560019.a n = A104677 n

end A104677

/-! ## A104677.P12294909228479895151

`A005581(n+2)*A005586(n+3)`
-/

namespace A104677.P12294909228479895151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 2) * A005586 (n + 3)

end

end A104677.P12294909228479895151

namespace A104677

/-- `A005581(n+2)*A005586(n+3)` -/
def P12294909228479895151.Spec : Prop :=
  ∀ n, P12294909228479895151.a n = A104677 n

end A104677

/-! ## A104677.P4456673183510004506

`A062190(A167614(n+2))`
-/

namespace A104677.P4456673183510004506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A167614 (n + 2)).toNat

end

end A104677.P4456673183510004506

namespace A104677

/-- `A062190(A167614(n+2))` -/
def P4456673183510004506.Spec : Prop :=
  ∀ n, P4456673183510004506.a n = A104677 n

end A104677

/-!
# A104678: a(n) = binomial(n+4,4) * binomial(n+9,4).

The programs for A104678, the canonical program `A104678.P9254318880319269194` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104678 has offset 0).

The definition of A104678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*C(n+9, 4)` (program `A104678.P9254318880319269194`, by `A104678.P9254318880319269194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104678.P9254318880319269194

`C(n+4, 4)*C(n+9, 4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104678

/-- `C(n+4, 4)*C(n+9, 4)` -/
def P9254318880319269194.Spec : Prop :=
  ∀ n, (P9254318880319269194.a n : ℤ) = A104678 n

theorem P9254318880319269194.correct : P9254318880319269194.Spec := by
  intro n
  simp only [A104678]

end A104678

/-! ## A104678.P8785204560591952347

`A000332(n+4)*A000332(n+9)`
-/

namespace A104678.P8785204560591952347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A000332 (n + 9)

end

end A104678.P8785204560591952347

namespace A104678

/-- `A000332(n+4)*A000332(n+9)` -/
def P8785204560591952347.Spec : Prop :=
  ∀ n, P8785204560591952347.a n = A104678 n

end A104678

/-! ## A104678.P11059060411707729225

`A032780(n+1)/64`
-/

namespace A104678.P11059060411707729225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032780 (n + 1) : ℚ) / 64

end

end A104678.P11059060411707729225

namespace A104678

/-- `A032780(n+1)/64` -/
def P11059060411707729225.Spec : Prop :=
  ∀ n, P11059060411707729225.a n = (A104678 n : ℚ)

end A104678

/-! ## A104678.P6709059529433429303

`A005582(n+2)*A005587(n+1)`
-/

namespace A104678.P6709059529433429303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 2) * A005587 (n + 1)

end

end A104678.P6709059529433429303

namespace A104678

/-- `A005582(n+2)*A005587(n+1)` -/
def P6709059529433429303.Spec : Prop :=
  ∀ n, P6709059529433429303.a n = A104678 n

end A104678

/-! ## A104678.P6641152449103737313

`Δ[A005583(n+1)]*A005587(n+1)`
-/

namespace A104678.P6641152449103737313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005587 (n + 1)

end

end A104678.P6641152449103737313

namespace A104678

/-- `Δ[A005583(n+1)]*A005587(n+1)` -/
def P6641152449103737313.Spec : Prop :=
  ∀ n, P6641152449103737313.a n = A104678 n

end A104678

/-! ## A104678.P13789224225104290047

`A062190(A055999(n+1)+10)`
-/

namespace A104678.P13789224225104290047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A055999 (n + 1) + 10).toNat

end

end A104678.P13789224225104290047

namespace A104678

/-- `A062190(A055999(n+1)+10)` -/
def P13789224225104290047.Spec : Prop :=
  ∀ n, P13789224225104290047.a n = A104678 n

end A104678

/-! ## A104678.P16459134295758325793

`A178301(A056000(n)+14)`
-/

namespace A104678.P16459134295758325793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 (A056000 n + 14).toNat

end

end A104678.P16459134295758325793

namespace A104678

/-- `A178301(A056000(n)+14)` -/
def P16459134295758325793.Spec : Prop :=
  ∀ n, P16459134295758325793.a n = A104678 n

end A104678

/-! ## A104678.P9736865102954743991

`A178301(A000096(n+3)+5)`
-/

namespace A104678.P9736865102954743991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 (A000096 (n + 3) + 5).toNat

end

end A104678.P9736865102954743991

namespace A104678

/-- `A178301(A000096(n+3)+5)` -/
def P9736865102954743991.Spec : Prop :=
  ∀ n, P9736865102954743991.a n = A104678 n

end A104678

/-! ## A104678.P10998299221970628995

`A178301(A027379(n+2)+7)`
-/

namespace A104678.P10998299221970628995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 (A027379 (n + 2) + 7).toNat

end

end A104678.P10998299221970628995

namespace A104678

/-- `A178301(A027379(n+2)+7)` -/
def P10998299221970628995.Spec : Prop :=
  ∀ n, P10998299221970628995.a n = A104678 n

end A104678

/-! ## A104678.P14622446794234835790

`A178301(A167499(n)+A016789(n+2))`
-/

namespace A104678.P14622446794234835790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 (A167499 n + A016789 (n + 2)).toNat

end

end A104678.P14622446794234835790

namespace A104678

/-- `A178301(A167499(n)+A016789(n+2))` -/
def P14622446794234835790.Spec : Prop :=
  ∀ n, P14622446794234835790.a n = A104678 n

end A104678

/-!
# A104679: a(n) = C(n+5,5)*C(n+10,5).

The programs for A104679, the canonical program `A104679.P17902959647601968710` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104679 has offset 0).

The definition of A104679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*C(n+10, 5)` (program `A104679.P17902959647601968710`, by `A104679.P17902959647601968710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104679.P17902959647601968710

`C(n+5, 5)*C(n+10, 5)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104679

/-- `C(n+5, 5)*C(n+10, 5)` -/
def P17902959647601968710.Spec : Prop :=
  ∀ n, (P17902959647601968710.a n : ℤ) = A104679 n

theorem P17902959647601968710.correct : P17902959647601968710.Spec := by
  intro n
  simp only [A104679]

end A104679

/-! ## A104679.P6765414373557894599

`252*A001287(n)`
-/

namespace A104679.P6765414373557894599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  252 * A001287 (n + 10)

end

end A104679.P6765414373557894599

namespace A104679

/-- `252*A001287(n)` -/
def P6765414373557894599.Spec : Prop :=
  ∀ n, P6765414373557894599.a n = A104679 n

end A104679

/-! ## A104679.P1727988399910519163

`A000389(n+5)*A000389(n+10)`
-/

namespace A104679.P1727988399910519163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A000389 (n + 10)

end

end A104679.P1727988399910519163

namespace A104679

/-- `A000389(n+5)*A000389(n+10)` -/
def P1727988399910519163.Spec : Prop :=
  ∀ n, P1727988399910519163.a n = A104679 n

end A104679

/-! ## A104679.P5634037301962067460

`(A005583(n+4)+A000292(n+5))*A005583(n+1)`
-/

namespace A104679.P5634037301962067460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005583 (n + 4) + A000292 (n + 5)) * A005583 (n + 1)

end

end A104679.P5634037301962067460

namespace A104679

/-- `(A005583(n+4)+A000292(n+5))*A005583(n+1)` -/
def P5634037301962067460.Spec : Prop :=
  ∀ n, P5634037301962067460.a n = A104679 n

end A104679

/-! ## A104679.P11169028732652762109

`6*A088626(n+10)`
-/

namespace A104679.P11169028732652762109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A088626 (n + 10)

end

end A104679.P11169028732652762109

namespace A104679

/-- `6*A088626(n+10)` -/
def P11169028732652762109.Spec : Prop :=
  ∀ n, P11169028732652762109.a n = A104679 n

end A104679

/-! ## A104679.P7217326116786464287

`Δ[A000579(n+9)]*A005583(n+1)`
-/

namespace A104679.P7217326116786464287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005583 (n + 1)

end

end A104679.P7217326116786464287

namespace A104679

/-- `Δ[A000579(n+9)]*A005583(n+1)` -/
def P7217326116786464287.Spec : Prop :=
  ∀ n, P7217326116786464287.a n = A104679 n

end A104679

/-! ## A104679.P8220586223505419792

`A063007(A167499(n+4))`
-/

namespace A104679.P8220586223505419792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A167499 (n + 4)).toNat

end

end A104679.P8220586223505419792

namespace A104679

/-- `A063007(A167499(n+4))` -/
def P8220586223505419792.Spec : Prop :=
  ∀ n, P8220586223505419792.a n = A104679 n

end A104679

/-! ## A104679.P14529100849698729244

`A104684(Δ[A023551(n+1)])`
-/

namespace A104679.P14529100849698729244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (f1 (n + 1) - f1 n).toNat

end

end A104679.P14529100849698729244

namespace A104679

/-- `A104684(Δ[A023551(n+1)])` -/
def P14529100849698729244.Spec : Prop :=
  ∀ n, P14529100849698729244.a n = A104679 n

end A104679

/-!
# A104680: a(n) = binomial(n+7,7)*binomial(n+12,7).

The programs for A104680, the canonical program `A104680.P15069992253447238267` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104680 has offset 0).

The definition of A104680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*C(n+12, 7)` (program `A104680.P15069992253447238267`, by `A104680.P15069992253447238267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104680.P15069992253447238267

`C(n+7, 7)*C(n+12, 7)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104680

/-- `C(n+7, 7)*C(n+12, 7)` -/
def P15069992253447238267.Spec : Prop :=
  ∀ n, (P15069992253447238267.a n : ℤ) = A104680 n

theorem P15069992253447238267.correct : P15069992253447238267.Spec := by
  intro n
  simp only [A104680]

end A104680

/-! ## A104680.P9214976219526237885

`(A124090(n+7)+1)*Δ[A166813(n+4)]`
-/

namespace A104680.P9214976219526237885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124090 (n + 7) + 1) * (f1 (n + 1) - f1 n)

end

end A104680.P9214976219526237885

namespace A104680

/-- `(A124090(n+7)+1)*Δ[A166813(n+4)]` -/
def P9214976219526237885.Spec : Prop :=
  ∀ n, P9214976219526237885.a n = A104680 n

end A104680

/-! ## A104680.P3991055102093060006

`A253947(n+6)/6*Δ[A166813(n+4)]`
-/

namespace A104680.P3991055102093060006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253947 (n + 6) : ℚ) / 6 * (f1 (n + 1) - f1 n : ℚ)

end

end A104680.P3991055102093060006

namespace A104680

/-- `A253947(n+6)/6*Δ[A166813(n+4)]` -/
def P3991055102093060006.Spec : Prop :=
  ∀ n, P3991055102093060006.a n = (A104680 n : ℚ)

end A104680

/-! ## A104680.P16061020880472729846

`∑[A052226(n)]/(n+1)*Δ[A166813(n+4)]`
-/

namespace A104680.P16061020880472729846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (f2 (n + 1) - f2 n : ℚ)

end

end A104680.P16061020880472729846

namespace A104680

/-- `∑[A052226(n)]/(n+1)*Δ[A166813(n+4)]` -/
def P16061020880472729846.Spec : Prop :=
  ∀ n, P16061020880472729846.a n = (A104680 n : ℚ)

end A104680

/-! ## A104680.P12067870110650004582

`A104670(n)/∑[n+1]*Δ[A166813(n+4)]`
-/

namespace A104680.P12067870110650004582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104670 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (f2 (n + 1) - f2 n : ℚ)

end

end A104680.P12067870110650004582

namespace A104680

/-- `A104670(n)/∑[n+1]*Δ[A166813(n+4)]` -/
def P12067870110650004582.Spec : Prop :=
  ∀ n, P12067870110650004582.a n = (A104680 n : ℚ)

end A104680

/-! ## A104680.P11315659561284940764

`(A062990(n)-A062966(n))*Δ[A166813(n+4)]`
-/

namespace A104680.P11315659561284940764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062990 n - A062966 n) * (f1 (n + 1) - f1 n)

end

end A104680.P11315659561284940764

namespace A104680

/-- `(A062990(n)-A062966(n))*Δ[A166813(n+4)]` -/
def P11315659561284940764.Spec : Prop :=
  ∀ n, P11315659561284940764.a n = A104680 n

end A104680

/-! ## A104680.P3738625093654898745

`(A096946(n)-A095671(n))*Δ[A166813(n+4)]`
-/

namespace A104680.P3738625093654898745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096946 n - A095671 n) * (f1 (n + 1) - f1 n)

end

end A104680.P3738625093654898745

namespace A104680

/-- `(A096946(n)-A095671(n))*Δ[A166813(n+4)]` -/
def P3738625093654898745.Spec : Prop :=
  ∀ n, P3738625093654898745.a n = A104680 n

end A104680

/-! ## A104680.P11408559552420812119

`A000580(n+7)*A000580(n+12)`
-/

namespace A104680.P11408559552420812119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A000580 (n + 12)

end

end A104680.P11408559552420812119

namespace A104680

/-- `A000580(n+7)*A000580(n+12)` -/
def P11408559552420812119.Spec : Prop :=
  ∀ n, P11408559552420812119.a n = A104680 n

end A104680

/-!
# A104681: Expansion of (1-x-2*x^2-2*x^3-9*x^4-9*x^5-6*x^6+6*x^7-x^8-x^9-2*x^13+2*x^12) / (-x^12-1+2*x^6).

The programs for A104681, the canonical program `A104681.P7297615668807425866` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104681 has offset 0).

The definition of A104681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1+x+2x^2+2x^3+9x^4+9x^5+6x^6-6x^7+x^8+x^9-2x^12+2x^13)/(1-2x^6+x^12))` (program `A104681.P7297615668807425866`, by `A104681.P7297615668807425866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104681.P7297615668807425866

`ogf((-1+x+2x^2+2x^3+9x^4+9x^5+6x^6-6x^7+x^8+x^9-2x^12+2x^13)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104681

/-- `ogf((-1+x+2x^2+2x^3+9x^4+9x^5+6x^6-6x^7+x^8+x^9-2x^12+2x^13)/(1-2x^6+x^12))` -/
def P7297615668807425866.Spec : Prop :=
  ∀ n, P7297615668807425866.a n = A104681 n

theorem P7297615668807425866.correct : P7297615668807425866.Spec := by
  intro n
  simp only [A104681]

end A104681

/-!
# A104682: a(n) = Sum_{j=0..14} n^j.

The programs for A104682, the canonical program `A104682.P12791735047777628454` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104682 has offset 0).

The definition of A104682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104682.P12791735047777628454

`n*A104376(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104682

/-- `n*A104376(n)+1` -/
def P12791735047777628454.Spec : Prop :=
  ∀ n, P12791735047777628454.a n = A104682 n

theorem P12791735047777628454.correct : P12791735047777628454.Spec := by
  intro n
  simp only [A104682]

end A104682

/-! ## A104682.P1994568775210023364

`n²*A060887(n)+1+n`
-/

namespace A104682.P1994568775210023364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A060887 n + 1 + (n : ℤ)

end

end A104682.P1994568775210023364

namespace A104682

/-- `n²*A060887(n)+1+n` -/
def P1994568775210023364.Spec : Prop :=
  ∀ n, P1994568775210023364.a n = A104682 n

end A104682

/-! ## A104682.P267450041581573906

`A228291(n)*A258806(n)+1`
-/

namespace A104682.P267450041581573906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228291 n * A258806 n + 1

end

end A104682.P267450041581573906

namespace A104682

/-- `A228291(n)*A258806(n)+1` -/
def P267450041581573906.Spec : Prop :=
  ∀ n, P267450041581573906.a n = A104682 n

end A104682

/-! ## A104682.P15077879176036601558

`A102909(n)+A001016(n)*A228290(n)`
-/

namespace A104682.P15077879176036601558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102909 n + A001016 n * A228290 n

end

end A104682.P15077879176036601558

namespace A104682

/-- `A102909(n)+A001016(n)*A228290(n)` -/
def P15077879176036601558.Spec : Prop :=
  ∀ n, P15077879176036601558.a n = A104682 n

end A104682

/-! ## A104682.P1499042221556690196

`round(A105312(n)/A269442(n)*A105312(n))`
-/

namespace A104682.P1499042221556690196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A105312 n : ℚ) / (A269442 n : ℚ) * (A105312 n : ℚ))

end

end A104682.P1499042221556690196

namespace A104682

/-- `round(A105312(n)/A269442(n)*A105312(n))` -/
def P1499042221556690196.Spec : Prop :=
  ∀ n, P1499042221556690196.a n = A104682 n

end A104682

/-! ## A104682.P16066734806585698469

`round(A105312(n)²/A269442(n))`
-/

namespace A104682.P16066734806585698469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A105312 n ^ 2 : ℚ) / (A269442 n : ℚ))

end

end A104682.P16066734806585698469

namespace A104682

/-- `round(A105312(n)²/A269442(n))` -/
def P16066734806585698469.Spec : Prop :=
  ∀ n, P16066734806585698469.a n = A104682 n

end A104682

/-!
# A104683: Interlaces "2*n^2 - 1 is a square" with NSW numbers.

The programs for A104683, the canonical program `A104683.P11188123736155185687` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104683 has offset 0).

The definition of A104683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104683.P719930593187380657

`ogf((1+x-x^2+x^3)/(1-6x^2+x^4))`
-/

namespace A104683.P719930593187380657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, 0, -6, 0, 1] n

end

end A104683.P719930593187380657

namespace A104683

/-- `ogf((1+x-x^2+x^3)/(1-6x^2+x^4))` -/
def P719930593187380657.Spec : Prop :=
  ∀ n, P719930593187380657.a n = A104683 n

end A104683

/-! ## A104683.P11188123736155185687

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104683

/-- `6*a(n-2)-a(n-4)` -/
def P11188123736155185687.Spec : Prop :=
  ∀ n, P11188123736155185687.a n = A104683 n

theorem P11188123736155185687.correct : P11188123736155185687.Spec := by
  intro n
  simp only [A104683]

end A104683

/-! ## A104683.P16782589362420065379

`A002965(or(1, n)+n+1)`
-/

namespace A104683.P16782589362420065379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (Nat.lor 1 n + n + 1)

end

end A104683.P16782589362420065379

namespace A104683

/-- `A002965(or(1, n)+n+1)` -/
def P16782589362420065379.Spec : Prop :=
  ∀ n, P16782589362420065379.a n = A104683 n

end A104683

/-! ## A104683.P17527504063569462096

`A002965(char[2*n]+2*n+1)`
-/

namespace A104683.P17527504063569462096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n + 1)

end

end A104683.P17527504063569462096

namespace A104683

/-- `A002965(char[2*n]+2*n+1)` -/
def P17527504063569462096.Spec : Prop :=
  ∀ n, P17527504063569462096.a n = A104683 n

end A104683

/-! ## A104683.P6173468491713537936

`A092550(A047239(n+1))`
-/

namespace A104683.P6173468491713537936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A047239 (n + 1)).toNat

end

end A104683.P6173468491713537936

namespace A104683

/-- `A092550(A047239(n+1))` -/
def P6173468491713537936.Spec : Prop :=
  ∀ n, P6173468491713537936.a n = A104683 n

end A104683

/-! ## A104683.P16627759559285992419

`A116560(A092242(n+1))`
-/

namespace A104683.P16627759559285992419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A092242 (n + 1)).toNat

end

end A104683.P16627759559285992419

namespace A104683

/-- `A116560(A092242(n+1))` -/
def P16627759559285992419.Spec : Prop :=
  ∀ n, P16627759559285992419.a n = A104683 n

end A104683

/-! ## A104683.P13701489910213156464

`A227972(A047230(n+1))`
-/

namespace A104683.P13701489910213156464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047230 (n + 1)).toNat

end

end A104683.P13701489910213156464

namespace A104683

/-- `A227972(A047230(n+1))` -/
def P13701489910213156464.Spec : Prop :=
  ∀ n, P13701489910213156464.a n = A104683 n

end A104683

/-! ## A104683.P3553575204959292857

`A227972(A047270(n+1))`
-/

namespace A104683.P3553575204959292857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047270 (n + 1)).toNat

end

end A104683.P3553575204959292857

namespace A104683

/-- `A227972(A047270(n+1))` -/
def P3553575204959292857.Spec : Prop :=
  ∀ n, P3553575204959292857.a n = A104683 n

end A104683

/-! ## A104683.P1997570696567975416

`A227972(A047243(n+1)+1)`
-/

namespace A104683.P1997570696567975416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047243 (n + 1) + 1).toNat

end

end A104683.P1997570696567975416

namespace A104683

/-- `A227972(A047243(n+1)+1)` -/
def P1997570696567975416.Spec : Prop :=
  ∀ n, P1997570696567975416.a n = A104683 n

end A104683

/-! ## A104683.P9349331750296001980

`A249576(A047243(n+1)+1)`
-/

namespace A104683.P9349331750296001980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A047243 (n + 1) + 1).toNat

end

end A104683.P9349331750296001980

namespace A104683

/-- `A249576(A047243(n+1)+1)` -/
def P9349331750296001980.Spec : Prop :=
  ∀ n, P9349331750296001980.a n = A104683 n

end A104683

/-! ## A104683.P17679771009536433456

`A227972(A047241(n+1)+2)`
-/

namespace A104683.P17679771009536433456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047241 (n + 1) + 2).toNat

end

end A104683.P17679771009536433456

namespace A104683

/-- `A227972(A047241(n+1)+2)` -/
def P17679771009536433456.Spec : Prop :=
  ∀ n, P17679771009536433456.a n = A104683 n

end A104683

/-! ## A104683.P17619482552592949506

`A126354(n+1)+A000129(n)`
-/

namespace A104683.P17619482552592949506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1) + A000129 n

end

end A104683.P17619482552592949506

namespace A104683

/-- `A126354(n+1)+A000129(n)` -/
def P17619482552592949506.Spec : Prop :=
  ∀ n, P17619482552592949506.a n = A104683 n

end A104683

/-! ## A104683.P12078472969622931839

`A155046(A168232(n+1)+n)`
-/

namespace A104683.P12078472969622931839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A168232 (n + 1) + (n : ℤ)).toNat

end

end A104683.P12078472969622931839

namespace A104683

/-- `A155046(A168232(n+1)+n)` -/
def P12078472969622931839.Spec : Prop :=
  ∀ n, P12078472969622931839.a n = A104683 n

end A104683

/-! ## A104683.P5786476381343185048

`A084068(n+1)-A000129(n)`
-/

namespace A104683.P5786476381343185048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) - A000129 n

end

end A104683.P5786476381343185048

namespace A104683

/-- `A084068(n+1)-A000129(n)` -/
def P5786476381343185048.Spec : Prop :=
  ∀ n, P5786476381343185048.a n = A104683 n

end A104683

/-! ## A104683.P5323236961934897965

`A126354(n+1)+A163271(n+1)/2`
-/

namespace A104683.P5323236961934897965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126354 (n + 1) : ℚ) + (A163271 (n + 1) : ℚ) / 2

end

end A104683.P5323236961934897965

namespace A104683

/-- `A126354(n+1)+A163271(n+1)/2` -/
def P5323236961934897965.Spec : Prop :=
  ∀ n, P5323236961934897965.a n = (A104683 n : ℚ)

end A104683

/-! ## A104683.P17004380302362779751

`A084068(n+1)-A163271(n+1)/2`
-/

namespace A104683.P17004380302362779751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084068 (n + 1) : ℚ) - (A163271 (n + 1) : ℚ) / 2

end

end A104683.P17004380302362779751

namespace A104683

/-- `A084068(n+1)-A163271(n+1)/2` -/
def P17004380302362779751.Spec : Prop :=
  ∀ n, P17004380302362779751.a n = (A104683 n : ℚ)

end A104683

/-! ## A104683.P12448775698416523592

`∑[A000129(A109613(n))]-A000129(n)`
-/

namespace A104683.P12448775698416523592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000129 n

end

end A104683.P12448775698416523592

namespace A104683

/-- `∑[A000129(A109613(n))]-A000129(n)` -/
def P12448775698416523592.Spec : Prop :=
  ∀ n, P12448775698416523592.a n = A104683 n

end A104683

/-! ## A104683.P7312232166420013355

`(A001333(n)+A001333(A109613(n)))/2`
-/

namespace A104683.P7312232166420013355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n + A001333 (A109613 n).toNat : ℚ) / 2

end

end A104683.P7312232166420013355

namespace A104683

/-- `(A001333(n)+A001333(A109613(n)))/2` -/
def P7312232166420013355.Spec : Prop :=
  ∀ n, P7312232166420013355.a n = (A104683 n : ℚ)

end A104683

/-! ## A104683.P6124561378511920004

`A001333(n)+A089499(n)-A000129(n)`
-/

namespace A104683.P6124561378511920004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A089499 n - A000129 n)

end

end A104683.P6124561378511920004

namespace A104683

/-- `A001333(n)+A089499(n)-A000129(n)` -/
def P6124561378511920004.Spec : Prop :=
  ∀ n, P6124561378511920004.a n = A104683 n

end A104683

/-! ## A104683.P10587701463275321004

`A143609(n+1)-(A079496(n)+A000129(n))`
-/

namespace A104683.P10587701463275321004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1) - (A079496 n + A000129 n)

end

end A104683.P10587701463275321004

namespace A104683

/-- `A143609(n+1)-(A079496(n)+A000129(n))` -/
def P10587701463275321004.Spec : Prop :=
  ∀ n, P10587701463275321004.a n = A104683 n

end A104683

/-!
# A104684: Triangle read by rows: T(n,k) is the number of lattice paths from (0,0) to (n,n) using steps E=(1,0), N=(0,1) and D=(1,1) (i.e., bilateral Schroeder paths), having k D=(1,1) steps.

The programs for A104684, the canonical program `A104684.P11433889178168133031` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104684 has offset 0).

The definition of A104684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9080 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104684.P18211168083064264208

`A007318(n)*A092392(n)`
-/

namespace A104684.P18211168083064264208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A092392 n

end

end A104684.P18211168083064264208

namespace A104684

/-- `A007318(n)*A092392(n)` -/
def P18211168083064264208.Spec : Prop :=
  ∀ n, P18211168083064264208.a n = A104684 n

end A104684

/-! ## A104684.P16947852065751630168

`A029653(n)*A100100(n)`
-/

namespace A104684.P16947852065751630168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n * A100100 n

end

end A104684.P16947852065751630168

namespace A104684

/-- `A029653(n)*A100100(n)` -/
def P16947852065751630168.Spec : Prop :=
  ∀ n, P16947852065751630168.a n = A104684 n

end A104684

/-! ## A104684.P11433889178168133031

`A054142(n)*A106187(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104684

/-- `A054142(n)*A106187(n)` -/
def P11433889178168133031.Spec : Prop :=
  ∀ n, P11433889178168133031.a n = A104684 n

theorem P11433889178168133031.correct : P11433889178168133031.Spec := by
  intro n
  simp only [A104684]

end A104684

/-! ## A104684.P2909393549552324969

`A004736(n+1)*A060693(n)`
-/

namespace A104684.P2909393549552324969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A060693 n

end

end A104684.P2909393549552324969

namespace A104684

/-- `A004736(n+1)*A060693(n)` -/
def P2909393549552324969.Spec : Prop :=
  ∀ n, P2909393549552324969.a n = A104684 n

end A104684

/-! ## A104684.P3461396575580891167

`(A014473(n)+1)*A092392(n)`
-/

namespace A104684.P3461396575580891167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A092392 n

end

end A104684.P3461396575580891167

namespace A104684

/-- `(A014473(n)+1)*A092392(n)` -/
def P3461396575580891167.Spec : Prop :=
  ∀ n, P3461396575580891167.a n = A104684 n

end A104684

/-! ## A104684.P6857955552430076249

`A033184(n+1)*A135278(n)`
-/

namespace A104684.P6857955552430076249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A135278 n

end

end A104684.P6857955552430076249

namespace A104684

/-- `A033184(n+1)*A135278(n)` -/
def P6857955552430076249.Spec : Prop :=
  ∀ n, P6857955552430076249.a n = A104684 n

end A104684

/-! ## A104684.P16959020979658653431

`(A171824(n)-A046899(n))*A007318(n)`
-/

namespace A104684.P16959020979658653431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171824 n - A046899 n) * A007318 n

end

end A104684.P16959020979658653431

namespace A104684

/-- `(A171824(n)-A046899(n))*A007318(n)` -/
def P16959020979658653431.Spec : Prop :=
  ∀ n, P16959020979658653431.a n = A104684 n

end A104684

/-! ## A104684.P3761685406569062221

`A033184(n+1)/A009766(n+1)*A063007(n+1)`
-/

namespace A104684.P3761685406569062221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033184 (n + 1) : ℚ) / (A009766 (n + 1) : ℚ) * (A063007 (n + 1) : ℚ)

end

end A104684.P3761685406569062221

namespace A104684

/-- `A033184(n+1)/A009766(n+1)*A063007(n+1)` -/
def P3761685406569062221.Spec : Prop :=
  ∀ n, P3761685406569062221.a n = (A104684 n : ℚ)

end A104684

/-! ## A104684.P7632686177412542501

`A063007(A061579(n))`
-/

namespace A104684.P7632686177412542501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A061579 n).toNat

end

end A104684.P7632686177412542501

namespace A104684

/-- `A063007(A061579(n))` -/
def P7632686177412542501.Spec : Prop :=
  ∀ n, P7632686177412542501.a n = A104684 n

end A104684

/-! ## A104684.P225460454645715649

`A063007(A038722(n+1)-1)`
-/

namespace A104684.P225460454645715649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A038722 (n + 1) - 1).toNat

end

end A104684.P225460454645715649

namespace A104684

/-- `A063007(A038722(n+1)-1)` -/
def P225460454645715649.Spec : Prop :=
  ∀ n, P225460454645715649.a n = A104684 n

end A104684

/-! ## A104684.P6616076452478117802

`A063007(A038722(n+2))`
-/

namespace A104684.P6616076452478117802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A038722 (n + 2)).toNat

end

end A104684.P6616076452478117802

namespace A104684

/-- `A063007(A038722(n+2))` -/
def P6616076452478117802.Spec : Prop :=
  ∀ n, P6616076452478117802.a n = A104684 n

end A104684

/-! ## A104684.P4920775787846249428

`A069466(n)/A062344(n)`
-/

namespace A104684.P4920775787846249428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A062344 n : ℚ)

end

end A104684.P4920775787846249428

namespace A104684

/-- `A069466(n)/A062344(n)` -/
def P4920775787846249428.Spec : Prop :=
  ∀ n, P4920775787846249428.a n = (A104684 n : ℚ)

end A104684

/-! ## A104684.P10146022728887926208

`A318107(n)/A264772(n)`
-/

namespace A104684.P10146022728887926208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318107 n : ℚ) / (A264772 n : ℚ)

end

end A104684.P10146022728887926208

namespace A104684

/-- `A318107(n)/A264772(n)` -/
def P10146022728887926208.Spec : Prop :=
  ∀ n, P10146022728887926208.a n = (A104684 n : ℚ)

end A104684

/-! ## A104684.P10886691547712643010

`A119274(n)/A119502(n)`
-/

namespace A104684.P10886691547712643010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119274 n : ℚ) / (A119502 n : ℚ)

end

end A104684.P10886691547712643010

namespace A104684

/-- `A119274(n)/A119502(n)` -/
def P10886691547712643010.Spec : Prop :=
  ∀ n, P10886691547712643010.a n = (A104684 n : ℚ)

end A104684

/-! ## A104684.P11026441799391378086

`A156763(n)-A063007(n)`
-/

namespace A104684.P11026441799391378086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156763 n - A063007 n

end

end A104684.P11026441799391378086

namespace A104684

/-- `A156763(n)-A063007(n)` -/
def P11026441799391378086.Spec : Prop :=
  ∀ n, P11026441799391378086.a n = A104684 n

end A104684

/-! ## A104684.P9573366430630653383

`A000005(A130321(n))*A060693(n)`
-/

namespace A104684.P9573366430630653383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A060693 n

end

end A104684.P9573366430630653383

namespace A104684

/-- `A000005(A130321(n))*A060693(n)` -/
def P9573366430630653383.Spec : Prop :=
  ∀ n, P9573366430630653383.a n = A104684 n

end A104684

/-!
# A104685: Smallest semiprime containing exactly n 3's.

The programs for A104685, there is no canonical definition to state claims against.
-/

/-! ## A104685.P3479539784801687427

`A000027(A106658(n+1))%A120298(n+6)`
-/

namespace A104685.P3479539784801687427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A106658 (n + 1)).toNat) (A120298 (n + 6))

end

end A104685.P3479539784801687427

/-!
# A104686: a(n) = n*(n+1)/2 (mod 6).

The programs for A104686, the canonical program `A104686.P13991589362858840404` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104686 has offset 0).

The definition of A104686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104686.P13991589362858840404

`((n²+n)/2)%6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104686

/-- `((n²+n)/2)%6` -/
def P13991589362858840404.Spec : Prop :=
  ∀ n, P13991589362858840404.a n = A104686 n

theorem P13991589362858840404.correct : P13991589362858840404.Spec := by
  intro n
  simp only [A104686]

end A104686

/-!
# A104688: Binomial transform of Moebius sequence.

The programs for A104688, there is no canonical definition to state claims against.
-/

/-! ## A104688.P16951288519628584718

`4-A137734(A105082(n))`
-/

namespace A104688.P16951288519628584718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A137734 (A105082 n).toNat

end

end A104688.P16951288519628584718

/-! ## A104688.P15698930503010842562

`2-A087063(A059923(n+1))`
-/

namespace A104688.P15698930503010842562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A087063 (A059923 (n + 1)).toNat

end

end A104688.P15698930503010842562

/-! ## A104688.P17758450207744926487

`A326702(n²+10)-A265070(n)`
-/

namespace A104688.P17758450207744926487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (n ^ 2 + 10) - A265070 n

end

end A104688.P17758450207744926487

/-! ## A104688.P922610784479262527

`A257993(A008776(n))-A265070(n)`
-/

namespace A104688.P922610784479262527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A008776 n).toNat - A265070 n

end

end A104688.P922610784479262527

/-! ## A104688.P11245596721049565420

`A006530(A058764(2*n))-A265070(n)`
-/

namespace A104688.P11245596721049565420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A058764 (2 * n)).toNat - A265070 n

end

end A104688.P11245596721049565420

/-!
# A104691: Decimal expansions of e and Pi interlaced.

The programs for A104691, there is no canonical definition to state claims against.
-/

/-! ## A104691.P14146132245255630851

`A001355(abs(xor(n, -2)))`
-/

namespace A104691.P14146132245255630851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 |Int.xor (n : ℤ) (-2)|.toNat

end

end A104691.P14146132245255630851

/-! ## A104691.P14905718381381444334

`A001355(xor(1, n)+1)`
-/

namespace A104691.P14905718381381444334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (Nat.xor 1 n + 1)

end

end A104691.P14905718381381444334

/-! ## A104691.P6787284073420058595

`A001355(-xor(n, -2))`
-/

namespace A104691.P6787284073420058595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (-Int.xor (n : ℤ) (-2)).toNat

end

end A104691.P6787284073420058595

/-! ## A104691.P13711743252994485453

`A001355(2-xor(1, 1-n))`
-/

namespace A104691.P13711743252994485453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A104691.P13711743252994485453

/-! ## A104691.P14094679928513528020

`A001355(2*or(1, n)-n)`
-/

namespace A104691.P14094679928513528020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * Nat.lor 1 n - n)

end

end A104691.P14094679928513528020

/-! ## A104691.P17488931572729229338

`A001355(lcm(2, or(1, n))-n)`
-/

namespace A104691.P17488931572729229338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (Nat.lcm 2 (Nat.lor 1 n) - n)

end

end A104691.P17488931572729229338

/-! ## A104691.P15300932240353102693

`A001355((-1)^n+n+1)`
-/

namespace A104691.P15300932240353102693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A104691.P15300932240353102693

/-! ## A104691.P8039277370322905024

`A078424(A166517(n))`
-/

namespace A104691.P8039277370322905024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A166517 n).toNat

end

end A104691.P8039277370322905024

/-! ## A104691.P10404101366468870368

`A001355(abs(Δ[A014682(n)]))%10`
-/

namespace A104691.P10404101366468870368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 |f1 (n + 1) - f1 n|.toNat) 10

end

end A104691.P10404101366468870368

/-! ## A104691.P15648459813954799866

`A073212(floor(n/2))-A001355(n+1)`
-/

namespace A104691.P15648459813954799866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 ⌊(n : ℚ) / 2⌋.toNat - A001355 (n + 1)

end

end A104691.P15648459813954799866

/-!
# A104692: Numbers n such that in n^3, number of odd digits is less than number of even digits.

The programs for A104692, the canonical program `A104692.P14109630690310913269` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104692 has offset 1).

The definition of A104692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104692.P14109630690310913269

`lt[A104640(n+1), A104639(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104692

/-- `lt[A104640(n+1), A104639(n+1)]+1` -/
def P14109630690310913269.Spec : Prop :=
  ∀ n, (P14109630690310913269.a n : ℤ) = A104692 (n + 1)

theorem P14109630690310913269.correct : P14109630690310913269.Spec := by
  intro n
  simp only [A104692, Nat.add_sub_cancel]

end A104692

/-! ## A104692.P740900011041317000

`A020725(lt[A104640(n+1), A104639(n+1)])`
-/

namespace A104692.P740900011041317000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104692.P740900011041317000

namespace A104692

/-- `A020725(lt[A104640(n+1), A104639(n+1)])` -/
def P740900011041317000.Spec : Prop :=
  ∀ n, P740900011041317000.a n = A104692 (n + 1)

end A104692

/-! ## A104692.P2568622291757856878

`lt[A104640(n+1), A111393(n+1)-A104640(n+1)]+1`
-/

namespace A104692.P2568622291757856878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111393 (n + 1) - A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104692.P2568622291757856878

namespace A104692

/-- `lt[A104640(n+1), A111393(n+1)-A104640(n+1)]+1` -/
def P2568622291757856878.Spec : Prop :=
  ∀ n, (P2568622291757856878.a n : ℤ) = A104692 (n + 1)

end A104692

/-! ## A104692.P210002754648176446

`lt[A111393(n+1)-A104639(n+1), A104639(n+1)]+1`
-/

namespace A104692.P210002754648176446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111393 (n + 1) - A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104692.P210002754648176446

namespace A104692

/-- `lt[A111393(n+1)-A104639(n+1), A104639(n+1)]+1` -/
def P210002754648176446.Spec : Prop :=
  ∀ n, (P210002754648176446.a n : ℤ) = A104692 (n + 1)

end A104692

/-! ## A104692.P2919631273557964389

`A104694(3*n+1)`
-/

namespace A104692.P2919631273557964389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104694 (3 * n + 1)

end

end A104692.P2919631273557964389

namespace A104692

/-- `A104694(3*n+1)` -/
def P2919631273557964389.Spec : Prop :=
  ∀ n, P2919631273557964389.a n = A104692 (n + 1)

end A104692

/-!
# A104693: Numbers n such that in n^3, number of odd digits is larger than number of even digits.

The programs for A104693, the canonical program `A104693.P4864952721135800102` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104693 has offset 1).

The definition of A104693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104693.P4864952721135800102

`lt[A104639(n+1), A104640(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104693

/-- `lt[A104639(n+1), A104640(n+1)]+1` -/
def P4864952721135800102.Spec : Prop :=
  ∀ n, (P4864952721135800102.a n : ℤ) = A104693 (n + 1)

theorem P4864952721135800102.correct : P4864952721135800102.Spec := by
  intro n
  simp only [A104693, Nat.add_sub_cancel]

end A104693

/-! ## A104693.P2458858638570515267

`lt[∑{digits}[(n+1)^3, A056594(#)²], A104640(n+1)]+1`
-/

namespace A104693.P2458858638570515267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A056594 x ^ 2).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A104693.P2458858638570515267

namespace A104693

/-- `lt[∑{digits}[(n+1)^3, A056594(#)²], A104640(n+1)]+1` -/
def P2458858638570515267.Spec : Prop :=
  ∀ n, (P2458858638570515267.a n : ℤ) = A104693 (n + 1)

end A104693

/-! ## A104693.P8014498664414453279

`lt[∑{digits}[(n+1)^3, A041943(#)%2], A104640(n+1)]+1`
-/

namespace A104693.P8014498664414453279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Int.tmod (A041943 x) 2).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A104693.P8014498664414453279

namespace A104693

/-- `lt[∑{digits}[(n+1)^3, A041943(#)%2], A104640(n+1)]+1` -/
def P8014498664414453279.Spec : Prop :=
  ∀ n, (P8014498664414453279.a n : ℤ) = A104693 (n + 1)

end A104693

/-! ## A104693.P8769773914630729947

`lt[∑{digits}[(n+1)*(n+1)², A059841(#)], A104640(n+1)]+1`
-/

namespace A104693.P8769773914630729947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A059841 x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A104693.P8769773914630729947

namespace A104693

/-- `lt[∑{digits}[(n+1)*(n+1)², A059841(#)], A104640(n+1)]+1` -/
def P8769773914630729947.Spec : Prop :=
  ∀ n, (P8769773914630729947.a n : ℤ) = A104693 (n + 1)

end A104693

/-! ## A104693.P3635414722313458832

`lt[A104639(n+1), A111393(n+1)-A104639(n+1)]+1`
-/

namespace A104693.P3635414722313458832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111393 (n + 1) - A104639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104693.P3635414722313458832

namespace A104693

/-- `lt[A104639(n+1), A111393(n+1)-A104639(n+1)]+1` -/
def P3635414722313458832.Spec : Prop :=
  ∀ n, (P3635414722313458832.a n : ℤ) = A104693 (n + 1)

end A104693

/-!
# A104696: Rearrangement of positive integers: change odd digits d to 10-d.

The programs for A104696, there is no canonical definition to state claims against.
-/

/-! ## A104696.P5933839395507085182

`A222237(A222226(n+1))`
-/

namespace A104696.P5933839395507085182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222226 (n + 1)).toNat

end

end A104696.P5933839395507085182

/-!
# A104697: Rearrangement of positive integers: change even digits d to 10-d.

The programs for A104697, there is no canonical definition to state claims against.
-/

/-! ## A104697.P2793144071437698501

`A121759(n+1)+A010681(A007088(n))`
-/

namespace A104697.P2793144071437698501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121759 (n + 1) + A010681 (A007088 n).toNat

end

end A104697.P2793144071437698501

/-! ## A104697.P11185205222732912756

`A121759(A187829(n+1))+A010681(n)`
-/

namespace A104697.P11185205222732912756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121759 (A187829 (n + 1)).toNat + A010681 n

end

end A104697.P11185205222732912756

/-! ## A104697.P17773201267087354268

`A121759(n+1)+A010681(A329773(n+3))`
-/

namespace A104697.P17773201267087354268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121759 (n + 1) + A010681 (A329773 (n + 3)).toNat

end

end A104697.P17773201267087354268

/-!
# A104698: Triangle read by rows: T(n,k) = Sum_{j=0..n-k} binomial(k, j)*binomial(n-j+1, k+1).

The programs for A104698, there is no canonical definition to state claims against.
-/

/-! ## A104698.P18061640039590236296

`A142978(A038722(n+1))`
-/

namespace A104698.P18061640039590236296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A038722 (n + 1)).toNat

end

end A104698.P18061640039590236296

/-! ## A104698.P12247859676020641995

`A142978(A061579(n)+1)`
-/

namespace A104698.P12247859676020641995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A061579 n + 1).toNat

end

end A104698.P12247859676020641995

/-! ## A104698.P16843550578036504172

`A142978(A093995(n+1)-n)`
-/

namespace A104698.P16843550578036504172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A104698.P16843550578036504172

/-! ## A104698.P14209297983220822518

`A142978(A002024(n+1)²-n)`
-/

namespace A104698.P14209297983220822518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A104698.P14209297983220822518

/-! ## A104698.P17787767364881343963

`A101603(comp[∑[n]])`
-/

namespace A104698.P17787767364881343963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A104698.P17787767364881343963

/-! ## A104698.P8833209484402536208

`A035607(A014132(n+1))/2`
-/

namespace A104698.P8833209484402536208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035607 (A014132 (n + 1)).toNat : ℚ) / 2

end

end A104698.P8833209484402536208

/-! ## A104698.P10604516671860663140

`A035607(A003057(n+2)+n)/2`
-/

namespace A104698.P10604516671860663140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035607 (A003057 (n + 2) + (n : ℤ)).toNat : ℚ) / 2

end

end A104698.P10604516671860663140

/-! ## A104698.P3135619284178423316

`(A008288(A014132(n+1))+A008288(n))/2`
-/

namespace A104698.P3135619284178423316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008288 (A014132 (n + 1)).toNat + A008288 n : ℚ) / 2

end

end A104698.P3135619284178423316

/-! ## A104698.P4680187376512248865

`A113413(A099375(n)+n)/2`
-/

namespace A104698.P4680187376512248865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113413 (A099375 n + (n : ℤ)).toNat : ℚ) / 2

end

end A104698.P4680187376512248865

/-! ## A104698.P15730476957333675527

`A266213(lt[1, A266213(n)])/2`
-/

namespace A104698.P15730476957333675527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A104698.P15730476957333675527

