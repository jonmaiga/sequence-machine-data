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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.B014.C000
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
# A286400: {1010->1}-transform of the Thue-Morse word A010060.

The programs for A286400, there is no canonical definition to state claims against.
-/

/-! ## A286400.P8561667290528616640

`char[A286402(n+1)-1]`
-/

namespace A286400.P8561667290528616640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286400.P8561667290528616640

/-! ## A286400.P1544644179749796496

`char[A286421(n+1)-A127254(n)]`
-/

namespace A286400.P1544644179749796496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286421 (n + 1) - A127254 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286400.P1544644179749796496

/-! ## A286400.P18069036020980718412

`char[A316441(A000040(n+1))+A286402(n+1)]`
-/

namespace A286400.P18069036020980718412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A286402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286400.P18069036020980718412

/-! ## A286400.P8281594092688505518

`char[A286337(A000069(n+1)-n)+A101671(n)]`
-/

namespace A286400.P8281594092688505518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (A000069 (n + 1) - (n : ℤ)).toNat + A101671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286400.P8281594092688505518

/-! ## A286400.P1327949098746977321

`A284627(Δ[n²])*A286419(n+1)`
-/

namespace A286400.P1327949098746977321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A286419 (n + 1)

end

end A286400.P1327949098746977321

/-! ## A286400.P16653819053468754054

`A284848(2*n+1)*A286419(n+1)`
-/

namespace A286400.P16653819053468754054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (2 * n + 1) * A286419 (n + 1)

end

end A286400.P16653819053468754054

/-!
# A286401: Positions of 0 in A286400; complement of A286402.

The programs for A286401, there is no canonical definition to state claims against.
-/

/-! ## A286401.P13130721857563213188

`eq[1, A286400(n+1)+1]+1`
-/

namespace A286401.P13130721857563213188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286401.P13130721857563213188

/-! ## A286401.P6953794556127878467

`record[n+1-A000040(n+1)*A286400(n+1)]`
-/

namespace A286401.P6953794556127878467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A286400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286401.P6953794556127878467

/-! ## A286401.P16199749282827590849

`record[n+1-A000052(n+1)*A286400(n+1)]`
-/

namespace A286401.P16199749282827590849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000052 (n + 1) * A286400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286401.P16199749282827590849

/-! ## A286401.P14953515018110416173

`record[n+1-A006530(n+1)*A286400(n+1)]`
-/

namespace A286401.P14953515018110416173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A286400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286401.P14953515018110416173

/-! ## A286401.P10485740120007026838

`record[(n+1)/A053229(n*A286400(n+1)+1)]`
-/

namespace A286401.P10485740120007026838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053229 ((n : ℤ) * A286400 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286401.P10485740120007026838

/-!
# A286402: Positions of 1 in A286400; complement of A286401.

The programs for A286402, there is no canonical definition to state claims against.
-/

/-! ## A286402.P15848016389947526336

`record[A127254(n)*A286421(n+1)]`
-/

namespace A286402.P15848016389947526336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n * A286421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286402.P15848016389947526336

/-! ## A286402.P12542798297272620830

`filter[n+1, A286400(#)]`
-/

namespace A286402.P12542798297272620830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286400 (f1 j) = 1) n)

end

end A286402.P12542798297272620830

/-! ## A286402.P1729105381589942625

`eq[1, A286400(n+1)]+1`
-/

namespace A286402.P1729105381589942625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286402.P1729105381589942625

/-! ## A286402.P10572410815325556163

`eq[1, A286400(A028310(n))]`
-/

namespace A286402.P10572410815325556163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286402.P10572410815325556163

/-! ## A286402.P15070284865140731064

`record[A286400(n+2)+A286400(n+2)+n]`
-/

namespace A286402.P15070284865140731064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (n + 2) + (A286400 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286402.P15070284865140731064

/-! ## A286402.P11654265552618318729

`eq[1, A286400(A065033(2*n))]`
-/

namespace A286402.P11654265552618318729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286402.P11654265552618318729

/-! ## A286402.P6696171499086995354

`record[A008619(A029579(A284847(n+1)))]`
-/

namespace A286402.P6696171499086995354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A029579 (A284847 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286402.P6696171499086995354

/-!
# A286403: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A286403, there is no canonical definition to state claims against.
-/

/-! ## A286403.P12934296960417140072

`A007088(A286405(n))`
-/

namespace A286403.P12934296960417140072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286405 n).toNat

end

end A286403.P12934296960417140072

/-! ## A286403.P7467513730745406346

`A185544(2*A286405(n))`
-/

namespace A286403.P7467513730745406346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286405 n).toNat

end

end A286403.P7467513730745406346

/-! ## A286403.P17291765829341867274

`A286503(A004891(n+1))`
-/

namespace A286403.P17291765829341867274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286503 (A004891 (n + 1)).toNat

end

end A286403.P17291765829341867274

/-! ## A286403.P18411525965115151872

`A286503(A004902(n+1))`
-/

namespace A286403.P18411525965115151872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286503 (A004902 (n + 1)).toNat

end

end A286403.P18411525965115151872

/-!
# A286404: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A286404, there is no canonical definition to state claims against.
-/

/-! ## A286404.P16324388060733157006

`A007088(A286406(n))`
-/

namespace A286404.P16324388060733157006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286406 n).toNat

end

end A286404.P16324388060733157006

/-! ## A286404.P17996020579521215221

`A185544(2*A286406(n))`
-/

namespace A286404.P17996020579521215221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286406 n).toNat

end

end A286404.P17996020579521215221

/-! ## A286404.P16957497285395148368

`A286504(n)%(3^2^n)`
-/

namespace A286404.P16957497285395148368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286504 n) (3 ^ 2 ^ n : ℤ)

end

end A286404.P16957497285395148368

/-! ## A286404.P11604727410745097255

`A286504(n^gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#]))`
-/

namespace A286404.P11604727410745097255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286504 (n ^ Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A286404.P11604727410745097255

/-!
# A286405: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 181", based on the 5-celled von Neumann neighborhood.

The programs for A286405, there is no canonical definition to state claims against.
-/

/-! ## A286405.P6100590281913707304

`A286505(n)%(3^2^n)`
-/

namespace A286405.P6100590281913707304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286505 n) (3 ^ 2 ^ n : ℤ)

end

end A286405.P6100590281913707304

/-! ## A286405.P566234311891777628

`A286505(A004891(n+1))`
-/

namespace A286405.P566234311891777628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286505 (A004891 (n + 1)).toNat

end

end A286405.P566234311891777628

/-! ## A286405.P12063212251720397198

`A286505(A004902(n+1))`
-/

namespace A286405.P12063212251720397198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286505 (A004902 (n + 1)).toNat

end

end A286405.P12063212251720397198

/-! ## A286405.P15798004857526256716

`A286505(A004913(n+1))`
-/

namespace A286405.P15798004857526256716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286505 (A004913 (n + 1)).toNat

end

end A286405.P15798004857526256716

/-!
# A286407: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A286407, there is no canonical definition to state claims against.
-/

/-! ## A286407.P9046783856671713222

`A007088(A286409(n))`
-/

namespace A286407.P9046783856671713222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286409 n).toNat

end

end A286407.P9046783856671713222

/-! ## A286407.P13192889110935508835

`A185544(2*A286409(n))`
-/

namespace A286407.P13192889110935508835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286409 n).toNat

end

end A286407.P13192889110935508835

/-!
# A286408: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A286408, there is no canonical definition to state claims against.
-/

/-! ## A286408.P22718989492918613

`lcm(A007088(A060546(n)), A286407(n))`
-/

namespace A286408.P22718989492918613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007088 (A060546 n).toNat) (A286407 n)

end

end A286408.P22718989492918613

/-! ## A286408.P11933921875778479510

`A286508(n)*A305989(A286409(n))`
-/

namespace A286408.P11933921875778479510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A286409 n).toNat

end

end A286408.P11933921875778479510

/-! ## A286408.P6230842749856186613

`A007088(A286410(n))`
-/

namespace A286408.P6230842749856186613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286410 n).toNat

end

end A286408.P6230842749856186613

/-! ## A286408.P3734636980527575806

`A007088(lcm(A060546(n), A286409(n)))`
-/

namespace A286408.P3734636980527575806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A060546 n) (A286409 n))

end

end A286408.P3734636980527575806

/-! ## A286408.P8476421435011948576

`A286508(n)*A305989(A286410(n))`
-/

namespace A286408.P8476421435011948576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A286410 n).toNat

end

end A286408.P8476421435011948576

/-!
# A286409: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A286409, there is no canonical definition to state claims against.
-/

/-! ## A286409.P14478616358668213456

`A052551(n)-A032741(A283651(n))`
-/

namespace A286409.P14478616358668213456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n - A032741 (A283651 n).toNat

end

end A286409.P14478616358668213456

/-! ## A286409.P9109012303697957851

`∏{p}[(2^n-2^ceil(n/2))², #]-A233411(A286316(n))`
-/

namespace A286409.P9109012303697957851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) - (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p : ℕ) : ℤ) - A233411 (A286316 n).toNat

end

end A286409.P9109012303697957851

/-! ## A286409.P6151752605200086

`A184421(A280278(n))-A256244(2*a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A286409.P6151752605200086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A184421 (A280278 n).toNat - A256244 (2 * a (n - 1) ^ 2).toNat

end

end A286409.P6151752605200086

/-! ## A286409.P10240716258866925299

`∏{p}[A233411(n)², #]%(n+7)²-A233411(A286316(n))`
-/

namespace A286409.P10240716258866925299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) % (n + 7) ^ 2 : ℕ) : ℤ) - A233411 (A286316 n).toNat

end

end A286409.P10240716258866925299

/-!
# A286410: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 182", based on the 5-celled von Neumann neighborhood.

The programs for A286410, there is no canonical definition to state claims against.
-/

/-! ## A286410.P10797962321813866752

`lcm(A060546(n)%A233425(n+1), A286409(n))`
-/

namespace A286410.P10797962321813866752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A060546 n) (A233425 (n + 1))) (A286409 n)

end

end A286410.P10797962321813866752

/-! ## A286410.P13551642016206365374

`A000265(A286409(n))*A060546(n)`
-/

namespace A286410.P13551642016206365374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A286409 n).toNat * A060546 n

end

end A286410.P13551642016206365374

/-! ## A286410.P11235518973144362402

`A000265(A286409(n))*A016116(n+1)`
-/

namespace A286410.P11235518973144362402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A286409 n).toNat * A016116 (n + 1)

end

end A286410.P11235518973144362402

/-!
# A286411: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A286411, there is no canonical definition to state claims against.
-/

/-! ## A286411.P6223557618029274857

`A007088(A286413(n))`
-/

namespace A286411.P6223557618029274857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286413 n).toNat

end

end A286411.P6223557618029274857

/-! ## A286411.P17805364712849282385

`A185544(2*A286413(n))`
-/

namespace A286411.P17805364712849282385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286413 n).toNat

end

end A286411.P17805364712849282385

/-!
# A286412: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A286412, there is no canonical definition to state claims against.
-/

/-! ## A286412.P12885394263091996497

`A007088(A286414(n))`
-/

namespace A286412.P12885394263091996497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286414 n).toNat

end

end A286412.P12885394263091996497

/-! ## A286412.P16599782603769319973

`A286414(A028310(n))+A228071(A286414(n))`
-/

namespace A286412.P16599782603769319973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286414 (A028310 n).toNat + A228071 (A286414 n).toNat

end

end A286412.P16599782603769319973

/-! ## A286412.P95916462425353689

`A185544(2*A286414(n))`
-/

namespace A286412.P95916462425353689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286414 n).toNat

end

end A286412.P95916462425353689

/-!
# A286413: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A286413, there is no canonical definition to state claims against.
-/

/-! ## A286413.P3951609967422384316

`or(A286202(n), A346448(A346448(n)))`
-/

namespace A286413.P3951609967422384316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286202 n) (A346448 (A346448 n).toNat)

end

end A286413.P3951609967422384316

/-!
# A286414: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 185", based on the 5-celled von Neumann neighborhood.

The programs for A286414, there is no canonical definition to state claims against.
-/

/-! ## A286414.P5706967498169316646

`or(A286203(n), A372876(A058698(n+2)))`
-/

namespace A286414.P5706967498169316646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286203 n) (A372876 (A058698 (n + 2)).toNat)

end

end A286414.P5706967498169316646

/-!
# A286415: Primes p where all the cyclic shifts of their digits to the right also produce primes except the last one before reaching p again.

The programs for A286415, there is no canonical definition to state claims against.
-/

/-! ## A286415.P885268184317489711

`A115060(∩[A069682(n+1), A270083(n+1)])`
-/

namespace A286415.P885268184317489711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A286415.P885268184317489711

/-! ## A286415.P10208672501297536590

`∩[A069682(n+1), A151768(n+1)]`
-/

namespace A286415.P10208672501297536590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286415.P10208672501297536590

/-! ## A286415.P9090353813313611245

`A212245(∑[A185254(n)])+A068654(n+1)`
-/

namespace A286415.P9090353813313611245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212245 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A068654 (n + 1)

end

end A286415.P9090353813313611245

/-! ## A286415.P5243568122335422462

`A115060(∩[A231588(n+1), A270083(n+1)])`
-/

namespace A286415.P5243568122335422462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270083 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A286415.P5243568122335422462

/-!
# A286418: Array read by antidiagonals: T(n,m) is the number of (undirected) cycles in the rook graph K_n X K_m.

The programs for A286418, there is no canonical definition to state claims against.
-/

/-! ## A286418.P7165833064966752970

`A025460(A204572(n+1)+3)`
-/

namespace A286418.P7165833064966752970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (A204572 (n + 1) + 3).toNat

end

end A286418.P7165833064966752970

/-!
# A286419: {0100->1}-transform of the Thue-Morse word A010060.

The programs for A286419, there is no canonical definition to state claims against.
-/

/-! ## A286419.P5313839843749799204

`char[A286421(n+1)-1]`
-/

namespace A286419.P5313839843749799204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286421 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286419.P5313839843749799204

/-! ## A286419.P14719562695090352135

`char[comp[A286420(n+1)-1]]`
-/

namespace A286419.P14719562695090352135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286419.P14719562695090352135

/-! ## A286419.P3186459158816760818

`char[A286337(A000069(n+1)-n)+A001285(n)-1]`
-/

namespace A286419.P3186459158816760818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (A000069 (n + 1) - (n : ℤ)).toNat + A001285 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286419.P3186459158816760818

/-! ## A286419.P14232354139979096939

`char[A286337(2-A001285(n)+n)+A001285(n)-1]`
-/

namespace A286419.P14232354139979096939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (2 - A001285 n + (n : ℤ)).toNat + A001285 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286419.P14232354139979096939

/-! ## A286419.P16825288156258258553

`char[A286337(A000069(n+1)-n)+A059841(n)]`
-/

namespace A286419.P16825288156258258553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (A000069 (n + 1) - (n : ℤ)).toNat + A059841 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286419.P16825288156258258553

/-!
# A286420: Positions of 0 in A286419; complement of A286421.

The programs for A286420, there is no canonical definition to state claims against.
-/

/-! ## A286420.P14291021269781620015

`eq[0, A286419(n+1)]+1`
-/

namespace A286420.P14291021269781620015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286420.P14291021269781620015

/-! ## A286420.P7416183205720549416

`record[or(n, -A286419(n+2))+2]`
-/

namespace A286420.P7416183205720549416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-A286419 (n + 2)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286420.P7416183205720549416

/-! ## A286420.P16830973250280698446

`eq[char[A286421(n+1)], A000007(n)]`
-/

namespace A286420.P16830973250280698446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286420.P16830973250280698446

/-! ## A286420.P16889440189786715831

`record[n+1-A286419(n+1)*A325320(n+1)]`
-/

namespace A286420.P16889440189786715831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A286419 (n + 1) * A325320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286420.P16889440189786715831

/-! ## A286420.P10113957511507434362

`eq[A000007(n), A286419(A123108(2*n))]`
-/

namespace A286420.P10113957511507434362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286420.P10113957511507434362

/-!
# A286421: Positions of 1 in A286419; complement of A286420.

The programs for A286421, there is no canonical definition to state claims against.
-/

/-! ## A286421.P3847463806346207191

`comp[A286420(n+1)-1]+1`
-/

namespace A286421.P3847463806346207191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286421.P3847463806346207191

/-! ## A286421.P16456859086624061140

`A286337(A000069(n+1)-n)+A001285(n)`
-/

namespace A286421.P16456859086624061140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (A000069 (n + 1) - (n : ℤ)).toNat + A001285 n

end

end A286421.P16456859086624061140

/-! ## A286421.P16413662268138654326

`A286337(2-A001285(n)+n)+A001285(n)`
-/

namespace A286421.P16413662268138654326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (2 - A001285 n + (n : ℤ)).toNat + A001285 n

end

end A286421.P16413662268138654326

/-! ## A286421.P2124452281973788449

`filter[n+1, A286419(#)]`
-/

namespace A286421.P2124452281973788449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286419 (f1 j) = 1) n)

end

end A286421.P2124452281973788449

/-! ## A286421.P12436798919959351018

`lt[0, A286419(n+1)]+1`
-/

namespace A286421.P12436798919959351018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A286421.P12436798919959351018

/-! ## A286421.P13639007559808982232

`eq[1, A286419(n+2)]+2`
-/

namespace A286421.P13639007559808982232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A286421.P13639007559808982232

/-! ## A286421.P892197970043829659

`A020725(eq[1, A286419(n+1)])`
-/

namespace A286421.P892197970043829659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286421.P892197970043829659

/-! ## A286421.P643792260459070619

`eq[1, A286419(A000007(n)+n)]`
-/

namespace A286421.P643792260459070619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286421.P643792260459070619

/-! ## A286421.P12353482622097381427

`record[A008619(2*(n+1))*A286419(n+2)]`
-/

namespace A286421.P12353482622097381427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (n + 1)) * A286419 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286421.P12353482622097381427

/-! ## A286421.P2384164693371149356

`eq[1, A286419(A123108(2*n))]`
-/

namespace A286421.P2384164693371149356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286419 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286421.P2384164693371149356

/-!
# A286422: Number of matchings in the n X n black bishop graph.

The programs for A286422, there is no canonical definition to state claims against.
-/

/-! ## A286422.P16390146295745418004

`A287248(n+2)/A286423(n+2)`
-/

namespace A286422.P16390146295745418004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287248 (n + 2) : ℚ) / (A286423 (n + 2) : ℚ)

end

end A286422.P16390146295745418004

/-!
# A286423: Number of matchings in the n X n white bishop graph.

The programs for A286423, there is no canonical definition to state claims against.
-/

/-! ## A286423.P3237982481947946186

`A287248(n+2)/A286422(n+2)`
-/

namespace A286423.P3237982481947946186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287248 (n + 2) : ℚ) / (A286422 (n + 2) : ℚ)

end

end A286423.P3237982481947946186

/-!
# A286424: Number of partitions of p_n# into parts (q, k) both coprime to p_n#, with q prime and k nonprime, where p_n# = A002110(n).

The programs for A286424, there is no canonical definition to state claims against.
-/

/-! ## A286424.P15733506448346967103

`A048862(n)-2*A117929(A002110(n))`
-/

namespace A286424.P15733506448346967103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 n - 2 * A117929 (A002110 n).toNat

end

end A286424.P15733506448346967103

/-! ## A286424.P8469230745214556996

`A005867(n)-A048863(n)-2*A117929(A002110(n))`
-/

namespace A286424.P8469230745214556996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n - A048863 n - 2 * A117929 (A002110 n).toNat

end

end A286424.P8469230745214556996

/-!
# A286425: Total number of nodes summed over all lattice paths from (0,0) to (n,n) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1) and S=(0,1).

The programs for A286425, there is no canonical definition to state claims against.
-/

/-! ## A286425.P13345274711364127715

`A311931(A369146(n))+n²`
-/

namespace A286425.P13345274711364127715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311931 (A369146 n).toNat + (n ^ 2 : ℤ)

end

end A286425.P13345274711364127715

/-! ## A286425.P1129277233928620895

`A141351(n)-A024000(A349531(n))`
-/

namespace A286425.P1129277233928620895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n - A024000 (A349531 n).toNat

end

end A286425.P1129277233928620895

/-!
# A286427: Total number of nodes summed over all lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1) and S=(0,1).

The programs for A286427, there is no canonical definition to state claims against.
-/

/-! ## A286427.P14025612495790437918

`Δ[A000045(n)]*A194969(A002478(n))`
-/

namespace A286427.P14025612495790437918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A194969 (A002478 n).toNat

end

end A286427.P14025612495790437918

/-! ## A286427.P11381580029802215819

`A363899(n+4)+A289495(A302187(n))`
-/

namespace A286427.P11381580029802215819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (n + 4) + A289495 (A302187 n).toNat

end

end A286427.P11381580029802215819

/-!
# A286428: Beatty sequence of (12 + sqrt(12))/11; complement of A194028.

The programs for A286428, the canonical program `A286428.P4537920726927909920` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286428 has offset 1).

The definition of A286428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286428.P4537920726927909920

`comp[floor(n*sqrt(12))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286428

/-- `comp[floor(n*sqrt(12))]` -/
def P4537920726927909920.Spec : Prop :=
  ∀ n, (P4537920726927909920.a n : ℤ) = A286428 (n + 1)

theorem P4537920726927909920.correct : P4537920726927909920.Spec := by
  intro n
  simp only [A286428, Nat.add_sub_cancel]

end A286428

/-! ## A286428.P6261560746645669572

`∑[char[A198269(n)-(n+1)]+1]`
-/

namespace A286428.P6261560746645669572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 n - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286428.P6261560746645669572

namespace A286428

/-- `∑[char[A198269(n)-(n+1)]+1]` -/
def P6261560746645669572.Spec : Prop :=
  ∀ n, (P6261560746645669572.a n : ℤ) = A286428 (n + 1)

end A286428

/-! ## A286428.P13643500857570398914

`A000027(comp[A000035(n)*A022838(n+1)])`
-/

namespace A286428.P13643500857570398914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A022838 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286428.P13643500857570398914

namespace A286428

/-- `A000027(comp[A000035(n)*A022838(n+1)])` -/
def P13643500857570398914.Spec : Prop :=
  ∀ n, P13643500857570398914.a n = A286428 (n + 1)

end A286428

/-! ## A286428.P8664340105284922680

`A028310(comp[A000035(n)*A022838(n+1)])`
-/

namespace A286428.P8664340105284922680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A022838 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286428.P8664340105284922680

namespace A286428

/-- `A028310(comp[A000035(n)*A022838(n+1)])` -/
def P8664340105284922680.Spec : Prop :=
  ∀ n, P8664340105284922680.a n = A286428 (n + 1)

end A286428

/-! ## A286428.P2212561328555409746

`record[A286748(A154958(n))+A154958(n)]`
-/

namespace A286428.P2212561328555409746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286748 (A154958 n).toNat + A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286428.P2212561328555409746

namespace A286428

/-- `record[A286748(A154958(n))+A154958(n)]` -/
def P2212561328555409746.Spec : Prop :=
  ∀ n, P2212561328555409746.a n = A286428 (n + 1)

end A286428

/-! ## A286428.P11202942764405703069

`A008619(3*n-A108611(n))`
-/

namespace A286428.P11202942764405703069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((3 * n : ℤ) - A108611 n).toNat

end

end A286428.P11202942764405703069

namespace A286428

/-- `A008619(3*n-A108611(n))` -/
def P11202942764405703069.Spec : Prop :=
  ∀ n, P11202942764405703069.a n = A286428 (n + 1)

end A286428

/-! ## A286428.P13559523421889964792

`A008619(n-A108611(n))+n`
-/

namespace A286428.P13559523421889964792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A108611 n).toNat + (n : ℤ)

end

end A286428.P13559523421889964792

namespace A286428

/-- `A008619(n-A108611(n))+n` -/
def P13559523421889964792.Spec : Prop :=
  ∀ n, P13559523421889964792.a n = A286428 (n + 1)

end A286428

/-! ## A286428.P13725028436125803559

`A016789(n)-A330095(n+1)`
-/

namespace A286428.P13725028436125803559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A330095 (n + 1)

end

end A286428.P13725028436125803559

namespace A286428

/-- `A016789(n)-A330095(n+1)` -/
def P13725028436125803559.Spec : Prop :=
  ∀ n, P13725028436125803559.a n = A286428 (n + 1)

end A286428

/-! ## A286428.P8420535174138921793

`A000194(A361070(n+2))+n`
-/

namespace A286428.P8420535174138921793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A361070 (n + 2)).toNat + (n : ℤ)

end

end A286428.P8420535174138921793

namespace A286428

/-- `A000194(A361070(n+2))+n` -/
def P8420535174138921793.Spec : Prop :=
  ∀ n, P8420535174138921793.a n = A286428 (n + 1)

end A286428

/-!
# A286429: Highest elevation of an island above sea level in a number square.

The programs for A286429, the canonical program `A286429.P12012707902235667482` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286429 has offset 0).

The definition of A286429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286429.P15490399588694494519

`(n-2)*(2%(n+1)+n+2)%(2*n+1)`
-/

namespace A286429.P15490399588694494519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (((2 % (n + 1) + (n + 2)) % (2 * n + 1) : ℕ) : ℤ)

end

end A286429.P15490399588694494519

namespace A286429

/-- `(n-2)*(2%(n+1)+n+2)%(2*n+1)` -/
def P15490399588694494519.Spec : Prop :=
  ∀ n, P15490399588694494519.a n = A286429 n

end A286429

/-! ## A286429.P12012707902235667482

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=16, a(5)=27, a(6)=40`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286429

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12012707902235667482.Spec : Prop :=
  ∀ n, P12012707902235667482.a n = A286429 n

theorem P12012707902235667482.correct : P12012707902235667482.Spec := by
  intro n
  simp only [A286429]

end A286429

/-! ## A286429.P7391198591257394657

`(n-2)*(n+4)%A002061(n)`
-/

namespace A286429.P7391198591257394657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * Int.tmod (n + 4 : ℤ) (A002061 n)

end

end A286429.P7391198591257394657

namespace A286429

/-- `(n-2)*(n+4)%A002061(n)` -/
def P7391198591257394657.Spec : Prop :=
  ∀ n, P7391198591257394657.a n = A286429 n

end A286429

/-! ## A286429.P2257779722863121139

`A157909(n+1)%(A185114(n)+n)²`
-/

namespace A286429.P2257779722863121139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157909 (n + 1)) ((A185114 n + (n : ℤ)) ^ 2)

end

end A286429.P2257779722863121139

namespace A286429

/-- `A157909(n+1)%(A185114(n)+n)²` -/
def P2257779722863121139.Spec : Prop :=
  ∀ n, P2257779722863121139.a n = A286429 n

end A286429

/-! ## A286429.P17790032669692808795

`(A289207(n*A130543(n))+6)*A289207(n*A130543(n))`
-/

namespace A286429.P17790032669692808795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289207 ((n : ℤ) * A130543 n).toNat + 6) * A289207 ((n : ℤ) * A130543 n).toNat

end

end A286429.P17790032669692808795

namespace A286429

/-- `(A289207(n*A130543(n))+6)*A289207(n*A130543(n))` -/
def P17790032669692808795.Spec : Prop :=
  ∀ n, P17790032669692808795.a n = A286429 n

end A286429

/-! ## A286429.P18355568642441983842

`A028560(A289207(n))%A014551(n)`
-/

namespace A286429.P18355568642441983842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028560 (A289207 n).toNat) (A014551 n)

end

end A286429.P18355568642441983842

namespace A286429

/-- `A028560(A289207(n))%A014551(n)` -/
def P18355568642441983842.Spec : Prop :=
  ∀ n, P18355568642441983842.a n = A286429 n

end A286429

/-! ## A286429.P5918694317992287423

`((n+4)*(n-2))%A071684(n+1)`
-/

namespace A286429.P5918694317992287423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 4 : ℤ) * ((n : ℤ) - 2)) (A071684 (n + 1))

end

end A286429.P5918694317992287423

namespace A286429

/-- `((n+4)*(n-2))%A071684(n+1)` -/
def P5918694317992287423.Spec : Prop :=
  ∀ n, P5918694317992287423.a n = A286429 n

end A286429

/-! ## A286429.P10401344045556809285

`A053186(A027689(n))*A289207(n)`
-/

namespace A286429.P10401344045556809285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A027689 n).toNat * A289207 n

end

end A286429.P10401344045556809285

namespace A286429

/-- `A053186(A027689(n))*A289207(n)` -/
def P10401344045556809285.Spec : Prop :=
  ∀ n, P10401344045556809285.a n = A286429 n

end A286429

/-! ## A286429.P13369079158810125811

`((n+1)²-9)%A258282(n+7)`
-/

namespace A286429.P13369079158810125811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) - 9) (A258282 (n + 7))

end

end A286429.P13369079158810125811

namespace A286429

/-- `((n+1)²-9)%A258282(n+7)` -/
def P13369079158810125811.Spec : Prop :=
  ∀ n, P13369079158810125811.a n = A286429 n

end A286429

/-!
# A286430: Least volume of water to surround the largest possible island in a number square.

The programs for A286430, the canonical program `A286430.P9967786918482809508` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286430 has offset 0).

The definition of A286430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286430.P9967786918482809508

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=36, a(5)=78, a(6)=136`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286430

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9967786918482809508.Spec : Prop :=
  ∀ n, P9967786918482809508.a n = A286430 n

theorem P9967786918482809508.correct : P9967786918482809508.Spec := by
  intro n
  simp only [A286430]

end A286430

/-! ## A286430.P11537930348220713698

`A033585((n-2)*A130543(n))`
-/

namespace A286430.P11537930348220713698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 (((n : ℤ) - 2) * A130543 n).toNat

end

end A286430.P11537930348220713698

namespace A286430

/-- `A033585((n-2)*A130543(n))` -/
def P11537930348220713698.Spec : Prop :=
  ∀ n, P11537930348220713698.a n = A286430 n

end A286430

/-! ## A286430.P9333530661704353250

`A033585(A289207(n*A130543(n)))`
-/

namespace A286430.P9333530661704353250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 (A289207 ((n : ℤ) * A130543 n).toNat).toNat

end

end A286430.P9333530661704353250

namespace A286430

/-- `A033585(A289207(n*A130543(n)))` -/
def P9333530661704353250.Spec : Prop :=
  ∀ n, P9333530661704353250.a n = A286430 n

end A286430

/-! ## A286430.P10298313978168436060

`A033585(A289207(n*A185114(n)))`
-/

namespace A286430.P10298313978168436060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 (A289207 ((n : ℤ) * A185114 n).toNat).toNat

end

end A286430.P10298313978168436060

namespace A286430

/-- `A033585(A289207(n*A185114(n)))` -/
def P10298313978168436060.Spec : Prop :=
  ∀ n, P10298313978168436060.a n = A286430 n

end A286430

/-! ## A286430.P16994005763288145892

`A000217((n-2)*4%(n+1))`
-/

namespace A286430.P16994005763288145892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (((n : ℤ) - 2) * ((4 % (n + 1) : ℕ) : ℤ)).toNat

end

end A286430.P16994005763288145892

namespace A286430

/-- `A000217((n-2)*4%(n+1))` -/
def P16994005763288145892.Spec : Prop :=
  ∀ n, P16994005763288145892.a n = A286430 n

end A286430

/-! ## A286430.P14203104941542258587

`A000217(A237420(record[A266794(n)]))`
-/

namespace A286430.P14203104941542258587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A237420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A286430.P14203104941542258587

namespace A286430

/-- `A000217(A237420(record[A266794(n)]))` -/
def P14203104941542258587.Spec : Prop :=
  ∀ n, P14203104941542258587.a n = A286430 n

end A286430

/-! ## A286430.P18225371434751936868

`A001971(A266222(record[A266794(n)]))`
-/

namespace A286430.P18225371434751936868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A266222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A286430.P18225371434751936868

namespace A286430

/-- `A001971(A266222(record[A266794(n)]))` -/
def P18225371434751936868.Spec : Prop :=
  ∀ n, P18225371434751936868.a n = A286430 n

end A286430

/-! ## A286430.P9365324528973641880

`A014105(Δ[A131268(A145018(n+1))])`
-/

namespace A286430.P9365324528973641880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 (A145018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (f1 (n + 1) - f1 n).toNat

end

end A286430.P9365324528973641880

namespace A286430

/-- `A014105(Δ[A131268(A145018(n+1))])` -/
def P9365324528973641880.Spec : Prop :=
  ∀ n, P9365324528973641880.a n = A286430 n

end A286430

/-! ## A286430.P16336930084271893199

`A000217(A004247(A052905(n)%A023194(n+1)))`
-/

namespace A286430.P16336930084271893199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004247 (Int.tmod (A052905 n) (A023194 (n + 1))).toNat).toNat

end

end A286430.P16336930084271893199

namespace A286430

/-- `A000217(A004247(A052905(n)%A023194(n+1)))` -/
def P16336930084271893199.Spec : Prop :=
  ∀ n, P16336930084271893199.a n = A286430 n

end A286430

/-!
# A286431: Numbers k such that (22*10^k + 53)/3 is prime.

The programs for A286431, there is no canonical definition to state claims against.
-/

/-! ## A286431.P11212841439540674532

`A173786(lt[A114246(n+1), A360693(3*n)])`
-/

namespace A286431.P11212841439540674532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360693 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286431.P11212841439540674532

/-!
# A286432: Numbers of labeled rooted Greg trees (A005264) with n nodes and root degree 2.

The programs for A286432, there is no canonical definition to state claims against.
-/

/-! ## A286432.P14778024824092974080

`A245894(n+1)-A000178(n)%55`
-/

namespace A286432.P14778024824092974080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245894 (n + 1) - Int.tmod (A000178 n) 55

end

end A286432.P14778024824092974080

/-!
# A286433: Number of entries in the second last blocks of all set partitions of [n].

The programs for A286433, there is no canonical definition to state claims against.
-/

/-! ## A286433.P16301930993935302247

`∑[Δ[A060719(n)]-1]`
-/

namespace A286433.P16301930993935302247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286433.P16301930993935302247

/-! ## A286433.P1706603030648037343

`A286416(∑[n+1]+2)`
-/

namespace A286433.P1706603030648037343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286416 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A286433.P1706603030648037343

/-! ## A286433.P16672637100772099137

`∑[2*A005493(n)-1]`
-/

namespace A286433.P16672637100772099137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005493 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286433.P16672637100772099137

/-! ## A286433.P8014279135766077501

`A060719(n+1)-(n+2)`
-/

namespace A286433.P8014279135766077501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 (n + 1) - (n + 2 : ℤ)

end

end A286433.P8014279135766077501

/-! ## A286433.P18224485221319577380

`A186021(n+2)-(n+3)`
-/

namespace A286433.P18224485221319577380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 (n + 2) - (n + 3 : ℤ)

end

end A286433.P18224485221319577380

/-! ## A286433.P14210913504244541419

`record[2*A000110(n)-(n+1)]`
-/

namespace A286433.P14210913504244541419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000110 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286433.P14210913504244541419

/-! ## A286433.P1467974544545368208

`∑[2*Δ[A011971(∑[n+1])]-1]`
-/

namespace A286433.P1467974544545368208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286433.P1467974544545368208

/-!
# A286437: Number of ways to tile an n X n X n triangular area with two 2 X 2 X 2 triangular tiles and an appropriate number (= n^2-8) of 1 X 1 X 1 tiles.

The programs for A286437, the canonical program `A286437.P15914424491503199689` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286437 has offset 3).

The definition of A286437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286437.P17903249997209443355

`n*((n-1)*(n+3)*(n+4)+18)/2`
-/

namespace A286437.P17903249997209443355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (((n : ℤ) - 1) * (n + 3 : ℤ) * (n + 4 : ℤ) + 18) : ℚ) / 2

end

end A286437.P17903249997209443355

namespace A286437

/-- `n*((n-1)*(n+3)*(n+4)+18)/2` -/
def P17903249997209443355.Spec : Prop :=
  ∀ n, P17903249997209443355.a n = (A286437 (n + 3) : ℚ)

theorem P17903249997209443355.correct : P17903249997209443355.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A286437, Nat.add_sub_cancel, A286437.P17903249997209443355.a, A286437.P15914424491503199689.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A286437, Nat.add_sub_cancel, A286437.P17903249997209443355.a, A286437.P15914424491503199689.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A286437

/-! ## A286437.P15914424491503199689

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=9, a(2)=48, a(3)=153, a(4)=372`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286437

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15914424491503199689.Spec : Prop :=
  ∀ n, P15914424491503199689.a n = A286437 (n + 3)

theorem P15914424491503199689.correct : P15914424491503199689.Spec := by
  intro n
  simp only [A286437, Nat.add_sub_cancel]

end A286437

/-! ## A286437.P9483109228438557141

`A033486(n)-3*n²`
-/

namespace A286437.P9483109228438557141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n - (3 * n ^ 2 : ℤ)

end

end A286437.P9483109228438557141

namespace A286437

/-- `A033486(n)-3*n²` -/
def P9483109228438557141.Spec : Prop :=
  ∀ n, P9483109228438557141.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P7639998744837714825

`3*n+n*A267370(n)`
-/

namespace A286437.P7639998744837714825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (n : ℤ) * A267370 n

end

end A286437.P7639998744837714825

namespace A286437

/-- `3*n+n*A267370(n)` -/
def P7639998744837714825.Spec : Prop :=
  ∀ n, P7639998744837714825.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P7393301204658767820

`A143008(n)-(n²+1)²`
-/

namespace A286437.P7393301204658767820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n - ((n ^ 2 + 1) ^ 2 : ℤ)

end

end A286437.P7393301204658767820

namespace A286437

/-- `A143008(n)-(n²+1)²` -/
def P7393301204658767820.Spec : Prop :=
  ∀ n, P7393301204658767820.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P4906536620659326321

`3*n+(n+5)*A002411(n)`
-/

namespace A286437.P4906536620659326321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (n + 5 : ℤ) * A002411 n

end

end A286437.P4906536620659326321

namespace A286437

/-- `3*n+(n+5)*A002411(n)` -/
def P4906536620659326321.Spec : Prop :=
  ∀ n, P4906536620659326321.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P2521541901049536100

`n*((n+1)*(A028347(n+2)+n)/2+2)+n`
-/

namespace A286437.P2521541901049536100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n + 1 : ℤ) * (A028347 (n + 2) + (n : ℤ)) : ℚ) / 2 + 2) + (n : ℚ)

end

end A286437.P2521541901049536100

namespace A286437

/-- `n*((n+1)*(A028347(n+2)+n)/2+2)+n` -/
def P2521541901049536100.Spec : Prop :=
  ∀ n, P2521541901049536100.a n = (A286437 (n + 3) : ℚ)

end A286437

/-! ## A286437.P6945167982326907060

`A117665(n)+A110451(n)`
-/

namespace A286437.P6945167982326907060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117665 n + A110451 n

end

end A286437.P6945167982326907060

namespace A286437

/-- `A117665(n)+A110451(n)` -/
def P6945167982326907060.Spec : Prop :=
  ∀ n, P6945167982326907060.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P1994882472245869428

`A054602(n)+∑[A055112(n)]`
-/

namespace A286437.P1994882472245869428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286437.P1994882472245869428

namespace A286437

/-- `A054602(n)+∑[A055112(n)]` -/
def P1994882472245869428.Spec : Prop :=
  ∀ n, P1994882472245869428.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P15265017261353051324

`A212134(n)+∑[A033580(n)]`
-/

namespace A286437.P15265017261353051324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286437.P15265017261353051324

namespace A286437

/-- `A212134(n)+∑[A033580(n)]` -/
def P15265017261353051324.Spec : Prop :=
  ∀ n, P15265017261353051324.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P3323177397756504643

`A083374(n+1)+A054602(n)`
-/

namespace A286437.P3323177397756504643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + A054602 n

end

end A286437.P3323177397756504643

namespace A286437

/-- `A083374(n+1)+A054602(n)` -/
def P3323177397756504643.Spec : Prop :=
  ∀ n, P3323177397756504643.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P17211430603413157000

`A212134(n)+A035006(n+1)`
-/

namespace A286437.P17211430603413157000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + A035006 (n + 1)

end

end A286437.P17211430603413157000

namespace A286437

/-- `A212134(n)+A035006(n+1)` -/
def P17211430603413157000.Spec : Prop :=
  ∀ n, P17211430603413157000.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P18280797714931532078

`A292058(n+1)-A000384(n)`
-/

namespace A286437.P18280797714931532078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292058 (n + 1) - A000384 n

end

end A286437.P18280797714931532078

namespace A286437

/-- `A292058(n+1)-A000384(n)` -/
def P18280797714931532078.Spec : Prop :=
  ∀ n, P18280797714931532078.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P17548410156813041281

`2*A000096(n)²-A014107(n)`
-/

namespace A286437.P17548410156813041281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000096 n ^ 2 - A014107 n

end

end A286437.P17548410156813041281

namespace A286437

/-- `2*A000096(n)²-A014107(n)` -/
def P17548410156813041281.Spec : Prop :=
  ∀ n, P17548410156813041281.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P1816350697484627688

`A028552(n)²/2-A014107(n)`
-/

namespace A286437.P1816350697484627688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028552 n ^ 2 : ℚ) / 2 - (A014107 n : ℚ)

end

end A286437.P1816350697484627688

namespace A286437

/-- `A028552(n)²/2-A014107(n)` -/
def P1816350697484627688.Spec : Prop :=
  ∀ n, P1816350697484627688.a n = (A286437 (n + 3) : ℚ)

end A286437

/-! ## A286437.P5123128587603225234

`A008585(n)+∑[n]*A028557(n)`
-/

namespace A286437.P5123128587603225234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A028557 n

end

end A286437.P5123128587603225234

namespace A286437

/-- `A008585(n)+∑[n]*A028557(n)` -/
def P5123128587603225234.Spec : Prop :=
  ∀ n, P5123128587603225234.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P3549986887885311753

`(n*(n+5)+7)*A000217(n)-A022265(n)`
-/

namespace A286437.P3549986887885311753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) + 7 : ℤ) * A000217 n - A022265 n

end

end A286437.P3549986887885311753

namespace A286437

/-- `(n*(n+5)+7)*A000217(n)-A022265(n)` -/
def P3549986887885311753.Spec : Prop :=
  ∀ n, P3549986887885311753.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P12906064031310263404

`A000096(n+1)*A002378(n)-A000384(n)`
-/

namespace A286437.P12906064031310263404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) * A002378 n - A000384 n

end

end A286437.P12906064031310263404

namespace A286437

/-- `A000096(n+1)*A002378(n)-A000384(n)` -/
def P12906064031310263404.Spec : Prop :=
  ∀ n, P12906064031310263404.a n = A286437 (n + 3)

end A286437

/-! ## A286437.P17618762246858545748

`A000217(n)*A028552(n+1)-A000384(n)`
-/

namespace A286437.P17618762246858545748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A028552 (n + 1) - A000384 n

end

end A286437.P17618762246858545748

namespace A286437

/-- `A000217(n)*A028552(n+1)-A000384(n)` -/
def P17618762246858545748.Spec : Prop :=
  ∀ n, P17618762246858545748.a n = A286437 (n + 3)

end A286437

/-!
# A286444: Number of non-equivalent ways to tile an n X n X n triangular area with two 2 X 2 X 2 triangular tiles and an appropriate number (= n^2-8) of 1 X 1 X 1 tiles.

The programs for A286444, the canonical program `A286444.P10802065955718381120` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286444 has offset 3).

The definition of A286444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286444.P10802065955718381120

`∑[∑[n*xor(1, n+1)]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286444

/-- `∑[∑[n*xor(1, n+1)]]` -/
def P10802065955718381120.Spec : Prop :=
  ∀ n, (P10802065955718381120.a n : ℤ) = A286444 (n + 3)

theorem P10802065955718381120.correct : P10802065955718381120.Spec := by
  intro n
  simp only [A286444, Nat.add_sub_cancel]

end A286444

/-! ## A286444.P11212712677087456604

`∑[∑[n²*ratio[or(1, n)]]]`
-/

namespace A286444.P11212712677087456604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286444.P11212712677087456604

namespace A286444

/-- `∑[∑[n²*ratio[or(1, n)]]]` -/
def P11212712677087456604.Spec : Prop :=
  ∀ n, P11212712677087456604.a n = (A286444 (n + 3) : ℚ)

end A286444

/-! ## A286444.P11322330715622484699

`∑[∑[n*(Δ[or(1, n)]+n)]]`
-/

namespace A286444.P11322330715622484699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286444.P11322330715622484699

namespace A286444

/-- `∑[∑[n*(Δ[or(1, n)]+n)]]` -/
def P11322330715622484699.Spec : Prop :=
  ∀ n, P11322330715622484699.a n = A286444 (n + 3)

end A286444

/-! ## A286444.P5099361405966023551

`∑[∑[n*n*ratio[or(1, n)]]]`
-/

namespace A286444.P5099361405966023551
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ)))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286444.P5099361405966023551

namespace A286444

/-- `∑[∑[n*n*ratio[or(1, n)]]]` -/
def P5099361405966023551.Spec : Prop :=
  ∀ n, P5099361405966023551.a n = (A286444 (n + 3) : ℚ)

end A286444

/-! ## A286444.P16961001350379912017

`∑[∑[n*(2*n%2+n)]]`
-/

namespace A286444.P16961001350379912017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * (n % 2) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286444.P16961001350379912017

namespace A286444

/-- `∑[∑[n*(2*n%2+n)]]` -/
def P16961001350379912017.Spec : Prop :=
  ∀ n, (P16961001350379912017.a n : ℤ) = A286444 (n + 3)

end A286444

/-! ## A286444.P9952173853400546641

`∑[∑[n*(2*and(1, n)+n)]]`
-/

namespace A286444.P9952173853400546641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * Nat.land 1 n + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286444.P9952173853400546641

namespace A286444

/-- `∑[∑[n*(2*and(1, n)+n)]]` -/
def P9952173853400546641.Spec : Prop :=
  ∀ n, (P9952173853400546641.a n : ℤ) = A286444 (n + 3)

end A286444

/-! ## A286444.P13911523940501256260

`∑[∑[n*(1-(-1)^n+n)]]`
-/

namespace A286444.P13911523940501256260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (-1) ^ n + (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286444.P13911523940501256260

namespace A286444

/-- `∑[∑[n*(1-(-1)^n+n)]]` -/
def P13911523940501256260.Spec : Prop :=
  ∀ n, P13911523940501256260.a n = A286444 (n + 3)

end A286444

/-! ## A286444.P9182483147134621811

`A093353(n)+A014205(n)`
-/

namespace A286444.P9182483147134621811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n + A014205 n

end

end A286444.P9182483147134621811

namespace A286444

/-- `A093353(n)+A014205(n)` -/
def P9182483147134621811.Spec : Prop :=
  ∀ n, P9182483147134621811.a n = A286444 (n + 3)

end A286444

/-! ## A286444.P13136342872633603197

`A014629(n+1)-A105638(n+3)`
-/

namespace A286444.P13136342872633603197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014629 (n + 1) - A105638 (n + 3)

end

end A286444.P13136342872633603197

namespace A286444

/-- `A014629(n+1)-A105638(n+3)` -/
def P13136342872633603197.Spec : Prop :=
  ∀ n, P13136342872633603197.a n = A286444 (n + 3)

end A286444

/-! ## A286444.P13341686197064970661

`A142150(n+1)+∑[A006918(2*n)]`
-/

namespace A286444.P13341686197064970661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286444.P13341686197064970661

namespace A286444

/-- `A142150(n+1)+∑[A006918(2*n)]` -/
def P13341686197064970661.Spec : Prop :=
  ∀ n, P13341686197064970661.a n = A286444 (n + 3)

end A286444

/-!
# A286445: Number of non-equivalent ways to tile an n X n X n triangular area with three 2 X 2 X 2 triangular tiles and an appropriate number (= n^2-12) of 1 X 1 X 1 tiles.

The programs for A286445, there is no canonical definition to state claims against.
-/

/-! ## A286445.P14241691100007094879

`A160126(A271269(n+2))+n`
-/

namespace A286445.P14241691100007094879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160126 (A271269 (n + 2)).toNat + (n : ℤ)

end

end A286445.P14241691100007094879

/-!
# A286446: Number of non-equivalent ways to tile an n X n X n triangular area with four 2 X 2 X 2 triangular tiles and an appropriate number (= n^2-16) of 1 X 1 X 1 tiles.

The programs for A286446, there is no canonical definition to state claims against.
-/

/-! ## A286446.P17510473740304261882

`∑{e}[n+1, #]*A246173(A001628(n))`
-/

namespace A286446.P17510473740304261882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A246173 (A001628 n).toNat

end

end A286446.P17510473740304261882

/-!
# A286448: Restricted growth sequence computed for A252748 (= A003961(n) - 2*n).

The programs for A286448, there is no canonical definition to state claims against.
-/

/-! ## A286448.P1255899529523808399

`A002260(A286458(n+1))`
-/

namespace A286448.P1255899529523808399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286458 (n + 1)).toNat

end

end A286448.P1255899529523808399

/-! ## A286448.P3041342472283869281

`A131818(A286458(n+1)+1)-1`
-/

namespace A286448.P3041342472283869281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A286458 (n + 1) + 1).toNat - 1

end

end A286448.P3041342472283869281

/-! ## A286448.P12628868455653508830

`A003991(A286458(n+1))/A286449(n+1)`
-/

namespace A286448.P12628868455653508830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286458 (n + 1)).toNat : ℚ) / (A286449 (n + 1) : ℚ)

end

end A286448.P12628868455653508830

/-! ## A286448.P14692243086616659282

`A003991(A286458(n+1))/A004736(A286593(n+1))`
-/

namespace A286448.P14692243086616659282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286458 (n + 1)).toNat : ℚ) / (A004736 (A286593 (n + 1)).toNat : ℚ)

end

end A286448.P14692243086616659282

/-! ## A286448.P17006846566005313429

`A003991(A286458(n+1))/A004736(A286595(n+1))`
-/

namespace A286448.P17006846566005313429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286458 (n + 1)).toNat : ℚ) / (A004736 (A286595 (n + 1)).toNat : ℚ)

end

end A286448.P17006846566005313429

/-! ## A286448.P897984290011139784

`A003991(A286458(n+1)+A286449(n+1))-A286449(n+1)`
-/

namespace A286448.P897984290011139784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A286458 (n + 1) + A286449 (n + 1)).toNat - A286449 (n + 1)

end

end A286448.P897984290011139784

/-! ## A286448.P3736029071832853449

`A003991(A286458(n+1))/A004736(A286592(n+1))`
-/

namespace A286448.P3736029071832853449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286458 (n + 1)).toNat : ℚ) / (A004736 (A286592 (n + 1)).toNat : ℚ)

end

end A286448.P3736029071832853449

/-!
# A286449: Restricted growth sequence computed for A033879 (deficiency), or equally, for A033880 (abundance of n).

The programs for A286449, there is no canonical definition to state claims against.
-/

/-! ## A286449.P1657986981201032354

`A004736(A286593(n+1))`
-/

namespace A286449.P1657986981201032354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286593 (n + 1)).toNat

end

end A286449.P1657986981201032354

/-! ## A286449.P15138950527649238749

`A004736(A286595(n+1))`
-/

namespace A286449.P15138950527649238749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286595 (n + 1)).toNat

end

end A286449.P15138950527649238749

/-! ## A286449.P8321711339175388141

`A193592(A286595(n+1))+A043545(n)`
-/

namespace A286449.P8321711339175388141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A286595 (n + 1)).toNat + A043545 n

end

end A286449.P8321711339175388141

/-! ## A286449.P8135435862435776865

`A002024(A286595(n+1))-A007814(n+1)`
-/

namespace A286449.P8135435862435776865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A286595 (n + 1)).toNat - A007814 (n + 1)

end

end A286449.P8135435862435776865

/-! ## A286449.P989546974877100514

`A003991(A286595(n+1))/A001511(n+1)`
-/

namespace A286449.P989546974877100514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286595 (n + 1)).toNat : ℚ) / (A001511 (n + 1) : ℚ)

end

end A286449.P989546974877100514

/-! ## A286449.P12518011958302170439

`A002260(A038722(A286458(n+1)))`
-/

namespace A286449.P12518011958302170439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (A286458 (n + 1)).toNat).toNat

end

end A286449.P12518011958302170439

/-! ## A286449.P9252630553917444173

`A004736(A286458(n+1))`
-/

namespace A286449.P9252630553917444173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286458 (n + 1)).toNat

end

end A286449.P9252630553917444173

/-! ## A286449.P14512770740704624679

`A004736(A286592(n+1))`
-/

namespace A286449.P14512770740704624679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286592 (n + 1)).toNat

end

end A286449.P14512770740704624679

/-!
# A286452: Compound filter (largest prime factor of n & prime signature of 2n-1): a(n) = P(A061395(n), A046523(2n-1)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286452, the canonical program `A286452.P6965208014505850692` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286452 has offset 1).

The definition of A286452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286452.P6965208014505850692

`1/2*(2+(A061395(n+1)+A046523(2*(n+1)-1))²-A061395(n+1)-3*A046523(2*(n+1)-1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286452

/-- `1/2*(2+(A061395(n+1)+A046523(2*(n+1)-1))²-A061395(n+1)-3*A046523(2*(n+1)-1))` -/
def P6965208014505850692.Spec : Prop :=
  ∀ n, P6965208014505850692.a n = (A286452 (n + 1) : ℚ)

end A286452

/-!
# A286453: Compound filter: a(n) = P(A061395(n), A286465(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286453, there is no canonical definition to state claims against.
-/

/-! ## A286453.P10977591555555373246

`1/2*(2+(A061395(n+1)+A286465(n+1))²-A061395(n+1)-3*A286465(n+1))`
-/

namespace A286453.P10977591555555373246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A061395 (n + 1) + A286465 (n + 1)) ^ 2 - A061395 (n + 1) - 3 * A286465 (n + 1) : ℚ)

end

end A286453.P10977591555555373246

/-!
# A286454: Compound filter (prime signature & prime signature of conjugated prime factorization): a(n) = P(A101296(n), A286621(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286454, there is no canonical definition to state claims against.
-/

/-! ## A286454.P242833319922457405

`1/2*(2+(A101296(n+1)+A286621(n+1))²-A101296(n+1)-3*A286621(n+1))`
-/

namespace A286454.P242833319922457405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A101296 (n + 1) + A286621 (n + 1)) ^ 2 - A101296 (n + 1) - 3 * A286621 (n + 1) : ℚ)

end

end A286454.P242833319922457405

/-!
# A286455: Compound filter (smallest prime dividing n & prime signature of conjugated prime factorization): a(n) = P(A055396(n), A286621(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286455, there is no canonical definition to state claims against.
-/

/-! ## A286455.P6758431066188294500

`1/2*(2+(A055396(n+1)+A286621(n+1))²-A055396(n+1)-3*A286621(n+1))`
-/

namespace A286455.P6758431066188294500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A055396 (n + 1) + A286621 (n + 1)) ^ 2 - A055396 (n + 1) - 3 * A286621 (n + 1) : ℚ)

end

end A286455.P6758431066188294500

/-!
# A286457: Compound filter: a(n) = P(A078898(n), A246277(n)), with a(1) = 0, where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286457, there is no canonical definition to state claims against.
-/

/-! ## A286457.P14631211323955060635

`A336336(A348717((n+1)²))%p?[A007202(n)]`
-/

namespace A286457.P14631211323955060635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336336 (A348717 ((n + 1) ^ 2)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A286457.P14631211323955060635

/-! ## A286457.P3211445928186864429

`A336336(A348717((n+1)²))^Δ[A004905(n+1)]`
-/

namespace A286457.P3211445928186864429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336336 (A348717 ((n + 1) ^ 2)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A286457.P3211445928186864429

/-! ## A286457.P3194911600095173002

`A001222(A185231(n))*A099392(A348717(n+1))`
-/

namespace A286457.P3194911600095173002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A185231 n).toNat * A099392 (A348717 (n + 1)).toNat

end

end A286457.P3194911600095173002

/-! ## A286457.P6689130538271309809

`A001222(A005234(n+1))*A336336(A348717((n+1)²))`
-/

namespace A286457.P6689130538271309809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005234 (n + 1)).toNat * A336336 (A348717 ((n + 1) ^ 2)).toNat

end

end A286457.P6689130538271309809

/-! ## A286457.P10847269161835904330

`A109375(A266725(n))`
-/

namespace A286457.P10847269161835904330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A266725 n).toNat

end

end A286457.P10847269161835904330

/-!
# A286458: Compound filter: a(n) = P(A286448(n), A286449(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286458, there is no canonical definition to state claims against.
-/

/-! ## A286458.P14284977717698164004

`1/2*(2+(A286448(n+1)+A286449(n+1))²-A286448(n+1)-3*A286449(n+1))`
-/

namespace A286458.P14284977717698164004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A286448 (n + 1) + A286449 (n + 1)) ^ 2 - A286448 (n + 1) - 3 * A286449 (n + 1) : ℚ)

end

end A286458.P14284977717698164004

/-! ## A286458.P6168724132594824979

`A286459(A048673(n+1))`
-/

namespace A286458.P6168724132594824979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286459 (A048673 (n + 1)).toNat

end

end A286458.P6168724132594824979

/-! ## A286458.P2211473506201141433

`A286459(A108228(n+1)+1)`
-/

namespace A286458.P2211473506201141433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286459 (A108228 (n + 1) + 1).toNat

end

end A286458.P2211473506201141433

/-! ## A286458.P14363163689228057628

`A286459(A243501(n+1)/2)`
-/

namespace A286458.P14363163689228057628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286459 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A286458.P14363163689228057628

/-! ## A286458.P6983938768848921461

`A286459(ceil(A003961(n+1)/2))`
-/

namespace A286458.P6983938768848921461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286459 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A286458.P6983938768848921461

/-! ## A286458.P356636395874563427

`A286459(round(A003961(n+1)/2))`
-/

namespace A286458.P356636395874563427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286459 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A286458.P356636395874563427

/-! ## A286458.P8754928286307466488

`A286459((A003961(n+1)+1)/2)`
-/

namespace A286458.P8754928286307466488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286459 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A286458.P8754928286307466488

/-!
# A286459: Permuted compound filter: a(n) = A286458(A064216(n)).

The programs for A286459, there is no canonical definition to state claims against.
-/

/-! ## A286459.P2491207998265947093

`A286458(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286459.P2491207998265947093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286458 (A064216 (n + 1)).toNat

end

end A286459.P2491207998265947093

/-! ## A286459.P8032529485543246293

`A286458(∑{d}[2*n+1, A348045(#)])`
-/

namespace A286459.P8032529485543246293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286458 (∑ d ∈ Nat.divisors (f1 n), A348045 d).toNat

end

end A286459.P8032529485543246293

/-! ## A286459.P5191348984464752788

`A286458(A000010(2*n+1)-A353748(2*n+1))`
-/

namespace A286459.P5191348984464752788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286458 (A000010 (2 * n + 1) - A353748 (2 * n + 1)).toNat

end

end A286459.P5191348984464752788

/-! ## A286459.P6036712061640299754

`A286458(A064989(2*n+1))`
-/

namespace A286459.P6036712061640299754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286458 (A064989 (2 * n + 1)).toNat

end

end A286459.P6036712061640299754

/-! ## A286459.P235533577934583898

`A286458(A252463(2*n+1))`
-/

namespace A286459.P235533577934583898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286458 (A252463 (2 * n + 1)).toNat

end

end A286459.P235533577934583898

/-! ## A286459.P6509809259712933523

`A286458(A341515(2*n+1))`
-/

namespace A286459.P6509809259712933523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286458 (A341515 (2 * n + 1)).toNat

end

end A286459.P6509809259712933523

/-!
# A286460: Compound filter (2-adic valuation & sum of the divisors): a(n) = P(A001511(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286460, the canonical program `A286460.P13247630279209113175` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286460 has offset 1).

The definition of A286460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286460.P13247630279209113175

`1/2*(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286460

/-- `1/2*(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))` -/
def P13247630279209113175.Spec : Prop :=
  ∀ n, P13247630279209113175.a n = (A286460 (n + 1) : ℚ)

end A286460

/-! ## A286460.P13813665379404627322

`(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))/2`
-/

namespace A286460.P13813665379404627322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001511 (n + 1) + A000203 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A000203 (n + 1) : ℚ) / 2

end

end A286460.P13813665379404627322

namespace A286460

/-- `(2+(A001511(n+1)+A000203(n+1))²-A001511(n+1)-3*A000203(n+1))/2` -/
def P13813665379404627322.Spec : Prop :=
  ∀ n, P13813665379404627322.a n = (A286460 (n + 1) : ℚ)

end A286460

/-! ## A286460.P16935692193263301188

`A000124(∑{d}[n+1, #]+val(n+1, 2))-A000203(n+1)`
-/

namespace A286460.P16935692193263301188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ d ∈ Nat.divisors (f1 n), d + SequenceMachineLib.valuation (n + 1) 2) - A000203 (n + 1)

end

end A286460.P16935692193263301188

namespace A286460

/-- `A000124(∑{d}[n+1, #]+val(n+1, 2))-A000203(n+1)` -/
def P16935692193263301188.Spec : Prop :=
  ∀ n, P16935692193263301188.a n = A286460 (n + 1)

end A286460

/-!
# A286461: Compound filter (2-adic valuation of n & 4k+1,4k+3 prime-signature combination of 2n-1): a(n) = P(A001511(n), A286364((2*n)-1)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286461, the canonical program `A286461.P7084713959318418988` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286461 has offset 1).

The definition of A286461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286461.P7084713959318418988

`1/2*(2+(A001511(n+1)+A286364(2*(n+1)-1))²-A001511(n+1)-3*A286364(2*(n+1)-1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286461

/-- `1/2*(2+(A001511(n+1)+A286364(2*(n+1)-1))²-A001511(n+1)-3*A286364(2*(n+1)-1))` -/
def P7084713959318418988.Spec : Prop :=
  ∀ n, P7084713959318418988.a n = (A286461 (n + 1) : ℚ)

end A286461

/-! ## A286461.P14974274504882062166

`A286367(Δ[n²]*A006519(n+1))`
-/

namespace A286461.P14974274504882062166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286367 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A006519 (n + 1)).toNat

end

end A286461.P14974274504882062166

namespace A286461

/-- `A286367(Δ[n²]*A006519(n+1))` -/
def P14974274504882062166.Spec : Prop :=
  ∀ n, P14974274504882062166.a n = A286461 (n + 1)

end A286461

/-! ## A286461.P1819706654775520840

`A286367(lcm(Δ[n²], A006519(n+1)))`
-/

namespace A286461.P1819706654775520840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286367 (Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A006519 (n + 1)))

end

end A286461.P1819706654775520840

namespace A286461

/-- `A286367(lcm(Δ[n²], A006519(n+1)))` -/
def P1819706654775520840.Spec : Prop :=
  ∀ n, P1819706654775520840.a n = A286461 (n + 1)

end A286461

/-!
# A286462: Compound filter (3-adic valuation & the length of rightmost run of 1's in base-2): a(n) = P(A051064(n), A089309(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286462, the canonical program `A286462.P12197192580777352399` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286462 has offset 1).

The definition of A286462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089309, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286462.P12197192580777352399

`1/2*(2+(A051064(n+1)+A089309(n+1))²-A051064(n+1)-3*A089309(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286462

/-- `1/2*(2+(A051064(n+1)+A089309(n+1))²-A051064(n+1)-3*A089309(n+1))` -/
def P12197192580777352399.Spec : Prop :=
  ∀ n, P12197192580777352399.a n = (A286462 (n + 1) : ℚ)

end A286462

/-!
# A286463: Compound filter (3-adic valuation & prime-signature): a(n) = P(A051064(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286463, the canonical program `A286463.P596950165442165972` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286463 has offset 1).

The definition of A286463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286463.P596950165442165972

`1/2*(2+(A051064(n+1)+A046523(n+1))²-A051064(n+1)-3*A046523(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286463

/-- `1/2*(2+(A051064(n+1)+A046523(n+1))²-A051064(n+1)-3*A046523(n+1))` -/
def P596950165442165972.Spec : Prop :=
  ∀ n, P596950165442165972.a n = (A286463 (n + 1) : ℚ)

end A286463

/-! ## A286463.P11688750390664244579

`A286161(A061898(n+1))`
-/

namespace A286463.P11688750390664244579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A061898 (n + 1)).toNat

end

end A286463.P11688750390664244579

namespace A286463

/-- `A286161(A061898(n+1))` -/
def P11688750390664244579.Spec : Prop :=
  ∀ n, P11688750390664244579.a n = A286463 (n + 1)

end A286463

/-! ## A286463.P883055660018552381

`A286161(A064614(n+1))`
-/

namespace A286463.P883055660018552381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A064614 (n + 1)).toNat

end

end A286463.P883055660018552381

namespace A286463

/-- `A286161(A064614(n+1))` -/
def P883055660018552381.Spec : Prop :=
  ∀ n, P883055660018552381.a n = A286463 (n + 1)

end A286463

/-! ## A286463.P16096447337331031719

`A286161(A072027(n+1))`
-/

namespace A286463.P16096447337331031719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A072027 (n + 1)).toNat

end

end A286463.P16096447337331031719

namespace A286463

/-- `A286161(A072027(n+1))` -/
def P16096447337331031719.Spec : Prop :=
  ∀ n, P16096447337331031719.a n = A286463 (n + 1)

end A286463

/-! ## A286463.P10598465905142618628

`A286161(A234747(n+1))`
-/

namespace A286463.P10598465905142618628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A234747 (n + 1)).toNat

end

end A286463.P10598465905142618628

namespace A286463

/-- `A286161(A234747(n+1))` -/
def P10598465905142618628.Spec : Prop :=
  ∀ n, P10598465905142618628.a n = A286463 (n + 1)

end A286463

/-! ## A286463.P13984580119999572081

`A286161(A234748(n+1))`
-/

namespace A286463.P13984580119999572081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A234748 (n + 1)).toNat

end

end A286463.P13984580119999572081

namespace A286463

/-- `A286161(A234748(n+1))` -/
def P13984580119999572081.Spec : Prop :=
  ∀ n, P13984580119999572081.a n = A286463 (n + 1)

end A286463

/-! ## A286463.P8478229674223007199

`A286161(A234743(n+1))`
-/

namespace A286463.P8478229674223007199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A234743 (n + 1)).toNat

end

end A286463.P8478229674223007199

namespace A286463

/-- `A286161(A234743(n+1))` -/
def P8478229674223007199.Spec : Prop :=
  ∀ n, P8478229674223007199.a n = A286463 (n + 1)

end A286463

/-! ## A286463.P12236383943985890964

`A286161(A234840(n+1))`
-/

namespace A286463.P12236383943985890964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A234840 (n + 1)).toNat

end

end A286463.P12236383943985890964

namespace A286463

/-- `A286161(A234840(n+1))` -/
def P12236383943985890964.Spec : Prop :=
  ∀ n, P12236383943985890964.a n = A286463 (n + 1)

end A286463

/-! ## A286463.P16695821712412909220

`A286161(A360648(n+1))`
-/

namespace A286463.P16695821712412909220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (A360648 (n + 1)).toNat

end

end A286463.P16695821712412909220

namespace A286463

/-- `A286161(A360648(n+1))` -/
def P16695821712412909220.Spec : Prop :=
  ∀ n, P16695821712412909220.a n = A286463 (n + 1)

end A286463

/-!
# A286464: Compound filter (3-adic valuation & signature for base-2 1-runs): a(n) = P(A051064(n), A278222(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286464, the canonical program `A286464.P14165996615325452692` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286464 has offset 1).

The definition of A286464 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286464.P14165996615325452692

`1/2*(2+(A051064(n+1)+A278222(n+1))²-A051064(n+1)-3*A278222(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286464

/-- `1/2*(2+(A051064(n+1)+A278222(n+1))²-A051064(n+1)-3*A278222(n+1))` -/
def P14165996615325452692.Spec : Prop :=
  ∀ n, P14165996615325452692.a n = (A286464 (n + 1) : ℚ)

end A286464

/-!
# A286465: Compound filter: a(1) = 1, a(n) = P(A112049(n-1), A278223(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286465, there is no canonical definition to state claims against.
-/

/-! ## A286465.P888628253082639437

`A193592(A286453(n+1))+A057427(n)`
-/

namespace A286465.P888628253082639437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A286453 (n + 1)).toNat + A057427 n

end

end A286465.P888628253082639437

/-! ## A286465.P4891399885839477960

`A025581(A286453(n+1))+A178334(n)+1`
-/

namespace A286465.P4891399885839477960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286453 (n + 1)).toNat + (A178334 n + 1)

end

end A286465.P4891399885839477960

/-! ## A286465.P16085491239921198282

`A004736(A286453(n+1)+A036987(2*n))`
-/

namespace A286465.P16085491239921198282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286453 (n + 1) + A036987 (2 * n)).toNat

end

end A286465.P16085491239921198282

/-! ## A286465.P14225305390505077792

`A004736(A286453(n+1)+A096500(2*n+1))`
-/

namespace A286465.P14225305390505077792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286453 (n + 1) + A096500 (2 * n + 1)).toNat

end

end A286465.P14225305390505077792

/-!
# A286466: Compound filter: a(n) = P(A112049(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286466, there is no canonical definition to state claims against.
-/

/-! ## A286466.P10859746520011824139

`1/2*(2+(A112049(n+1)+A046523(n+1))²-A112049(n+1)-3*A046523(n+1))`
-/

namespace A286466.P10859746520011824139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A112049 (n + 1) + A046523 (n + 1)) ^ 2 - A112049 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A286466.P10859746520011824139

/-!
# A286467: Compound filter (prime signature of n & prime signature of the n-th Fibonacci number): a(n) = P(A101296(n), A286545(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286467, there is no canonical definition to state claims against.
-/

/-! ## A286467.P12756581570899959573

`1/2*(2+(A101296(n+1)+A286545(n+1))²-A101296(n+1)-3*A286545(n+1))`
-/

namespace A286467.P12756581570899959573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A101296 (n + 1) + A286545 (n + 1)) ^ 2 - A101296 (n + 1) - 3 * A286545 (n + 1) : ℚ)

end

end A286467.P12756581570899959573

/-!
# A286468: Run lengths in the binary expansion of n are one more than the exponents of corresponding primes in the prime factorization of a(n).

The programs for A286468, the canonical program `A286468.P8368266959325649577` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286468 has offset 1).

The definition of A286468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286468.P10697086719647456884

`A052126(A075159(1+n+1))`
-/

namespace A286468.P10697086719647456884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A075159 (1 + (n + 1))).toNat

end

end A286468.P10697086719647456884

namespace A286468

/-- `A052126(A075159(1+n+1))` -/
def P10697086719647456884.Spec : Prop :=
  ∀ n, P10697086719647456884.a n = A286468 (n + 1)

end A286468

/-! ## A286468.P1628033344928645282

`A052126(1+A075157(n+1))`
-/

namespace A286468.P1628033344928645282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (1 + A075157 (n + 1)).toNat

end

end A286468.P1628033344928645282

namespace A286468

/-- `A052126(1+A075157(n+1))` -/
def P1628033344928645282.Spec : Prop :=
  ∀ n, P1628033344928645282.a n = A286468 (n + 1)

end A286468

/-! ## A286468.P13355316129357130604

`A005940(A279645(n+1)+1)`
-/

namespace A286468.P13355316129357130604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A279645 (n + 1) + 1).toNat

end

end A286468.P13355316129357130604

namespace A286468

/-- `A005940(A279645(n+1)+1)` -/
def P13355316129357130604.Spec : Prop :=
  ∀ n, P13355316129357130604.a n = A286468 (n + 1)

end A286468

/-! ## A286468.P8368266959325649577

`A243353(and(A092323(n+1), A258746(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A286468

/-- `A243353(and(A092323(n+1), A258746(n+1)))` -/
def P8368266959325649577.Spec : Prop :=
  ∀ n, P8368266959325649577.a n = A286468 (n + 1)

theorem P8368266959325649577.correct : P8368266959325649577.Spec := by
  intro n
  simp only [A286468, Nat.add_sub_cancel]

end A286468

/-! ## A286468.P14974537310561219081

`A243353(A258746(n+1)-(A092323(n+1)+1))`
-/

namespace A286468.P14974537310561219081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A258746 (n + 1) - (A092323 (n + 1) + 1)).toNat

end

end A286468.P14974537310561219081

namespace A286468

/-- `A243353(A258746(n+1)-(A092323(n+1)+1))` -/
def P14974537310561219081.Spec : Prop :=
  ∀ n, P14974537310561219081.a n = A286468 (n + 1)

end A286468

/-! ## A286468.P14259259703640433267

`(A075157(n+1)+1)/A000040(A005811(n+1))`
-/

namespace A286468.P14259259703640433267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075157 (n + 1) + 1 : ℚ) / (A000040 (A005811 (n + 1)).toNat : ℚ)

end

end A286468.P14259259703640433267

namespace A286468

/-- `(A075157(n+1)+1)/A000040(A005811(n+1))` -/
def P14259259703640433267.Spec : Prop :=
  ∀ n, P14259259703640433267.a n = (A286468 (n + 1) : ℚ)

end A286468

/-! ## A286468.P1648032845613907997

`A005940(A053644(n+1)-A038554(n+1))`
-/

namespace A286468.P1648032845613907997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A053644 (n + 1) - A038554 (n + 1)).toNat

end

end A286468.P1648032845613907997

namespace A286468

/-- `A005940(A053644(n+1)-A038554(n+1))` -/
def P1648032845613907997.Spec : Prop :=
  ∀ n, P1648032845613907997.a n = A286468 (n + 1)

end A286468

/-! ## A286468.P16546725674485547183

`A005940(A035327(A003188(n+1))+1)`
-/

namespace A286468.P16546725674485547183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A035327 (A003188 (n + 1)).toNat + 1).toNat

end

end A286468.P16546725674485547183

namespace A286468

/-- `A005940(A035327(A003188(n+1))+1)` -/
def P16546725674485547183.Spec : Prop :=
  ∀ n, P16546725674485547183.a n = A286468 (n + 1)

end A286468

/-! ## A286468.P18339220083580939568

`A397499(A377837(n+1))`
-/

namespace A286468.P18339220083580939568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397499 (A377837 (n + 1)).toNat

end

end A286468.P18339220083580939568

namespace A286468

/-- `A397499(A377837(n+1))` -/
def P18339220083580939568.Spec : Prop :=
  ∀ n, P18339220083580939568.a n = A286468 (n + 1)

end A286468

/-! ## A286468.P8320358431840975974

`(A075157(n+1)+1)/A006530(A075157(n+1)+1)`
-/

namespace A286468.P8320358431840975974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075157 (n + 1) + 1 : ℚ) / (A006530 (A075157 (n + 1) + 1).toNat : ℚ)

end

end A286468.P8320358431840975974

namespace A286468

/-- `(A075157(n+1)+1)/A006530(A075157(n+1)+1)` -/
def P8320358431840975974.Spec : Prop :=
  ∀ n, P8320358431840975974.a n = (A286468 (n + 1) : ℚ)

end A286468

/-! ## A286468.P5711888251921096745

`A163755(n+1)/∏{p}[A163755(n+1), #]`
-/

namespace A286468.P5711888251921096745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163755 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A286468.P5711888251921096745

namespace A286468

/-- `A163755(n+1)/∏{p}[A163755(n+1), #]` -/
def P5711888251921096745.Spec : Prop :=
  ∀ n, P5711888251921096745.a n = (A286468 (n + 1) : ℚ)

end A286468

/-!
# A286469: a(n) = maximum of {the index of least prime dividing n} and {the maximal gap between indices of the successive primes in the prime factorization of n}.

The programs for A286469, the canonical program `A286469.P16498264972228872052` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286469 has offset 1).

The definition of A286469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286469.P16498264972228872052

`A051903(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A286469

/-- `A051903(A122111(n+1))` -/
def P16498264972228872052.Spec : Prop :=
  ∀ n, P16498264972228872052.a n = A286469 (n + 1)

theorem P16498264972228872052.correct : P16498264972228872052.Spec := by
  intro n
  simp only [A286469, Nat.add_sub_cancel]

end A286469

/-! ## A286469.P14806146853082148402

`val(A278221(n+1), 2)`
-/

namespace A286469.P14806146853082148402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278221 (n + 1)).toNat 2

end

end A286469.P14806146853082148402

namespace A286469

/-- `val(A278221(n+1), 2)` -/
def P14806146853082148402.Spec : Prop :=
  ∀ n, (P14806146853082148402.a n : ℤ) = A286469 (n + 1)

end A286469

/-! ## A286469.P14671055262855687077

`val(A279350(A249817(n+1)), 2)`
-/

namespace A286469.P14671055262855687077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279350 (A249817 (n + 1)).toNat).toNat 2

end

end A286469.P14671055262855687077

namespace A286469

/-- `val(A279350(A249817(n+1)), 2)` -/
def P14671055262855687077.Spec : Prop :=
  ∀ n, (P14671055262855687077.a n : ℤ) = A286469 (n + 1)

end A286469

/-! ## A286469.P10902260901352837275

`A286470(2*A003961(n+1))`
-/

namespace A286469.P10902260901352837275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * A003961 (n + 1)).toNat

end

end A286469.P10902260901352837275

namespace A286469

/-- `A286470(2*A003961(n+1))` -/
def P10902260901352837275.Spec : Prop :=
  ∀ n, P10902260901352837275.a n = A286469 (n + 1)

end A286469

/-! ## A286469.P10336621295852629690

`A286470(2*A045965(n+1))`
-/

namespace A286469.P10336621295852629690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (2 * A045965 (n + 1)).toNat

end

end A286469.P10336621295852629690

namespace A286469

/-- `A286470(2*A045965(n+1))` -/
def P10336621295852629690.Spec : Prop :=
  ∀ n, P10336621295852629690.a n = A286469 (n + 1)

end A286469

/-! ## A286469.P1955967181581524660

`A286470(lcm(2, A003961(n+1)))`
-/

namespace A286469.P1955967181581524660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (Int.lcm 2 (A003961 (n + 1)))

end

end A286469.P1955967181581524660

namespace A286469

/-- `A286470(lcm(2, A003961(n+1)))` -/
def P1955967181581524660.Spec : Prop :=
  ∀ n, P1955967181581524660.a n = A286469 (n + 1)

end A286469

/-! ## A286469.P163750045086119715

`val(A285334(A048673(n+1)), 2)`
-/

namespace A286469.P163750045086119715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285334 (A048673 (n + 1)).toNat).toNat 2

end

end A286469.P163750045086119715

namespace A286469

/-- `val(A285334(A048673(n+1)), 2)` -/
def P163750045086119715.Spec : Prop :=
  ∀ n, (P163750045086119715.a n : ℤ) = A286469 (n + 1)

end A286469

/-! ## A286469.P1950649462036083583

`val(A285334(A108228(n+1)+1), 2)`
-/

namespace A286469.P1950649462036083583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285334 (A108228 (n + 1) + 1).toNat).toNat 2

end

end A286469.P1950649462036083583

namespace A286469

/-- `val(A285334(A108228(n+1)+1), 2)` -/
def P1950649462036083583.Spec : Prop :=
  ∀ n, (P1950649462036083583.a n : ℤ) = A286469 (n + 1)

end A286469

/-! ## A286469.P4054553842155792634

`A061395(A383535(n+1))`
-/

namespace A286469.P4054553842155792634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A383535 (n + 1)).toNat

end

end A286469.P4054553842155792634

namespace A286469

/-- `A061395(A383535(n+1))` -/
def P4054553842155792634.Spec : Prop :=
  ∀ n, P4054553842155792634.a n = A286469 (n + 1)

end A286469

/-! ## A286469.P14798328461877425973

`A252735(A325390(n+1))`
-/

namespace A286469.P14798328461877425973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A325390 (n + 1)).toNat

end

end A286469.P14798328461877425973

namespace A286469

/-- `A252735(A325390(n+1))` -/
def P14798328461877425973.Spec : Prop :=
  ∀ n, P14798328461877425973.a n = A286469 (n + 1)

end A286469

/-!
# A286470: a(n) = maximal gap between indices of successive primes in the prime factorization of n.

The programs for A286470, there is no canonical definition to state claims against.
-/

/-! ## A286470.P17501317700129318260

`A242411(n+1)+A010815(A280642(3*n+2))`
-/

namespace A286470.P17501317700129318260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (n + 1) + A010815 (A280642 (3 * n + 2)).toNat

end

end A286470.P17501317700129318260

/-! ## A286470.P15563087389027450584

`A143731(A242419(n+1))+A117371(n+1)`
-/

namespace A286470.P15563087389027450584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A242419 (n + 1)).toNat + A117371 (n + 1)

end

end A286470.P15563087389027450584

/-! ## A286470.P8979094586415579761

`A243055(n+1)-A303837(A062513(n+1))`
-/

namespace A286470.P8979094586415579761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) - A303837 (A062513 (n + 1)).toNat

end

end A286470.P8979094586415579761

/-! ## A286470.P9458116445655063835

`A087117(A322993(n+1)+A000007(n))`
-/

namespace A286470.P9458116445655063835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A322993 (n + 1) + A000007 n).toNat

end

end A286470.P9458116445655063835

/-! ## A286470.P1710845302044543908

`A242411(n+1)+A024155(A326975(n+3))`
-/

namespace A286470.P1710845302044543908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (n + 1) + A024155 (A326975 (n + 3)).toNat

end

end A286470.P1710845302044543908

/-! ## A286470.P10258175563075245602

`A252735(A325352(n+1))`
-/

namespace A286470.P10258175563075245602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A325352 (n + 1)).toNat

end

end A286470.P10258175563075245602

/-! ## A286470.P6583598821778581537

`A243055(2*A325352(n+1))`
-/

namespace A286470.P6583598821778581537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (2 * A325352 (n + 1)).toNat

end

end A286470.P6583598821778581537

/-! ## A286470.P5514668606293404106

`A243056((2*A325352(n+1))²)`
-/

namespace A286470.P5514668606293404106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 ((2 * A325352 (n + 1)) ^ 2).toNat

end

end A286470.P5514668606293404106

/-! ## A286470.P13933820828901655751

`A325178(A273258(n+1))`
-/

namespace A286470.P13933820828901655751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (A273258 (n + 1)).toNat

end

end A286470.P13933820828901655751

/-! ## A286470.P2959934641124184336

`A242411(n+1)%A000664(n)`
-/

namespace A286470.P2959934641124184336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242411 (n + 1)) (A000664 n)

end

end A286470.P2959934641124184336

/-!
# A286471: If n is noncomposite, then a(n) = 0, otherwise 1 + difference between indices of the two smallest (not necessarily distinct) prime factors of n.

The programs for A286471, there is no canonical definition to state claims against.
-/

/-! ## A286471.P5978562151889382931

`A055396(∏{p}[A246277(n+1), #])`
-/

namespace A286471.P5978562151889382931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A286471.P5978562151889382931

/-! ## A286471.P14316179426676520252

`A277707(∏{p}[A246277(n+1), #])`
-/

namespace A286471.P14316179426676520252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A286471.P14316179426676520252

/-! ## A286471.P17631142651768273709

`A055396(floor(A246277(n+1)+acot(n)))`
-/

namespace A286471.P17631142651768273709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ⌊(A246277 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A286471.P17631142651768273709

/-! ## A286471.P221032809059652481

`A277707(∏{p}[floor(A348717(n+1)/2), #])`
-/

namespace A286471.P221032809059652481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348717 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A286471.P221032809059652481

/-! ## A286471.P2219655101038799823

`A055396(xor(1, A246277(n+1))+1)%(n+1)`
-/

namespace A286471.P2219655101038799823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (Int.xor 1 (A246277 (n + 1)) + 1).toNat) (n + 1 : ℤ)

end

end A286471.P2219655101038799823

/-! ## A286471.P2728092659001613737

`A055396(A302042(A348717(n+1)))`
-/

namespace A286471.P2728092659001613737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A302042 (A348717 (n + 1)).toNat).toNat

end

end A286471.P2728092659001613737

/-! ## A286471.P14086986313406628521

`A055396(A348717(n+1)-A246277(n+1))`
-/

namespace A286471.P14086986313406628521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A348717 (n + 1) - A246277 (n + 1)).toNat

end

end A286471.P14086986313406628521

/-! ## A286471.P2233939226169958288

`A055396(A252759(n+1)+1-A055396(n+1))`
-/

namespace A286471.P2233939226169958288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A252759 (n + 1) + (1 - A055396 (n + 1))).toNat

end

end A286471.P2233939226169958288

/-! ## A286471.P10183871279552196310

`A055396((A246277(n+1)-1)%A003961(n+1)+1)`
-/

namespace A286471.P10183871279552196310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A246277 (n + 1) - 1) (A003961 (n + 1)) + 1).toNat

end

end A286471.P10183871279552196310

/-! ## A286471.P12516873974584052468

`A055396((A246277(n+1)+n)%A032742(n+1)+1)`
-/

namespace A286471.P12516873974584052468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A246277 (n + 1) + (n : ℤ)) (A032742 (n + 1)) + 1).toNat

end

end A286471.P12516873974584052468

/-! ## A286471.P14208032636239924760

`A055396(A280492(n+1)+A078898(n+1))`
-/

namespace A286471.P14208032636239924760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A280492 (n + 1) + A078898 (n + 1)).toNat

end

end A286471.P14208032636239924760

/-! ## A286471.P9804270514578138679

`A055396(A078898(A249817(n+1)))`
-/

namespace A286471.P9804270514578138679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A078898 (A249817 (n + 1)).toNat).toNat

end

end A286471.P9804270514578138679

/-! ## A286471.P6456792717339337088

`A055396(A078898(A250247(n+1)))`
-/

namespace A286471.P6456792717339337088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A078898 (A250247 (n + 1)).toNat).toNat

end

end A286471.P6456792717339337088

/-! ## A286471.P9423892746355115986

`A055396(A078898(A250245(n+1)))`
-/

namespace A286471.P9423892746355115986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A078898 (A250245 (n + 1)).toNat).toNat

end

end A286471.P9423892746355115986

/-! ## A286471.P15731544088162223811

`A260738(A260739(A302025(n+1)))`
-/

namespace A286471.P15731544088162223811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A260739 (A302025 (n + 1)).toNat).toNat

end

end A286471.P15731544088162223811

/-! ## A286471.P9715031395391023729

`A055396(A246277(n+1)^A055396(n+1))`
-/

namespace A286471.P9715031395391023729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A246277 (n + 1) : ℚ) ^ (A055396 (n + 1) : ℤ))).toNat

end

end A286471.P9715031395391023729

/-!
# A286472: Compound filter (for counting prime gaps): a(1) = 1, a(n) = 2*A032742(n) + (1 if n is composite and spf(A032742(n)) > nextprime(spf(n)), and 0 otherwise). Here spf is the smallest prime factor, A020639.

The programs for A286472, there is no canonical definition to state claims against.
-/

/-! ## A286472.P17838330043037328965

`A341976(A066803(n+1))+A046523(n+1)`
-/

namespace A286472.P17838330043037328965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341976 ((A066803 (n + 1)).toNat + 18) + A046523 (n + 1)

end

end A286472.P17838330043037328965

/-! ## A286472.P18048367374524030345

`A348717(n+1)+A025469(A213770(n+1))`
-/

namespace A286472.P18048367374524030345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A025469 (A213770 (n + 1)).toNat

end

end A286472.P18048367374524030345

/-! ## A286472.P10158992245898297136

`A348717(n+1)+A055641(A359253(n+2))`
-/

namespace A286472.P10158992245898297136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A055641 (A359253 (n + 2)).toNat

end

end A286472.P10158992245898297136

/-! ## A286472.P6222499428332937653

`A288003(A171435(n+1))+A023645(2^A348717(n+1))`
-/

namespace A286472.P6222499428332937653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A171435 (n + 1)).toNat + A023645 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A348717 (n + 1) : ℤ))).toNat

end

end A286472.P6222499428332937653

/-! ## A286472.P3708450138733557255

`A348717(n+1)+A122840(A006663(n))`
-/

namespace A286472.P3708450138733557255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A122840 (A006663 n).toNat

end

end A286472.P3708450138733557255

/-!
# A286473: Compound filter (for counting primes of form 4k+1, 4k+2 and 4k+3): a(n) = 4*A032742(n) + (A020639(n) mod 4), a(1) = 1.

The programs for A286473, there is no canonical definition to state claims against.
-/

/-! ## A286473.P6000264606202312573

`floor(A286386(n+1)/2)`
-/

namespace A286473.P6000264606202312573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286386 (n + 1) : ℚ) / 2⌋

end

end A286473.P6000264606202312573

/-! ## A286473.P2986638896795939869

`A004526(A286386(n+1))`
-/

namespace A286473.P2986638896795939869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A286386 (n + 1)).toNat

end

end A286473.P2986638896795939869

/-! ## A286473.P2968781847535603566

`A110654(A286386(n+1)-1)`
-/

namespace A286473.P2968781847535603566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A286386 (n + 1) - 1).toNat

end

end A286473.P2968781847535603566

/-! ## A286473.P17862620731084114159

`A008619(A286386(n+1)-2)`
-/

namespace A286473.P17862620731084114159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A286386 (n + 1) - 2).toNat

end

end A286473.P17862620731084114159

/-! ## A286473.P3498846310296901850

`A032742(A286386(n+1)-A010052(n+1))`
-/

namespace A286473.P3498846310296901850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A286386 (n + 1) - A010052 (n + 1)).toNat

end

end A286473.P3498846310296901850

/-! ## A286473.P341671174639349146

`A008615(3*A286386(n+1))`
-/

namespace A286473.P341671174639349146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A286386 (n + 1)).toNat

end

end A286473.P341671174639349146

/-!
# A286477: Ordinal transform of A032742, starting from its first term a(1) = 1.

The programs for A286477, there is no canonical definition to state claims against.
-/

/-! ## A286477.P11429596284722373726

`A080339(n+1)+A055396(n+1)`
-/

namespace A286477.P11429596284722373726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + A055396 (n + 1)

end

end A286477.P11429596284722373726

/-! ## A286477.P17582425647249735144

`A055396(n+1)+A281118(n+1)%2`
-/

namespace A286477.P17582425647249735144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + Int.tmod (A281118 (n + 1)) 2

end

end A286477.P17582425647249735144

/-! ## A286477.P1597785037696036372

`A055396(n+1)+C(A000010(n+1), n)`
-/

namespace A286477.P1597785037696036372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (Nat.choose (A000010 (n + 1)).toNat n : ℤ)

end

end A286477.P1597785037696036372

/-! ## A286477.P16880209788209206468

`floor(A055396(n+1)+A020639(n+1)/(n+1))`
-/

namespace A286477.P16880209788209206468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055396 (n + 1) : ℚ) + (A020639 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A286477.P16880209788209206468

/-! ## A286477.P13921082393900639563

`A055396(n+1)+A000007(A072670(n))`
-/

namespace A286477.P13921082393900639563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + A000007 (A072670 n).toNat

end

end A286477.P13921082393900639563

/-! ## A286477.P1923378636295739469

`A010051(n+1)+A003963(A020639(n+1))`
-/

namespace A286477.P1923378636295739469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A003963 (A020639 (n + 1)).toNat

end

end A286477.P1923378636295739469

/-! ## A286477.P13062860179967290596

`A028310(A055396(n+1)+A010051(n+1))`
-/

namespace A286477.P13062860179967290596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055396 (n + 1) + A010051 (n + 1)).toNat

end

end A286477.P13062860179967290596

/-! ## A286477.P6491965379909989406

`A055396(n+1)+A049084(2*A052126(n+1))`
-/

namespace A286477.P6491965379909989406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + A049084 (2 * A052126 (n + 1)).toNat

end

end A286477.P6491965379909989406

/-! ## A286477.P13668514386356179224

`A010051(n+1)+A003963(n+1)/A003963(A032742(n+1))`
-/

namespace A286477.P13668514386356179224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) : ℚ) + (A003963 (n + 1) : ℚ) / (A003963 (A032742 (n + 1)).toNat : ℚ)

end

end A286477.P13668514386356179224

/-! ## A286477.P12153472657774329280

`A055396(n+1)+char[A166260(n+1)]`
-/

namespace A286477.P12153472657774329280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286477.P12153472657774329280

/-! ## A286477.P7843318039059877298

`A056239(A020639(n+1)+C(A020639(n+1), n))`
-/

namespace A286477.P7843318039059877298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A020639 (n + 1) + (Nat.choose (A020639 (n + 1)).toNat n : ℤ)).toNat

end

end A286477.P7843318039059877298

/-! ## A286477.P1640462776115513239

`A097806(A001222(n+1)²²)+A055396(n+1)`
-/

namespace A286477.P1640462776115513239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 ((A001222 (n + 1) ^ 2) ^ 2).toNat + A055396 (n + 1)

end

end A286477.P1640462776115513239

/-! ## A286477.P663410612816217590

`A277707(A007947(n+1))+A010051(A045965(n+1))`
-/

namespace A286477.P663410612816217590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (A007947 (n + 1)).toNat + A010051 (A045965 (n + 1)).toNat

end

end A286477.P663410612816217590

/-! ## A286477.P7150648199620691969

`A242096(2*A020639(n+1)+1)+A010051(A045965(n+1))`
-/

namespace A286477.P7150648199620691969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (2 * A020639 (n + 1) + 1).toNat + A010051 (A045965 (n + 1)).toNat

end

end A286477.P7150648199620691969

/-! ## A286477.P184311032374302245

`val(A241909(n+1), 2)+1`
-/

namespace A286477.P184311032374302245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A241909 (n + 1)).toNat 2 + 1

end

end A286477.P184311032374302245

/-! ## A286477.P8100863562666482845

`val(A252756(n+1)+1, 2)+1`
-/

namespace A286477.P8100863562666482845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A252756 (n + 1) + 1).toNat 2 + 1

end

end A286477.P8100863562666482845

/-! ## A286477.P9105965319149074489

`A129186(A001222(n+1)²²)+A055396(n+1)`
-/

namespace A286477.P9105965319149074489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 ((A001222 (n + 1) ^ 2) ^ 2).toNat + A055396 (n + 1)

end

end A286477.P9105965319149074489

/-! ## A286477.P4472154239313571348

`Δ[A182843(n+1)]+1`
-/

namespace A286477.P4472154239313571348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A286477.P4472154239313571348

/-!
# A286478: Ordinal transform of A034968, factorial base digit sum.

The programs for A286478, there is no canonical definition to state claims against.
-/

/-! ## A286478.P17626967394998420288

`A078349(3*A023194(n+1))`
-/

namespace A286478.P17626967394998420288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078349 (3 * A023194 (n + 1)).toNat

end

end A286478.P17626967394998420288

/-! ## A286478.P8277981481481428410

`A001221(A253560(n+1)+∏[n%2+2]-1)`
-/

namespace A286478.P8277981481481428410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A253560 (n + 1) + (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A286478.P8277981481481428410

/-! ## A286478.P6975875609611040313

`A139352(A281847(n)+A007811(n+1))`
-/

namespace A286478.P6975875609611040313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A281847 n + A007811 (n + 1)).toNat

end

end A286478.P6975875609611040313

/-! ## A286478.P7731869215976618665

`A356230(A060546(n)+A053669(n+5))`
-/

namespace A286478.P7731869215976618665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (A060546 n + A053669 (n + 5)).toNat

end

end A286478.P7731869215976618665

/-!
# A286479: a(n) = A046523(n+A000005(n)).

The programs for A286479, the canonical program `A286479.P14011236842792646719` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286479 has offset 1).

The definition of A286479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286479.P9604325942416396357

`A046523(A062249(n+1))`
-/

namespace A286479.P9604325942416396357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A062249 (n + 1)).toNat

end

end A286479.P9604325942416396357

namespace A286479

/-- `A046523(A062249(n+1))` -/
def P9604325942416396357.Spec : Prop :=
  ∀ n, P9604325942416396357.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P14011236842792646719

`A046523(n+1+A000005(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286479

/-- `A046523(n+1+A000005(n+1))` -/
def P14011236842792646719.Spec : Prop :=
  ∀ n, P14011236842792646719.a n = A286479 (n + 1)

theorem P14011236842792646719.correct : P14011236842792646719.Spec := by
  intro n
  simp only [A286479, Nat.add_sub_cancel]

end A286479

/-! ## A286479.P18197937902326510765

`A046523(n+A000005(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286479.P18197937902326510765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((n : ℤ) + A000005 (n + 1) + 1).toNat

end

end A286479.P18197937902326510765

namespace A286479

/-- `A046523(n+A000005(n+1)+1)` -/
def P18197937902326510765.Spec : Prop :=
  ∀ n, P18197937902326510765.a n = A286479 (n + 1)

theorem P18197937902326510765.correct : P18197937902326510765.Spec := by
  intro n
  simp only [A286479, Nat.add_sub_cancel, A286479.P18197937902326510765.a, A286479.P14011236842792646719.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A286479

/-! ## A286479.P10057301403276039063

`A025487(A101296(∏{e}[n+1, #+1]+1+n))`
-/

namespace A286479.P10057301403276039063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 + n)).toNat

end

end A286479.P10057301403276039063

namespace A286479

/-- `A025487(A101296(∏{e}[n+1, #+1]+1+n))` -/
def P10057301403276039063.Spec : Prop :=
  ∀ n, P10057301403276039063.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P5256525853678923935

`A025487(A101296(A000005(n+1)+n+1))`
-/

namespace A286479.P5256525853678923935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (A000005 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A286479.P5256525853678923935

namespace A286479

/-- `A025487(A101296(A000005(n+1)+n+1))` -/
def P5256525853678923935.Spec : Prop :=
  ∀ n, P5256525853678923935.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P9051662921366899063

`A046523(∏{e}[n+1, #+1]+1+n)`
-/

namespace A286479.P9051662921366899063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 + n)

end

end A286479.P9051662921366899063

namespace A286479

/-- `A046523(∏{e}[n+1, #+1]+1+n)` -/
def P9051662921366899063.Spec : Prop :=
  ∀ n, P9051662921366899063.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P14926867374912439270

`A046523(A134871(n+1)+2)`
-/

namespace A286479.P14926867374912439270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A134871 (n + 1) + 2).toNat

end

end A286479.P14926867374912439270

namespace A286479

/-- `A046523(A134871(n+1)+2)` -/
def P14926867374912439270.Spec : Prop :=
  ∀ n, P14926867374912439270.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P12191700636096555835

`A046523(Δ[A006218(n)]+n+1)`
-/

namespace A286479.P12191700636096555835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n + (n : ℤ) + 1).toNat

end

end A286479.P12191700636096555835

namespace A286479

/-- `A046523(Δ[A006218(n)]+n+1)` -/
def P12191700636096555835.Spec : Prop :=
  ∀ n, P12191700636096555835.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P18070353085592860851

`A046523(A032741(n+1)+n+2)`
-/

namespace A286479.P18070353085592860851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A032741 (n + 1) + (n + 2 : ℤ)).toNat

end

end A286479.P18070353085592860851

namespace A286479

/-- `A046523(A032741(n+1)+n+2)` -/
def P18070353085592860851.Spec : Prop :=
  ∀ n, P18070353085592860851.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P6632221062848640962

`A046523(A140482(n+1)-(n+1))`
-/

namespace A286479.P6632221062848640962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A140482 (n + 1) - (n + 1 : ℤ)).toNat

end

end A286479.P6632221062848640962

namespace A286479

/-- `A046523(A140482(n+1)-(n+1))` -/
def P6632221062848640962.Spec : Prop :=
  ∀ n, P6632221062848640962.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P2691655133415408166

`A046523(A320111(2*(n+1))+n+1)`
-/

namespace A286479.P2691655133415408166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A320111 (2 * (n + 1)) + (n : ℤ) + 1).toNat

end

end A286479.P2691655133415408166

namespace A286479

/-- `A046523(A320111(2*(n+1))+n+1)` -/
def P2691655133415408166.Spec : Prop :=
  ∀ n, P2691655133415408166.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P8120897292221712600

`A046523(∑{d}[n+1, A057427(#)]+n+1)`
-/

namespace A286479.P8120897292221712600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ d ∈ Nat.divisors (f1 n), A057427 d + (n + 1 : ℤ)).toNat

end

end A286479.P8120897292221712600

namespace A286479

/-- `A046523(∑{d}[n+1, A057427(#)]+n+1)` -/
def P8120897292221712600.Spec : Prop :=
  ∀ n, P8120897292221712600.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P4024302090294871032

`A181821(A181819(∏{e}[n+1, #+1]+1+n))`
-/

namespace A286479.P4024302090294871032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 + n)).toNat

end

end A286479.P4024302090294871032

namespace A286479

/-- `A181821(A181819(∏{e}[n+1, #+1]+1+n))` -/
def P4024302090294871032.Spec : Prop :=
  ∀ n, P4024302090294871032.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P1165566496757117786

`A046523(A062558(A046523(n+1))+n+1)`
-/

namespace A286479.P1165566496757117786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A062558 (A046523 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A286479.P1165566496757117786

namespace A286479

/-- `A046523(A062558(A046523(n+1))+n+1)` -/
def P1165566496757117786.Spec : Prop :=
  ∀ n, P1165566496757117786.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P12613140784866894122

`A278231(A193231(A000005(n+1)+n+1))`
-/

namespace A286479.P12613140784866894122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278231 (A193231 (A000005 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A286479.P12613140784866894122

namespace A286479

/-- `A278231(A193231(A000005(n+1)+n+1))` -/
def P12613140784866894122.Spec : Prop :=
  ∀ n, P12613140784866894122.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P15310701673503965681

`A046523(n+1+A033273(n+1)+A001222(∏{p}[n+1, #]))`
-/

namespace A286479.P15310701673503965681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((n + 1 : ℤ) + (A033273 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat

end

end A286479.P15310701673503965681

namespace A286479

/-- `A046523(n+1+A033273(n+1)+A001222(∏{p}[n+1, #]))` -/
def P15310701673503965681.Spec : Prop :=
  ∀ n, P15310701673503965681.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P3342709978830367506

`A046523(A007503(n+1)-(A048146(n+1)+A034448(n+1))+n+1)`
-/

namespace A286479.P3342709978830367506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007503 (n + 1) - (A048146 (n + 1) + A034448 (n + 1)) + (n + 1 : ℤ)).toNat

end

end A286479.P3342709978830367506

namespace A286479

/-- `A046523(A007503(n+1)-(A048146(n+1)+A034448(n+1))+n+1)` -/
def P3342709978830367506.Spec : Prop :=
  ∀ n, P3342709978830367506.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P15649310625653727479

`A278264(A064413(A000005(n+1)+n+1))`
-/

namespace A286479.P15649310625653727479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (A000005 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A286479.P15649310625653727479

namespace A286479

/-- `A278264(A064413(A000005(n+1)+n+1))` -/
def P15649310625653727479.Spec : Prop :=
  ∀ n, P15649310625653727479.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P11913789302854298277

`A278263(A064664(A000005(n+1)+n+1))`
-/

namespace A286479.P11913789302854298277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (A064664 (A000005 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A286479.P11913789302854298277

namespace A286479

/-- `A278263(A064664(A000005(n+1)+n+1))` -/
def P11913789302854298277.Spec : Prop :=
  ∀ n, P11913789302854298277.a n = A286479 (n + 1)

end A286479

/-! ## A286479.P7912980879176289655

`A278540(A235201(A000005(n+1)+n+1))`
-/

namespace A286479.P7912980879176289655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (A235201 (A000005 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A286479.P7912980879176289655

namespace A286479

/-- `A278540(A235201(A000005(n+1)+n+1))` -/
def P7912980879176289655.Spec : Prop :=
  ∀ n, P7912980879176289655.a n = A286479 (n + 1)

end A286479

/-!
# A286480: Compound filter (prime signature of n & prime signature of n+d(n)): a(n) = P(A046523(n), A286479(n)), where P(n,k) is sequence A000027 used as a pairing function and d(n) is number of divisors of n (A000005).

The programs for A286480, the canonical program `A286480.P9910857991001992184` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286480 has offset 1).

The definition of A286480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A286479, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286480.P9910857991001992184

`1/2*(2+(A046523(n+1)+A286479(n+1))²-A046523(n+1)-3*A286479(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286480

/-- `1/2*(2+(A046523(n+1)+A286479(n+1))²-A046523(n+1)-3*A286479(n+1))` -/
def P9910857991001992184.Spec : Prop :=
  ∀ n, P9910857991001992184.a n = (A286480 (n + 1) : ℚ)

end A286480

/-!
# A286483: a(n) = (i^n)*Sum_{k=0..n} (k+1)*B_k*|s(n+2,k+2)|*(n+2)^k.

The programs for A286483, there is no canonical definition to state claims against.
-/

/-! ## A286483.P6692576376963052500

`abs(A339207(A000124(n+2)+1))`
-/

namespace A286483.P6692576376963052500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339207 (A000124 (n + 2) + 1).toNat|

end

end A286483.P6692576376963052500

/-!
# A286484: {0010->0}-transform of the Thue-Morse word A010060.

The programs for A286484, there is no canonical definition to state claims against.
-/

/-! ## A286484.P17686439785272982219

`char[A286486(n+1)-1]`
-/

namespace A286484.P17686439785272982219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286486 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286484.P17686439785272982219

/-! ## A286484.P10744464518052185900

`1-A284848(2*(n+1))`
-/

namespace A286484.P10744464518052185900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284848 (2 * (n + 1))

end

end A286484.P10744464518052185900

/-! ## A286484.P3731746057368612310

`and(1, A284848(2*(n+1))+A181605(n+2))`
-/

namespace A286484.P3731746057368612310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284848 (2 * (n + 1)) + A181605 (n + 2))

end

end A286484.P3731746057368612310

/-! ## A286484.P9633185014080051062

`and(1, A284848(2*(n+1))+A005730(2*n+1))`
-/

namespace A286484.P9633185014080051062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284848 (2 * (n + 1)) + A005730 (2 * n + 1))

end

end A286484.P9633185014080051062

/-! ## A286484.P10833929339119819235

`A010060(A284848(2*(n+1))+A001316(n+1))`
-/

namespace A286484.P10833929339119819235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A284848 (2 * (n + 1)) + A001316 (n + 1)).toNat

end

end A286484.P10833929339119819235

/-! ## A286484.P1453097683376823170

`A000035(A284848(2*(n+1))+2*n+1)`
-/

namespace A286484.P1453097683376823170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A284848 (2 * (n + 1)) + (2 * n + 1 : ℤ)).toNat

end

end A286484.P1453097683376823170

/-! ## A286484.P9957380951912079121

`A077966(A284848(2*(n+1))+A077966(2*n+1))`
-/

namespace A286484.P9957380951912079121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A284848 (2 * (n + 1)) + A077966 (2 * n + 1)).toNat

end

end A286484.P9957380951912079121

/-! ## A286484.P6214134392032068080

`and(1, A284848(2*(n+1))+A072941(2*n+1))`
-/

namespace A286484.P6214134392032068080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284848 (2 * (n + 1)) + A072941 (2 * n + 1))

end

end A286484.P6214134392032068080

/-! ## A286484.P2128636176898833839

`and(1, A284848(2*(n+1))+A006134(n+1))`
-/

namespace A286484.P2128636176898833839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284848 (2 * (n + 1)) + A006134 (n + 1))

end

end A286484.P2128636176898833839

/-!
# A286485: Positions of 0 in A286484; complement of A286486.

The programs for A286485, there is no canonical definition to state claims against.
-/

/-! ## A286485.P18098673134594320976

`eq[1, A286484(n+1)+1]+1`
-/

namespace A286485.P18098673134594320976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286484 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286485.P18098673134594320976

/-! ## A286485.P3191846876853097203

`record[n+1-A003215(n)*A286484(n+1)]`
-/

namespace A286485.P3191846876853097203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003215 n * A286484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286485.P3191846876853097203

/-! ## A286485.P9703772741917694524

`record[n+1-A049454(n)*A286484(n+1)]`
-/

namespace A286485.P9703772741917694524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049454 n * A286484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286485.P9703772741917694524

/-! ## A286485.P11704815678392572060

`record[(n+1)/A001462((n+1)*A286484(n+1)+1)]`
-/

namespace A286485.P11704815678392572060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001462 ((n + 1 : ℤ) * A286484 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286485.P11704815678392572060

/-! ## A286485.P11998885015336923196

`eq[1, A284848(2*(n+1))]+1`
-/

namespace A286485.P11998885015336923196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286485.P11998885015336923196

/-! ## A286485.P8299190098187312451

`A008619(eq[A318517(n+1)+1, A284848(n+1)])`
-/

namespace A286485.P8299190098187312451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286485.P8299190098187312451

/-! ## A286485.P14458416282356771996

`A008619(eq[A077966(n)+1, A284848(n+1)])`
-/

namespace A286485.P14458416282356771996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286485.P14458416282356771996

/-!
# A286486: Positions of 1 in A286484; complement of A286485.

The programs for A286486, there is no canonical definition to state claims against.
-/

/-! ## A286486.P17785927621584023459

`record[A000217(A285091(n+2))%A285091(n+2)]`
-/

namespace A286486.P17785927621584023459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A285091 (n + 2)).toNat) (A285091 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286486.P17785927621584023459

/-! ## A286486.P6031878432227721966

`filter[n+1, A286484(#)]`
-/

namespace A286486.P6031878432227721966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286484 (f1 j) = 1) n)

end

end A286486.P6031878432227721966

/-! ## A286486.P7198038679920917986

`eq[1, A286484(n+1)]+1`
-/

namespace A286486.P7198038679920917986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286486.P7198038679920917986

/-! ## A286486.P13028667176465425374

`record[(n+1)*A286484(n+2)+1]`
-/

namespace A286486.P13028667176465425374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286484 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286486.P13028667176465425374

/-! ## A286486.P5979270585143009533

`eq[0, A284848(2*(n+1))]+1`
-/

namespace A286486.P5979270585143009533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286486.P5979270585143009533

/-! ## A286486.P7657373295988504778

`A008619(eq[A284848(n+1), A318517(n+1)])`
-/

namespace A286486.P7657373295988504778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286486.P7657373295988504778

/-! ## A286486.P10926241364587324864

`A008619(eq[A077966(n), A284848(n+1)])`
-/

namespace A286486.P10926241364587324864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286486.P10926241364587324864

/-!
# A286487: {0010->1}-transform of the Thue-Morse word A010060.

The programs for A286487, there is no canonical definition to state claims against.
-/

/-! ## A286487.P7597569689126155611

`char[A286489(n+1)-1]`
-/

namespace A286487.P7597569689126155611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286489 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286487.P7597569689126155611

/-! ## A286487.P2127962701000467680

`char[comp[A286488(n+1)-1]]`
-/

namespace A286487.P2127962701000467680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286488 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286487.P2127962701000467680

/-! ## A286487.P13102805906362190281

`1-char[A286488(A061579(n)+1)-1]`
-/

namespace A286487.P13102805906362190281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286488 (A061579 n + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286487.P13102805906362190281

/-! ## A286487.P9539528731849056123

`char[A321800(A001316(n))+A286489(n+1)]`
-/

namespace A286487.P9539528731849056123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A001316 n).toNat + A286489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286487.P9539528731849056123

/-! ## A286487.P10427972617218547956

`char[A321800(A336722(n+1))+A286489(n+1)]`
-/

namespace A286487.P10427972617218547956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A336722 (n + 1)).toNat + A286489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286487.P10427972617218547956

/-!
# A286488: Positions of 0 in A286487; complement of A286489.

The programs for A286488, there is no canonical definition to state claims against.
-/

/-! ## A286488.P8248169300187874819

`eq[0, A286487(n+1)]+1`
-/

namespace A286488.P8248169300187874819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286488.P8248169300187874819

/-! ## A286488.P1256040526057213237

`record[n+1-A018252(n+1)*A286487(n+1)]`
-/

namespace A286488.P1256040526057213237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A018252 (n + 1) * A286487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286488.P1256040526057213237

/-! ## A286488.P9459577572512566418

`eq[A000007(n), A286487(A065033(2*n))]`
-/

namespace A286488.P9459577572512566418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286488.P9459577572512566418

/-! ## A286488.P9083797729817363911

`eq[A000038(n), A286487(A065033(2*n))]`
-/

namespace A286488.P9083797729817363911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286488.P9083797729817363911

/-! ## A286488.P12435058680362049814

`record[n+1-A266646(n+1)*A286487(n+1)]`
-/

namespace A286488.P12435058680362049814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A266646 (n + 1) * A286487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286488.P12435058680362049814

/-! ## A286488.P13324273395061823602

`record[A089353(A000124(n)-A286487(n+1))]`
-/

namespace A286488.P13324273395061823602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A000124 n - A286487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286488.P13324273395061823602

/-!
# A286489: Positions of 1 in A286487; complement of A286488.

The programs for A286489, there is no canonical definition to state claims against.
-/

/-! ## A286489.P12808150841966295869

`comp[A286488(n+1)-1]+1`
-/

namespace A286489.P12808150841966295869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286488 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286489.P12808150841966295869

/-! ## A286489.P12825920911459570445

`filter[n+1, A286487(#)]`
-/

namespace A286489.P12825920911459570445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286487 (f1 j) = 1) n)

end

end A286489.P12825920911459570445

/-! ## A286489.P1662272742309815570

`eq[1, A286487(n+1)]+1`
-/

namespace A286489.P1662272742309815570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286489.P1662272742309815570

/-! ## A286489.P8359558245218984669

`record[2*A286487(n+2)+n]`
-/

namespace A286489.P8359558245218984669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286487 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286489.P8359558245218984669

/-! ## A286489.P7591206246522266275

`A020725(eq[1, A286487(n+1)])`
-/

namespace A286489.P7591206246522266275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286489.P7591206246522266275

/-! ## A286489.P5340915266892329573

`eq[1, A286487(A000007(n)+n)]`
-/

namespace A286489.P5340915266892329573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286489.P5340915266892329573

/-! ## A286489.P5123531222808999282

`eq[1, A286487(gcd(n, A257088(n)))]`
-/

namespace A286489.P5123531222808999282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (Int.gcd (n : ℤ) (A257088 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286489.P5123531222808999282

/-! ## A286489.P5124970753204405327

`eq[1, A286487(A065033(2*n))]`
-/

namespace A286489.P5124970753204405327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286489.P5124970753204405327

/-!
# A286490: {0101->0}-transform of the Thue-Morse word A010060.

The programs for A286490, there is no canonical definition to state claims against.
-/

/-! ## A286490.P16026383742999526880

`char[A286492(n+1)-1]`
-/

namespace A286490.P16026383742999526880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286492 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286490.P16026383742999526880

/-! ## A286490.P2480684227364931332

`1-char[A286491(n+1)-1]`
-/

namespace A286490.P2480684227364931332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286490.P2480684227364931332

/-! ## A286490.P7575866790732124898

`A284627(abs(2*n-3)+1)`
-/

namespace A286490.P7575866790732124898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284627 (|(2 * n : ℤ) - 3| + 1).toNat

end

end A286490.P7575866790732124898

/-! ## A286490.P9983112316183342313

`and(1, A284627(A004278(n+1)))`
-/

namespace A286490.P9983112316183342313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284627 (A004278 (n + 1)).toNat)

end

end A286490.P9983112316183342313

/-! ## A286490.P6149274249596837787

`and(1, A284627(A300576(n+1)))`
-/

namespace A286490.P6149274249596837787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284627 (A300576 (n + 1)).toNat)

end

end A286490.P6149274249596837787

/-! ## A286490.P18377994515900728832

`ceil(A284627(A004278(n+1))/A000265(n+1))`
-/

namespace A286490.P18377994515900728832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284627 (A004278 (n + 1)).toNat : ℚ) / (A000265 (n + 1) : ℚ)⌉

end

end A286490.P18377994515900728832

/-! ## A286490.P1051474073493798070

`ceil(A284627(A300576(n+1))/A000040(n+1))`
-/

namespace A286490.P1051474073493798070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284627 (A300576 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A286490.P1051474073493798070

/-! ## A286490.P1228580989342194006

`ceil(A284627(A300576(n+1))/A018252(n+1))`
-/

namespace A286490.P1228580989342194006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284627 (A300576 (n + 1)).toNat : ℚ) / (A018252 (n + 1) : ℚ)⌉

end

end A286490.P1228580989342194006

/-! ## A286490.P17883567560888013006

`ceil(A284627(A300576(n+1))/A024898(n+1))`
-/

namespace A286490.P17883567560888013006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284627 (A300576 (n + 1)).toNat : ℚ) / (A024898 (n + 1) : ℚ)⌉

end

end A286490.P17883567560888013006

/-!
# A286491: Positions of 0 in A286490; complement of A286492.

The programs for A286491, there is no canonical definition to state claims against.
-/

/-! ## A286491.P17010315053960836497

`record[C(n+1, 1-A286490(n+1))]`
-/

namespace A286491.P17010315053960836497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (1 - A286490 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286491.P17010315053960836497

/-! ## A286491.P12678460266602492720

`record[n+1-A000290(n*A286490(n+1))]`
-/

namespace A286491.P12678460266602492720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000290 ((n : ℤ) * A286490 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286491.P12678460266602492720

/-! ## A286491.P3285234541355440776

`record[n+1-A225533(n+1)*A286490(n+1)]`
-/

namespace A286491.P3285234541355440776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A225533 (n + 1) * A286490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286491.P3285234541355440776

/-! ## A286491.P4886307319678710094

`record[n+1-A267503(n+1)*A286490(n+1)]`
-/

namespace A286491.P4886307319678710094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267503 (n + 1) * A286490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286491.P4886307319678710094

/-! ## A286491.P4803435889539180824

`record[n+1-A004741(n+2)*A286490(n+1)]`
-/

namespace A286491.P4803435889539180824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004741 (n + 2) * A286490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286491.P4803435889539180824

/-! ## A286491.P14277307786235733466

`eq[A000007(n), A286490(A000007(n)+n)]`
-/

namespace A286491.P14277307786235733466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286491.P14277307786235733466

/-!
# A286492: Positions of 1 in A286490; complement of A286491.

The programs for A286492, there is no canonical definition to state claims against.
-/

/-! ## A286492.P2892043036155380672

`filter[n+1, A286490(#)]`
-/

namespace A286492.P2892043036155380672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286490 (f1 j) = 1) n)

end

end A286492.P2892043036155380672

/-! ## A286492.P6097031599716112542

`eq[1, A286490(n+1)]+1`
-/

namespace A286492.P6097031599716112542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286492.P6097031599716112542

/-! ## A286492.P5011225951318424287

`record[(n+2)*A286490(n+2)]`
-/

namespace A286492.P5011225951318424287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A286490 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286492.P5011225951318424287

/-! ## A286492.P6178604306783672533

`eq[1, A286490(A000007(n)+n)]`
-/

namespace A286492.P6178604306783672533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286492.P6178604306783672533

/-! ## A286492.P16454400496999548139

`eq[char[A286491(n+1)], A000007(n)]`
-/

namespace A286492.P16454400496999548139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286491 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286492.P16454400496999548139

/-! ## A286492.P9931758349220847947

`eq[1, A286490(A123108(2*n))]`
-/

namespace A286492.P9931758349220847947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286492.P9931758349220847947

/-!
# A286493: {1011->0}-transform of the Thue-Morse word A010060.

The programs for A286493, there is no canonical definition to state claims against.
-/

/-! ## A286493.P7617273774163122217

`char[A286495(n+1)-1]`
-/

namespace A286493.P7617273774163122217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286495 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286493.P7617273774163122217

/-! ## A286493.P6893705070265552315

`char[comp[A286494(n+1)-1]]`
-/

namespace A286493.P6893705070265552315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286494 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286493.P6893705070265552315

/-! ## A286493.P413470479833518084

`1-char[A286494(A000038(n)+n)-1]`
-/

namespace A286493.P413470479833518084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286494 (A000038 n + (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286493.P413470479833518084

/-! ## A286493.P10435009778562665433

`A033999(2*n)-char[A286494(n+1)-1]`
-/

namespace A286493.P10435009778562665433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286494 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286493.P10435009778562665433

/-! ## A286493.P7483542358242612006

`A286009(n+1)%A317960(n)`
-/

namespace A286493.P7483542358242612006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286009 (n + 1)) (A317960 n)

end

end A286493.P7483542358242612006

/-!
# A286494: Positions of 0 in A286493; complement of A286495.

The programs for A286494, there is no canonical definition to state claims against.
-/

/-! ## A286494.P6444963774259113093

`comp[A286495(n+1)-1]+1`
-/

namespace A286494.P6444963774259113093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286495 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286494.P6444963774259113093

/-! ## A286494.P11076030383147040519

`eq[1, A286493(n+1)+1]+1`
-/

namespace A286494.P11076030383147040519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286494.P11076030383147040519

/-! ## A286494.P3967595573693008275

`record[n+1-A099354(n*A286493(n+1))]`
-/

namespace A286494.P3967595573693008275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A099354 ((n : ℤ) * A286493 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286494.P3967595573693008275

/-! ## A286494.P7816689079505828131

`record[n+1-A100846(n)*A286493(n+1)]`
-/

namespace A286494.P7816689079505828131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A100846 n * A286493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286494.P7816689079505828131

/-! ## A286494.P17781814082840194924

`record[n+1-A045940(n+1)*A286493(n+1)]`
-/

namespace A286494.P17781814082840194924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045940 (n + 1) * A286493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286494.P17781814082840194924

/-! ## A286494.P1250775418889544751

`eq[A000007(n), A286493(A000007(n)+n)]`
-/

namespace A286494.P1250775418889544751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286494.P1250775418889544751

/-! ## A286494.P9459119312497953066

`record[n+1-A048577(n)*A286493(n+1)]`
-/

namespace A286494.P9459119312497953066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048577 n * A286493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286494.P9459119312497953066

/-!
# A286495: Positions of 1 in A286493; complement of A286494.

The programs for A286495, there is no canonical definition to state claims against.
-/

/-! ## A286495.P8931116161493150750

`filter[n+1, A286493(#)]`
-/

namespace A286495.P8931116161493150750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286493 (f1 j) = 1) n)

end

end A286495.P8931116161493150750

/-! ## A286495.P3040865765333097636

`eq[1, A286493(n+1)]+1`
-/

namespace A286495.P3040865765333097636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286495.P3040865765333097636

/-! ## A286495.P10591965313557015525

`record[(n+2)*A286493(n+2)]`
-/

namespace A286495.P10591965313557015525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A286493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286495.P10591965313557015525

/-! ## A286495.P14755599331566733081

`eq[1, A286493(A000007(n)+n)]`
-/

namespace A286495.P14755599331566733081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286495.P14755599331566733081

/-! ## A286495.P3730346428472141400

`eq[1, A286493(A065033(2*n))]`
-/

namespace A286495.P3730346428472141400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286495.P3730346428472141400

/-! ## A286495.P14535150993337560629

`eq[1, A286493(A123108(2*n))]`
-/

namespace A286495.P14535150993337560629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286495.P14535150993337560629

/-!
# A286496: Renyi-Ulam liar numbers: maximum k such that n questions "Is x in subset S of {1,...,k}?" are guaranteed to determine x when at most one answer can be a lie.

The programs for A286496, there is no canonical definition to state claims against.
-/

/-! ## A286496.P16436720205249045206

`A004277(floor(A016116(2*n)/A004277(n+1)))`
-/

namespace A286496.P16436720205249045206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌊(A016116 (2 * n) : ℚ) / (A004277 (n + 1) : ℚ)⌋.toNat

end

end A286496.P16436720205249045206

/-! ## A286496.P3282324762179017812

`A028310(and(4^(n+1)+2^(n+1)-2, floor(2^n/(n+1))))`
-/

namespace A286496.P3282324762179017812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land ((4 ^ (n + 1) + 2 ^ (n + 1) : ℤ) - 2) ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋).toNat

end

end A286496.P3282324762179017812

/-! ## A286496.P17461352847750516686

`A131055(A006788(n+1))`
-/

namespace A286496.P17461352847750516686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A006788 (n + 1)).toNat

end

end A286496.P17461352847750516686

/-! ## A286496.P4485709856058165769

`A092533(A000799(n+1))`
-/

namespace A286496.P4485709856058165769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A000799 (n + 1)).toNat

end

end A286496.P4485709856058165769

/-! ## A286496.P8669049761059503713

`A092533(A053638(n+1))`
-/

namespace A286496.P8669049761059503713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A053638 (n + 1)).toNat

end

end A286496.P8669049761059503713

/-!
# A286497: Prime power Giuga numbers: composite numbers n > 1 such that -1/n + sum 1/p^k = 1, where the sum is over the prime powers p^k dividing n.

The programs for A286497, there is no canonical definition to state claims against.
-/

/-! ## A286497.P17515750703619212176

`A065475(eq[A065475(n+1), A095112(n+1)])`
-/

namespace A286497.P17515750703619212176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286497.P17515750703619212176

/-!
# A286498: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A286498, there is no canonical definition to state claims against.
-/

/-! ## A286498.P2366930362386962750

`A007088(A286501(n))`
-/

namespace A286498.P2366930362386962750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286501 n).toNat

end

end A286498.P2366930362386962750

/-! ## A286498.P14053346482329543703

`A007088(or(A000009(n), A286206(n)))`
-/

namespace A286498.P14053346482329543703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A000009 n) (A286206 n)).toNat

end

end A286498.P14053346482329543703

/-! ## A286498.P11146526647332395761

`A007088(or(A026810(n), A286206(n)))`
-/

namespace A286498.P11146526647332395761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A026810 n) (A286206 n)).toNat

end

end A286498.P11146526647332395761

/-! ## A286498.P40338280479295859

`A007088(or(A059268(n), A286206(n)))`
-/

namespace A286498.P40338280479295859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A059268 n) (A286206 n)).toNat

end

end A286498.P40338280479295859

/-! ## A286498.P17013421421178143120

`A007088(or(A131689(n), A286206(n)))`
-/

namespace A286498.P17013421421178143120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A131689 n) (A286206 n)).toNat

end

end A286498.P17013421421178143120

/-!
# A286499: Primes which divide a term of A073935.

The programs for A286499, there is no canonical definition to state claims against.
-/

/-! ## A286499.P1690000133513760102

`record[A020639(A325780(n+1)+1)]`
-/

namespace A286499.P1690000133513760102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A325780 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286499.P1690000133513760102

/-! ## A286499.P12166087131955264911

`record[A120007(A325780(n+1)+1)]`
-/

namespace A286499.P12166087131955264911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A325780 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286499.P12166087131955264911

/-! ## A286499.P13610467162276620636

`record[A323171(A325780(n+1)+1)]`
-/

namespace A286499.P13610467162276620636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323171 (A325780 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286499.P13610467162276620636

/-! ## A286499.P18126469947107377853

`∩[A000040(n+1), A325780(n+1)+1]`
-/

namespace A286499.P18126469947107377853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325780 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286499.P18126469947107377853

