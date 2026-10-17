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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A161300: Number of partitions of n into numbers not divisible by 4 where every part appears at least 9 times.

The programs for A161300, there is no canonical definition to state claims against.
-/

/-! ## A161300.P15441968360632830512

`or(A025469(A161336(n+2)), A161084(n+1))`
-/

namespace A161300.P15441968360632830512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A161336 (n + 2)).toNat) (A161084 (n + 1))

end

end A161300.P15441968360632830512

/-!
# A161306: Number of partitions of n into Somos-4 sequence numbers A006720.

The programs for A161306, there is no canonical definition to state claims against.
-/

/-! ## A161306.P440170267766667201

`∑[A255270(A015128(n))]`
-/

namespace A161306.P440170267766667201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A015128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161306.P440170267766667201

/-! ## A161306.P3236970321826975395

`record[A029178(A112318(n))]`
-/

namespace A161306.P3236970321826975395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (A112318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161306.P3236970321826975395

/-! ## A161306.P9042011883233122070

`record[A029293(A131516(n))]`
-/

namespace A161306.P9042011883233122070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029293 (A131516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161306.P9042011883233122070

/-! ## A161306.P6559876879310881105

`∑[A255270(Δ[A196723(n)])]`
-/

namespace A161306.P6559876879310881105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161306.P6559876879310881105

/-! ## A161306.P3984523418164539037

`A029178(record[A360005(n+2)])`
-/

namespace A161306.P3984523418164539037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161306.P3984523418164539037

/-!
# A161307: Number of partitions of n into Somos-4 sequence numbers A006720 where every part appears at least 2 times.

The programs for A161307, there is no canonical definition to state claims against.
-/

/-! ## A161307.P9251657756698135250

`A004526(A157795(n))-A049820(n+1)`
-/

namespace A161307.P9251657756698135250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A157795 n).toNat - A049820 (n + 1)

end

end A161307.P9251657756698135250

/-! ## A161307.P16351730404161679645

`A161241(n+1)-A055641(A083329(n))`
-/

namespace A161307.P16351730404161679645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161241 (n + 1) - A055641 (A083329 n).toNat

end

end A161307.P16351730404161679645

/-! ## A161307.P12180777063678194205

`A161241(n+1)-A178798(A097331(n))`
-/

namespace A161307.P12180777063678194205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161241 (n + 1) - A178798 (A097331 n).toNat

end

end A161307.P12180777063678194205

/-! ## A161307.P17971234059754059553

`A029262(lt[A029278(n), A029234(n+4)])`
-/

namespace A161307.P17971234059754059553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161307.P17971234059754059553

/-! ## A161307.P15359163338070763070

`A003179(A266886(n+1))*A029262(2*n+2)`
-/

namespace A161307.P15359163338070763070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003179 (A266886 (n + 1)).toNat * A029262 (2 * n + 2)

end

end A161307.P15359163338070763070

/-!
# A161308: Number of partitions of n into Somos-4 sequence numbers A006720 where every part appears at least 3 times.

The programs for A161308, there is no canonical definition to state claims against.
-/

/-! ## A161308.P16887778310039996253

`A161242(n+1)-A067169(A348178(n+1))`
-/

namespace A161308.P16887778310039996253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161242 (n + 1) - A067169 ((A348178 (n + 1)).toNat + 11)

end

end A161308.P16887778310039996253

/-! ## A161308.P16505632932864657836

`A161242(n+1)-A025465(A336662(n))`
-/

namespace A161308.P16505632932864657836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161242 (n + 1) - A025465 (A336662 n).toNat

end

end A161308.P16505632932864657836

/-! ## A161308.P5836217032115914818

`A161242(n+1)-A189668(A174510(n))`
-/

namespace A161308.P5836217032115914818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161242 (n + 1) - A189668 (A174510 n).toNat

end

end A161308.P5836217032115914818

/-! ## A161308.P4800937054841385285

`A161242(n+1)-A016232(A038479(n+1))`
-/

namespace A161308.P4800937054841385285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161242 (n + 1) - A016232 (A038479 (n + 1)).toNat

end

end A161308.P4800937054841385285

/-!
# A161309: Number of partitions of n into Somos-4 sequence numbers A006720 where every part appears at least 4 times.

The programs for A161309, there is no canonical definition to state claims against.
-/

/-! ## A161309.P7653220587479015941

`A161243(n+1)-A067898(A174127(n))`
-/

namespace A161309.P7653220587479015941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161243 (n + 1) - A067898 (A174127 n).toNat

end

end A161309.P7653220587479015941

/-! ## A161309.P10137848049716670590

`A161243(n+1)-A102683(A157638(n))`
-/

namespace A161309.P10137848049716670590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161243 (n + 1) - A102683 (A157638 n).toNat

end

end A161309.P10137848049716670590

/-! ## A161309.P16263870435281771764

`A161243(n+1)-A025465(A144439(n+1))`
-/

namespace A161309.P16263870435281771764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161243 (n + 1) - A025465 (A144439 (n + 1)).toNat

end

end A161309.P16263870435281771764

/-! ## A161309.P5116683294859501762

`A161243(n+1)-A161236(A105681(n+1))`
-/

namespace A161309.P5116683294859501762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161243 (n + 1) - A161236 (A105681 (n + 1)).toNat

end

end A161309.P5116683294859501762

/-!
# A161311: Number of partitions of n into Somos-4 sequence numbers A006720 where every part appears at least 6 times.

The programs for A161311, there is no canonical definition to state claims against.
-/

/-! ## A161311.P11914452420285647521

`A161245(n+1)-A185284(A273282(n+2))`
-/

namespace A161311.P11914452420285647521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161245 (n + 1) - A185284 (A273282 (n + 2)).toNat

end

end A161311.P11914452420285647521

/-!
# A161314: Number of partitions of n into Somos-4 sequence numbers A006720 where every part appears at least 9 times.

The programs for A161314, there is no canonical definition to state claims against.
-/

/-! ## A161314.P4361834441771490568

`A161248(n+1)-A086883(n+1)%A030580(n+1)`
-/

namespace A161314.P4361834441771490568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161248 (n + 1) - Int.tmod (A086883 (n + 1)) (A030580 (n + 1))

end

end A161314.P4361834441771490568

/-!
# A161318: Number of partitions of n into Somos-4 sequence numbers A006720 where every part appears at least 13 times.

The programs for A161318, there is no canonical definition to state claims against.
-/

/-! ## A161318.P1073689933926462673

`A161252(n+1)-A161252(A289944(n+1))`
-/

namespace A161318.P1073689933926462673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161252 (n + 1) - A161252 (A289944 (n + 1)).toNat

end

end A161318.P1073689933926462673

/-!
# A161319: Number of partitions of n into Somos-4 sequence numbers A006720 where every part appears at least 14 times.

The programs for A161319, there is no canonical definition to state claims against.
-/

/-! ## A161319.P7131356388564151738

`A191254(A081578(n))+A161253(n+1)`
-/

namespace A161319.P7131356388564151738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A081578 n).toNat + A161253 (n + 1)

end

end A161319.P7131356388564151738

/-! ## A161319.P1027795145722809521

`A185284(A161265(n+1))+A161253(n+1)`
-/

namespace A161319.P1027795145722809521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161265 (n + 1)).toNat + A161253 (n + 1)

end

end A161319.P1027795145722809521

/-! ## A161319.P14871704556251930923

`A161253(n+1)%A077960(A083522(n+1))`
-/

namespace A161319.P14871704556251930923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161253 (n + 1)) (A077960 (A083522 (n + 1)).toNat)

end

end A161319.P14871704556251930923

/-! ## A161319.P9344756190388205299

`A057427(A238794(n+3)+1)*A161253(n+1)`
-/

namespace A161319.P9344756190388205299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A238794 (n + 3) + 1).toNat * A161253 (n + 1)

end

end A161319.P9344756190388205299

/-! ## A161319.P4674972008260668903

`A057427(A178862(n+1)-n)*A161253(n+1)`
-/

namespace A161319.P4674972008260668903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A178862 (n + 1) - (n : ℤ)).toNat * A161253 (n + 1)

end

end A161319.P4674972008260668903

/-! ## A161319.P10017168041247593667

`A057427(A178862(n+1))*A161253(n+1)`
-/

namespace A161319.P10017168041247593667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A178862 (n + 1)).toNat * A161253 (n + 1)

end

end A161319.P10017168041247593667

/-! ## A161319.P11646861305813923351

`A349136(A020331(n+1))+A161253(n+1)`
-/

namespace A161319.P11646861305813923351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (A020331 (n + 1)).toNat + A161253 (n + 1)

end

end A161319.P11646861305813923351

/-! ## A161319.P5235429503297528515

`A057427(A161294(n+1))*A161253(n+1)`
-/

namespace A161319.P5235429503297528515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A161294 (n + 1)).toNat * A161253 (n + 1)

end

end A161319.P5235429503297528515

/-! ## A161319.P7842669894412058739

`A057427(A000607(n))*A161253(n+1)`
-/

namespace A161319.P7842669894412058739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000607 n).toNat * A161253 (n + 1)

end

end A161319.P7842669894412058739

/-! ## A161319.P2226591089860479834

`A057427(A161291(3*n+5))*A161253(n+1)`
-/

namespace A161319.P2226591089860479834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A161291 (3 * n + 5)).toNat * A161253 (n + 1)

end

end A161319.P2226591089860479834

/-!
# A161320: Floor of Sum_{k=1..n} Sum_{m=1..k} (2*cosh(Pi*m/(2*k)) - 1).

The programs for A161320, there is no canonical definition to state claims against.
-/

/-! ## A161320.P10729425216161272243

`A333382(A344161(n+1))+A131805(2*(n+2))`
-/

namespace A161320.P10729425216161272243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A344161 (n + 1)).toNat + A131805 (2 * (n + 2))

end

end A161320.P10729425216161272243

/-! ## A161320.P3883180123742262863

`A126949(A077741(n+1)²)-1`
-/

namespace A161320.P3883180123742262863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126949 (A077741 (n + 1) ^ 2).toNat - 1

end

end A161320.P3883180123742262863

/-! ## A161320.P13161030506506478236

`A331591(A001168(n))+(n+2)²`
-/

namespace A161320.P13161030506506478236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A001168 n).toNat + ((n + 2) ^ 2 : ℤ)

end

end A161320.P13161030506506478236

/-! ## A161320.P6558606573148000774

`∑[A356670(2*n+3)+A014491(n+1)]`
-/

namespace A161320.P6558606573148000774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356670 (2 * n + 3) + A014491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161320.P6558606573148000774

/-! ## A161320.P2368719062890848342

`A295866(A213824(n+2))`
-/

namespace A161320.P2368719062890848342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A213824 (n + 2)).toNat

end

end A161320.P2368719062890848342

/-!
# A161321: Decimal expansion of (sqrt(35)-5)/10.

The programs for A161321, there is no canonical definition to state claims against.
-/

/-! ## A161321.P4956841953955229525

`A090656(n+1)`
-/

namespace A161321.P4956841953955229525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090656 (n + 1 + 2)

end

end A161321.P4956841953955229525

/-! ## A161321.P455553340475787794

`A010490(n)*A057427(n)`
-/

namespace A161321.P455553340475787794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010490 (n + 1) * A057427 n

end

end A161321.P455553340475787794

/-! ## A161321.P8607542608701137772

`A010490(n)%(4-A040072(n))`
-/

namespace A161321.P8607542608701137772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010490 (n + 1)) (4 - A040072 n)

end

end A161321.P8607542608701137772

/-! ## A161321.P6127604980572475544

`A010490(n)-xor(6, A040006(n))`
-/

namespace A161321.P6127604980572475544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010490 (n + 1) - Int.xor 6 (A040006 n)

end

end A161321.P6127604980572475544

/-! ## A161321.P16751502230009295816

`A010490(n)+A040029(n)-A010691(n+1)`
-/

namespace A161321.P16751502230009295816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010490 (n + 1) + (A040029 n - A010691 (n + 1))

end

end A161321.P16751502230009295816

/-!
# A161322: a(n) = A000043(n) written in base 4.

The programs for A161322, there is no canonical definition to state claims against.
-/

/-! ## A161322.P14406558371275644175

`A007090(A000043(n+1))`
-/

namespace A161322.P14406558371275644175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A000043 (n + 1)).toNat

end

end A161322.P14406558371275644175

/-! ## A161322.P15431805531194601973

`A004678(A016027(n+1))`
-/

namespace A161322.P15431805531194601973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (A016027 (n + 1)).toNat

end

end A161322.P15431805531194601973

/-! ## A161322.P8310014411895281201

`A007090(p?[A072226(n+1)])`
-/

namespace A161322.P8310014411895281201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A161322.P8310014411895281201

/-! ## A161322.P5391747184908031497

`A007090(p?[A161508(n+1)])`
-/

namespace A161322.P5391747184908031497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A161322.P5391747184908031497

/-! ## A161322.P6019117967909261290

`A007090(p?[A270427(n+1)])`
-/

namespace A161322.P6019117967909261290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A161322.P6019117967909261290

/-!
# A161324: Let b(m,k) be the k-th binary digit (starting at k=1, reading right to left) in the base-2 representation of m. (So: n = Sum_{k>=0} b(k+1)*2^k.) A positive integer m is included in this sequence if and only if m = Product_{k>=1} k^b(m,k).

The programs for A161324, there is no canonical definition to state claims against.
-/

/-! ## A161324.P8621462963293843608

`record[∏[A261904(3*(n+1))]]`
-/

namespace A161324.P8621462963293843608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161324.P8621462963293843608

/-!
# A161325: Partial sums of A160414.

The programs for A161325, there is no canonical definition to state claims against.
-/

/-! ## A161325.P12899337992477120578

`∑[A160414(n)]`
-/

namespace A161325.P12899337992477120578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161325.P12899337992477120578

/-! ## A161325.P1859633809585489470

`∑[A161415(n)+a(n-1)]` with `a(0)=0`
-/

namespace A161325.P1859633809585489470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A161415 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161325.P1859633809585489470

/-! ## A161325.P11036594714923723787

`A160414(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A161325.P11036594714923723787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160414 n + a (A023443 n).toNat

end

end A161325.P11036594714923723787

/-! ## A161325.P9750557665118837570

`∑[A173460(A004273(n)+n)/9]`
-/

namespace A161325.P9750557665118837570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173460 (A004273 n + (n : ℤ)).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161325.P9750557665118837570

/-! ## A161325.P18149709145919007195

`A000027(A160414(n)+a(n-1))` with `a(0)=0`
-/

namespace A161325.P18149709145919007195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (A160414 n + a (n - 1)).toNat

end

end A161325.P18149709145919007195

/-!
# A161326: Sequence to which the rows of the triangle of A160121 converge.

The programs for A161326, there is no canonical definition to state claims against.
-/

/-! ## A161326.P5502021818245983550

`A160121(n+35)`
-/

namespace A161326.P5502021818245983550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (n + 35)

end

end A161326.P5502021818245983550

/-! ## A161326.P809538473767481608

`Δ[A160120(n+34)]`
-/

namespace A161326.P809538473767481608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (n + 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161326.P809538473767481608

/-! ## A161326.P15820032078779290761

`3*A161327(n+1)`
-/

namespace A161326.P15820032078779290761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161327 (n + 1)

end

end A161326.P15820032078779290761

/-! ## A161326.P90039581275000475

`3*A160123(n+34)`
-/

namespace A161326.P90039581275000475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160123 (n + 34)

end

end A161326.P90039581275000475

/-! ## A161326.P13194371286842618450

`3*Δ[A299776(n+34)/4]`
-/

namespace A161326.P13194371286842618450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299776 (n + 34) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A161326.P13194371286842618450

/-!
# A161327: a(n) = A161326(n)/3.

The programs for A161327, there is no canonical definition to state claims against.
-/

/-! ## A161327.P8817505148295526599

`A161326(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161327.P8817505148295526599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161326 (n + 1) : ℚ) / 3

end

end A161327.P8817505148295526599

/-! ## A161327.P405952962419467371

`A160123(n+34)`
-/

namespace A161327.P405952962419467371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160123 (n + 34)

end

end A161327.P405952962419467371

/-! ## A161327.P17007774797197864913

`A160121(n+35)/3`
-/

namespace A161327.P17007774797197864913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160121 (n + 35) : ℚ) / 3

end

end A161327.P17007774797197864913

/-! ## A161327.P8744699261932828172

`Δ[A160120(n+34)/3]`
-/

namespace A161327.P8744699261932828172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160120 (n + 34) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161327.P8744699261932828172

/-! ## A161327.P7752134400326055440

`Δ[A299776(n+34)/4]`
-/

namespace A161327.P7752134400326055440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299776 (n + 34) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161327.P7752134400326055440

/-!
# A161328: E-toothpick sequence (see Comments lines for definition).

The programs for A161328, there is no canonical definition to state claims against.
-/

/-! ## A161328.P6369828426392926600

`∑[A161329(floor(acot(n)+n))]-1`
-/

namespace A161328.P6369828426392926600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161329 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161328.P6369828426392926600

/-! ## A161328.P6232955092268617053

`∑[A161329(round(sqrt(n²+1)))]-1`
-/

namespace A161328.P6232955092268617053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161329 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161328.P6232955092268617053

/-! ## A161328.P12591276248365761743

`∑[A161329(val(a(n-1), 2)+n)]` with `a(0)=0, a(1)=1`
-/

namespace A161328.P12591276248365761743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A161329 (SequenceMachineLib.valuation (f1 (n - 1)).toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161328.P12591276248365761743

/-! ## A161328.P5470004778879632339

`∑[A161329(a(n-1-abs(1-n))+n)]` with `a(0)=0`
-/

namespace A161328.P5470004778879632339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A161329 (f1 ((n : ℤ) - 1 - |1 - (n : ℤ)|).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161328.P5470004778879632339

/-! ## A161328.P11308293224930404054

`∑[A057427(n)*A161329(A028310(n))]`
-/

namespace A161328.P11308293224930404054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A161329 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161328.P11308293224930404054

/-! ## A161328.P18155571174142627941

`∑[A161329(A028310(n))*A178334(n)]`
-/

namespace A161328.P18155571174142627941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161329 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161328.P18155571174142627941

/-! ## A161328.P6284511264304719944

`∑[A161329(A028310(n))%A000070(n)]`
-/

namespace A161328.P6284511264304719944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161329 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161328.P6284511264304719944

/-! ## A161328.P4478785786304096926

`∑[A000040(n+1)%2*A161329(A028310(n))]`
-/

namespace A161328.P4478785786304096926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A161329 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161328.P4478785786304096926

/-!
# A161329: First differences of A161328.

The programs for A161329, there is no canonical definition to state claims against.
-/

/-! ## A161329.P6098513999432536742

`Δ[A161328(n)]`
-/

namespace A161329.P6098513999432536742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161329.P6098513999432536742

/-! ## A161329.P12911430372741549561

`A161328(n+1)-A161328(n)`
-/

namespace A161329.P12911430372741549561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161328 (n + 1) - A161328 n

end

end A161329.P12911430372741549561

/-! ## A161329.P16969015284054587469

`record[A161328(abs(1-n))]-A161328(n)`
-/

namespace A161329.P16969015284054587469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161328 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A161328 n

end

end A161329.P16969015284054587469

/-!
# A161330: Snowflake (or E-toothpick) sequence (see Comments lines for definition).

The programs for A161330, there is no canonical definition to state claims against.
-/

/-! ## A161330.P2305325275082904101

`∑[A161331(n)]`
-/

namespace A161330.P2305325275082904101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161330.P2305325275082904101

/-! ## A161330.P5430720301397475495

`A161331(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A161330.P5430720301397475495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161331 n + a (A023443 n).toNat

end

end A161330.P5430720301397475495

/-! ## A161330.P18106975018246200463

`A161331(n)+a(A028310(n)-1)` with `a(0)=0`
-/

namespace A161330.P18106975018246200463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161331 n + a (A028310 n - 1).toNat

end

end A161330.P18106975018246200463

/-! ## A161330.P11856106215654961902

`A161331(n)+a(A006370(2*n)-1)` with `a(0)=0`
-/

namespace A161330.P11856106215654961902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161331 n + a (A006370 (2 * n) - 1).toNat

end

end A161330.P11856106215654961902

/-! ## A161330.P12274837886020541958

`a(n-1)+A161331(n)%Δ[A056520(n)]` with `a(0)=0`
-/

namespace A161330.P12274837886020541958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A161331 n) (f1 (n + 1) - f1 n)

end

end A161330.P12274837886020541958

/-! ## A161330.P1193673338595231845

`∑[2*A161332(n)]`
-/

namespace A161330.P1193673338595231845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161330.P1193673338595231845

/-! ## A161330.P15283045694705535424

`A005843(∑[A161332(n)])`
-/

namespace A161330.P15283045694705535424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161330.P15283045694705535424

/-! ## A161330.P10786812486627106756

`A005408(∑[A161332(n)])-1`
-/

namespace A161330.P10786812486627106756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A161330.P10786812486627106756

/-! ## A161330.P7528276239039209049

`∑[A001281(lcm(4, A161332(n)))]`
-/

namespace A161330.P7528276239039209049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 4 (A161332 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161330.P7528276239039209049

/-! ## A161330.P1176968638373723776

`round(A016921(∑[A161332(n)])/3)`
-/

namespace A161330.P1176968638373723776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3)

end

end A161330.P1176968638373723776

/-!
# A161331: First differences of A161330.

The programs for A161331, there is no canonical definition to state claims against.
-/

/-! ## A161331.P17409344509706754599

`Δ[A161330(A004273(n)-n)]`
-/

namespace A161331.P17409344509706754599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161331.P17409344509706754599

/-! ## A161331.P5211749333212036113

`Δ[A161330(n-A057427(n))]`
-/

namespace A161331.P5211749333212036113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161331.P5211749333212036113

/-! ## A161331.P8504774133007187290

`Δ[A161330(n-A139250(n)%2)]`
-/

namespace A161331.P8504774133007187290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 ((n : ℤ) - Int.tmod (A139250 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161331.P8504774133007187290

/-! ## A161331.P6473476941802782839

`Δ[A161330(comp[A073659(n+2)]-n)]`
-/

namespace A161331.P6473476941802782839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161331.P6473476941802782839

/-! ## A161331.P8710274560328056844

`Δ[A161330(A004524(A004273(n)))]`
-/

namespace A161331.P8710274560328056844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161331.P8710274560328056844

/-! ## A161331.P8011748481385404905

`A161330(n)-A161330(A004273(n)-n)`
-/

namespace A161331.P8011748481385404905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 n - A161330 (A004273 n - (n : ℤ)).toNat

end

end A161331.P8011748481385404905

/-! ## A161331.P11111272578664795427

`A161330(n)-A161330(n-A057427(n))`
-/

namespace A161331.P11111272578664795427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 n - A161330 ((n : ℤ) - A057427 n).toNat

end

end A161331.P11111272578664795427

/-! ## A161331.P15362837175686959256

`A161330(n)-A161330(A004524(A004273(n)))`
-/

namespace A161331.P15362837175686959256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 n - A161330 (A004524 (A004273 n).toNat).toNat

end

end A161331.P15362837175686959256

/-! ## A161331.P8625528220473025058

`2*A161332(n)`
-/

namespace A161331.P8625528220473025058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161332 n

end

end A161331.P8625528220473025058

/-! ## A161331.P17886667269413755099

`A005843(A161332(n))`
-/

namespace A161331.P17886667269413755099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A161332 n).toNat

end

end A161331.P17886667269413755099

/-!
# A161332: a(n) = A161331(n)/2.

The programs for A161332, there is no canonical definition to state claims against.
-/

/-! ## A161332.P175081578583979258

`A161331(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161332.P175081578583979258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161331 n : ℚ) / 2

end

end A161332.P175081578583979258

/-! ## A161332.P11237940067506504684

`A001281(A161331(n))`
-/

namespace A161332.P11237940067506504684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161331 n).toNat

end

end A161332.P11237940067506504684

/-! ## A161332.P6414965118705621440

`A004524(A161331(n)+1)`
-/

namespace A161332.P6414965118705621440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A161331 n + 1).toNat

end

end A161332.P6414965118705621440

/-! ## A161332.P15195025107956183446

`A004526(A161331(n)+1)`
-/

namespace A161332.P15195025107956183446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A161331 n + 1).toNat

end

end A161332.P15195025107956183446

/-! ## A161332.P11744139193705014227

`A028242(A161331(n)+1)`
-/

namespace A161332.P11744139193705014227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A161331 n + 1).toNat

end

end A161332.P11744139193705014227

/-! ## A161332.P11597812695228905669

`A057979(A161331(n)+1)`
-/

namespace A161332.P11597812695228905669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A161331 n + 1).toNat

end

end A161332.P11597812695228905669

/-! ## A161332.P7401167938217976284

`A123108(A161331(n)+1)`
-/

namespace A161332.P7401167938217976284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A161331 n + 1).toNat

end

end A161332.P7401167938217976284

/-! ## A161332.P11084761646201030539

`A140106(A161331(n)+2)`
-/

namespace A161332.P11084761646201030539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A161331 n + 2).toNat

end

end A161332.P11084761646201030539

/-! ## A161332.P3276270188459134894

`A002265(2*A161331(n))`
-/

namespace A161332.P3276270188459134894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A161331 n).toNat

end

end A161332.P3276270188459134894

/-! ## A161332.P3051464518286782849

`A002265(lcm(4, A161331(n)))`
-/

namespace A161332.P3051464518286782849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 4 (A161331 n))

end

end A161332.P3051464518286782849

/-!
# A161333: a(n) = A161330(n)*3.

The programs for A161333, there is no canonical definition to state claims against.
-/

/-! ## A161333.P15304080100690624087

`A161330(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161333.P15304080100690624087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 n * 3

end

end A161333.P15304080100690624087

/-! ## A161333.P17286539308542128226

`6*A161334(n)`
-/

namespace A161333.P17286539308542128226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A161334 n

end

end A161333.P17286539308542128226

/-! ## A161333.P6945024732586792592

`∑[3*A161331(n)]`
-/

namespace A161333.P6945024732586792592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161333.P6945024732586792592

/-! ## A161333.P17021482870372220035

`∑[6*A161332(n)]`
-/

namespace A161333.P17021482870372220035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A161332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161333.P17021482870372220035

/-! ## A161333.P3887080421675567829

`3/2*A161335(n)`
-/

namespace A161333.P3887080421675567829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A161335 n : ℚ)

end

end A161333.P3887080421675567829

/-!
# A161334: Numbers of snowflake sequence, divided by 2: a(n) = A161330(n)/2.

The programs for A161334, there is no canonical definition to state claims against.
-/

/-! ## A161334.P9907984327548673664

`A161330(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161334.P9907984327548673664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 n : ℚ) / 2

end

end A161334.P9907984327548673664

/-! ## A161334.P15321874786240710002

`∑[A161332(n)]`
-/

namespace A161334.P15321874786240710002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161334.P15321874786240710002

/-! ## A161334.P6044901459767612699

`∑[A161331(n)/2]`
-/

namespace A161334.P6044901459767612699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161331 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161334.P6044901459767612699

/-! ## A161334.P16082018186836836196

`A001281(A161330(n))`
-/

namespace A161334.P16082018186836836196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161330 n).toNat

end

end A161334.P16082018186836836196

/-! ## A161334.P10388399371051519007

`A001281(∑[A161331(n)])`
-/

namespace A161334.P10388399371051519007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161334.P10388399371051519007

/-! ## A161334.P12974279497080941823

`A004525(∑[A161331(n)])`
-/

namespace A161334.P12974279497080941823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161334.P12974279497080941823

/-! ## A161334.P17607857793420345099

`A014682(∑[A161331(n)])`
-/

namespace A161334.P17607857793420345099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161334.P17607857793420345099

/-! ## A161334.P7461095826675103705

`A025480(∑[A161331(n)])`
-/

namespace A161334.P7461095826675103705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161334.P7461095826675103705

/-! ## A161334.P11122153188183594027

`A004524(A161330(n)+1)`
-/

namespace A161334.P11122153188183594027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A161330 n + 1).toNat

end

end A161334.P11122153188183594027

/-! ## A161334.P12930639991332449917

`A046667(A161330(n)+2)`
-/

namespace A161334.P12930639991332449917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A161330 n + 2).toNat

end

end A161334.P12930639991332449917

/-!
# A161335: a(n) = A161330(n)*2.

The programs for A161335, there is no canonical definition to state claims against.
-/

/-! ## A161335.P9634056883378839265

`A161330(n)*2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161335.P9634056883378839265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 n * 2

end

end A161335.P9634056883378839265

/-! ## A161335.P15484815766151785868

`4*A161334(n)`
-/

namespace A161335.P15484815766151785868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161334 n

end

end A161335.P15484815766151785868

/-! ## A161335.P3447371573488330617

`∑[2*A161331(n)]`
-/

namespace A161335.P3447371573488330617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161335.P3447371573488330617

/-! ## A161335.P12252272063176223800

`∑[4*A161332(n)]`
-/

namespace A161335.P12252272063176223800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161335.P12252272063176223800

/-! ## A161335.P15031825209246327315

`A005843(A161330(n))`
-/

namespace A161335.P15031825209246327315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A161330 n).toNat

end

end A161335.P15031825209246327315

/-!
# A161336: Snowflake tree sequence: (A161330(n+1) - 2)/6.

The programs for A161336, there is no canonical definition to state claims against.
-/

/-! ## A161336.P13807334030690669521

`A213360(n)/6`
-/

namespace A161336.P13807334030690669521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213360 n : ℚ) / 6

end

end A161336.P13807334030690669521

/-! ## A161336.P8509678696295193379

`(A161330(n+1)-2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161336.P8509678696295193379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 (n + 1) - 2 : ℚ) / 6

end

end A161336.P8509678696295193379

/-! ## A161336.P1379987028235513627

`∑[A211974(n)]`
-/

namespace A161336.P1379987028235513627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161336.P1379987028235513627

/-! ## A161336.P11221993875357765635

`A220478(n)-n`
-/

namespace A161336.P11221993875357765635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220478 n - (n : ℤ)

end

end A161336.P11221993875357765635

/-! ## A161336.P11323063041996100809

`∑[A220498(n)]-n`
-/

namespace A161336.P11323063041996100809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A161336.P11323063041996100809

/-! ## A161336.P3462847579706840253

`2*A211964(n)-n`
-/

namespace A161336.P3462847579706840253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211964 n - (n : ℤ)

end

end A161336.P3462847579706840253

/-! ## A161336.P6762309950524397112

`floor(A161330(n+1)/6)`
-/

namespace A161336.P6762309950524397112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161330 (n + 1) : ℚ) / 6⌋

end

end A161336.P6762309950524397112

/-! ## A161336.P9038361590470745574

`∑[round(Δ[A161330(n)/6])]`
-/

namespace A161336.P9038361590470745574
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 n : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161336.P9038361590470745574

/-! ## A161336.P15097350492096149540

`∑[floor(A161332(n+1)/3)]`
-/

namespace A161336.P15097350492096149540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161332 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161336.P15097350492096149540

/-! ## A161336.P374027600787471372

`∑[floor(A161331(n+1)/6)]`
-/

namespace A161336.P374027600787471372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161331 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161336.P374027600787471372

/-!
# A161337: a(n) = (A161330(n+1) - 2)/3.

The programs for A161337, there is no canonical definition to state claims against.
-/

/-! ## A161337.P12088159223077383066

`(A161330(n+1)-2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161337.P12088159223077383066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 (n + 1) - 2 : ℚ) / 3

end

end A161337.P12088159223077383066

/-! ## A161337.P8182777170762230060

`2*A161336(n)`
-/

namespace A161337.P8182777170762230060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161336 n

end

end A161337.P8182777170762230060

/-! ## A161337.P7351751257969293185

`A213360(n)/3`
-/

namespace A161337.P7351751257969293185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213360 n : ℚ) / 3

end

end A161337.P7351751257969293185

/-! ## A161337.P8814464757946986207

`∑[2*A211974(n)]`
-/

namespace A161337.P8814464757946986207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161337.P8814464757946986207

/-! ## A161337.P342121866071390983

`2*(A220478(n)-n)`
-/

namespace A161337.P342121866071390983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A220478 n - (n : ℤ))

end

end A161337.P342121866071390983

/-! ## A161337.P3697946309077530363

`floor(A161330(n+1)/3)`
-/

namespace A161337.P3697946309077530363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161330 (n + 1) : ℚ) / 3⌋

end

end A161337.P3697946309077530363

/-! ## A161337.P5338698473027280474

`2*(∑[A220498(n)]-n)`
-/

namespace A161337.P5338698473027280474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A161337.P5338698473027280474

/-! ## A161337.P900333817165200216

`4*A211964(n)-2*n`
-/

namespace A161337.P900333817165200216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A211964 n - (2 * n : ℤ)

end

end A161337.P900333817165200216

/-! ## A161337.P6221281656839245839

`∑[floor(A161331(n+1)/3)]`
-/

namespace A161337.P6221281656839245839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161331 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161337.P6221281656839245839

/-! ## A161337.P15744943892829181557

`floor(2*∑[A161332(n+1)]/3)`
-/

namespace A161337.P15744943892829181557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)⌋

end

end A161337.P15744943892829181557

/-!
# A161338: a(n) = (A161330(n+1) - 2)/2.

The programs for A161338, there is no canonical definition to state claims against.
-/

/-! ## A161338.P8100034738011140715

`(A161330(n+1)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161338.P8100034738011140715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 (n + 1) - 2 : ℚ) / 2

end

end A161338.P8100034738011140715

/-! ## A161338.P8405849836457708912

`3*A161336(n)`
-/

namespace A161338.P8405849836457708912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161336 n

end

end A161338.P8405849836457708912

/-! ## A161338.P1083375585610040485

`A213360(n)/2`
-/

namespace A161338.P1083375585610040485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213360 n : ℚ) / 2

end

end A161338.P1083375585610040485

/-! ## A161338.P4067993782874594276

`∑[3*A211974(n)]`
-/

namespace A161338.P4067993782874594276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A211974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161338.P4067993782874594276

/-! ## A161338.P8902912977001188411

`3/2*A161337(n)`
-/

namespace A161338.P8902912977001188411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A161337 n : ℚ)

end

end A161338.P8902912977001188411

/-! ## A161338.P6066973831057324220

`3*(A220478(n)-n)`
-/

namespace A161338.P6066973831057324220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A220478 n - (n : ℤ))

end

end A161338.P6066973831057324220

/-! ## A161338.P15007831253410706847

`∑[A161332(n+1)]-1`
-/

namespace A161338.P15007831253410706847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161338.P15007831253410706847

/-! ## A161338.P14786355849875318606

`3*(∑[A220498(n)]-n)`
-/

namespace A161338.P14786355849875318606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A161338.P14786355849875318606

/-! ## A161338.P7181209843026793789

`∑[A161331(n+1)/2]-1`
-/

namespace A161338.P7181209843026793789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161331 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161338.P7181209843026793789

/-! ## A161338.P2199402592119024167

`A006368(A161337(n))`
-/

namespace A161338.P2199402592119024167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A161337 n).toNat

end

end A161338.P2199402592119024167

/-!
# A161339: Partial sums of A161205.

The programs for A161339, the canonical program `A161339.P10592069914475419976` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161339 has offset 1).

The definition of A161339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161339.P10133760837250152687

`∑[floor(floor(sqrt(n+1))+sqrt(n))]`
-/

namespace A161339.P10133760837250152687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.sqrt (n + 1) : ℝ) + Real.sqrt (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161339.P10133760837250152687

namespace A161339

/-- `∑[floor(floor(sqrt(n+1))+sqrt(n))]` -/
def P10133760837250152687.Spec : Prop :=
  ∀ n, P10133760837250152687.a n = A161339 (n + 1)

end A161339

/-! ## A161339.P10630253885574176705

`a(n-1)+floor(floor(sqrt(n+1))+sqrt(n))` with `a(0)=1`
-/

namespace A161339.P10630253885574176705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(Nat.sqrt (n + 1) : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A161339.P10630253885574176705

namespace A161339

/-- `a(n-1)+floor(floor(sqrt(n+1))+sqrt(n))` -/
def P10630253885574176705.Spec : Prop :=
  ∀ n, P10630253885574176705.a n = A161339 (n + 1)

end A161339

/-! ## A161339.P11758315242129387188

`∑[∑[char[∑[n*n%2+1]]]]+n+1`
-/

namespace A161339.P11758315242129387188
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A161339.P11758315242129387188

namespace A161339

/-- `∑[∑[char[∑[n*n%2+1]]]]+n+1` -/
def P11758315242129387188.Spec : Prop :=
  ∀ n, (P11758315242129387188.a n : ℤ) = A161339 (n + 1)

end A161339

/-! ## A161339.P12878247952372025444

`∑[A316355(n)]+n+1`
-/

namespace A161339.P12878247952372025444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A161339.P12878247952372025444

namespace A161339

/-- `∑[A316355(n)]+n+1` -/
def P12878247952372025444.Spec : Prop :=
  ∀ n, P12878247952372025444.a n = A161339 (n + 1)

end A161339

/-! ## A161339.P10592069914475419976

`and(∑[A161205(n+1)], -1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161339

/-- `and(∑[A161205(n+1)], -1)` -/
def P10592069914475419976.Spec : Prop :=
  ∀ n, P10592069914475419976.a n = A161339 (n + 1)

theorem P10592069914475419976.correct : P10592069914475419976.Spec := by
  intro n
  simp only [A161339, Nat.add_sub_cancel]

end A161339

/-! ## A161339.P11318953122271096471

`∑[∑[Δ[A010052(n)]²]]+n+1`
-/

namespace A161339.P11318953122271096471
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A161339.P11318953122271096471

namespace A161339

/-- `∑[∑[Δ[A010052(n)]²]]+n+1` -/
def P11318953122271096471.Spec : Prop :=
  ∀ n, P11318953122271096471.a n = A161339 (n + 1)

end A161339

/-! ## A161339.P13994298691582039189

`A022554(n+1)+A022554(n)`
-/

namespace A161339.P13994298691582039189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 (n + 1) + A022554 n

end

end A161339.P13994298691582039189

namespace A161339

/-- `A022554(n+1)+A022554(n)` -/
def P13994298691582039189.Spec : Prop :=
  ∀ n, P13994298691582039189.a n = A161339 (n + 1)

end A161339

/-! ## A161339.P9864303904938329758

`A342711(n)-A080344(n+1)`
-/

namespace A161339.P9864303904938329758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342711 n - A080344 (n + 1)

end

end A161339.P9864303904938329758

namespace A161339

/-- `A342711(n)-A080344(n+1)` -/
def P9864303904938329758.Spec : Prop :=
  ∀ n, P9864303904938329758.a n = A161339 (n + 1)

end A161339

/-!
# A161340: Number of "ON" cells at n-th stage of three-dimensional version of the cellular automaton A160414 using cubes.

The programs for A161340, there is no canonical definition to state claims against.
-/

/-! ## A161340.P9128999059396126177

`∑[A161341(A028310(n))]-1`
-/

namespace A161340.P9128999059396126177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161341 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161340.P9128999059396126177

/-! ## A161340.P9961270446752916209

`∑[A057427(n)*A161341(A028310(n))]`
-/

namespace A161340.P9961270446752916209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A161341 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161340.P9961270446752916209

/-! ## A161340.P16347860086052310697

`∑[A161341(A028310(n))*A178334(n)]`
-/

namespace A161340.P16347860086052310697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161341 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161340.P16347860086052310697

/-! ## A161340.P3250963390084095857

`∑[A161341(A028310(n))%A003950(n)]`
-/

namespace A161340.P3250963390084095857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161341 (A028310 n).toNat) (A003950 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161340.P3250963390084095857

/-! ## A161340.P12603843201370080487

`∑[A000040(n+1)%2*A161341(A028310(n))]`
-/

namespace A161340.P12603843201370080487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A161341 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161340.P12603843201370080487

/-!
# A161341: First differences of A161340.

The programs for A161341, there is no canonical definition to state claims against.
-/

/-! ## A161341.P6995126636687211883

`Δ[A161340(n)]`
-/

namespace A161341.P6995126636687211883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161341.P6995126636687211883

/-! ## A161341.P1640153381425681483

`A161340(n+1)-A161340(n)`
-/

namespace A161341.P1640153381425681483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161340 (n + 1) - A161340 n

end

end A161341.P1640153381425681483

/-! ## A161341.P15328237606072996155

`record[A161340(A065648(n))]-A161340(n)`
-/

namespace A161341.P15328237606072996155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161340 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A161340 n

end

end A161341.P15328237606072996155

/-!
# A161342: Number of "ON" cubic cells at n-th stage in simple 3-dimensional cellular automaton: a(n) = A160428(n)/8.

The programs for A161342, the canonical program `A161342.P3070800095137774965` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161342 has offset 0).

The definition of A161342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160428, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161342.P3070800095137774965

`A160428(n)/8`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161342

/-- `A160428(n)/8` -/
def P3070800095137774965.Spec : Prop :=
  ∀ n, P3070800095137774965.a n = (A161342 n : ℚ)

end A161342

/-! ## A161342.P3003200840423310229

`∑[A161343(n)]-A161343(n)`
-/

namespace A161342.P3003200840423310229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161343 n

end

end A161342.P3003200840423310229

namespace A161342

/-- `∑[A161343(n)]-A161343(n)` -/
def P3003200840423310229.Spec : Prop :=
  ∀ n, P3003200840423310229.a n = A161342 n

end A161342

/-! ## A161342.P14074116712445280235

`∑[7^A000120(n)]-7^A000120(n)`
-/

namespace A161342.P14074116712445280235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (7 : ℚ) ^ (A000120 n : ℤ)

end

end A161342.P14074116712445280235

namespace A161342

/-- `∑[7^A000120(n)]-7^A000120(n)` -/
def P14074116712445280235.Spec : Prop :=
  ∀ n, P14074116712445280235.a n = (A161342 n : ℚ)

end A161342

/-! ## A161342.P608930490766183518

`∑[A033044(A008619(A131136(n)))]`
-/

namespace A161342.P608930490766183518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A008619 (A131136 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161342.P608930490766183518

namespace A161342

/-- `∑[A033044(A008619(A131136(n)))]` -/
def P608930490766183518.Spec : Prop :=
  ∀ n, P608930490766183518.a n = A161342 n

end A161342

/-! ## A161342.P6330059998458236581

`∑[A116522(sqrt(A177241(n)))]`
-/

namespace A161342.P6330059998458236581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (SequenceMachineLib.roundAway (Real.sqrt (A177241 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161342.P6330059998458236581

namespace A161342

/-- `∑[A116522(sqrt(A177241(n)))]` -/
def P6330059998458236581.Spec : Prop :=
  ∀ n, P6330059998458236581.a n = A161342 n

end A161342

/-! ## A161342.P2885636661948527077

`∑[A151785(2*n+1)]-A151785(2*n+1)`
-/

namespace A161342.P2885636661948527077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151785 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151785 (2 * n + 1)

end

end A161342.P2885636661948527077

namespace A161342

/-- `∑[A151785(2*n+1)]-A151785(2*n+1)` -/
def P2885636661948527077.Spec : Prop :=
  ∀ n, P2885636661948527077.a n = A161342 n

end A161342

/-! ## A161342.P1073503886413586166

`∑[7^A274009(2*n+1)]-7^A274009(2*n+1)`
-/

namespace A161342.P1073503886413586166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (7 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

end

end A161342.P1073503886413586166

namespace A161342

/-- `∑[7^A274009(2*n+1)]-7^A274009(2*n+1)` -/
def P1073503886413586166.Spec : Prop :=
  ∀ n, P1073503886413586166.a n = (A161342 n : ℚ)

end A161342

/-! ## A161342.P4228042277925599159

`∑[7^A274009(2*n+1)]-A116554(A038573(n))`
-/

namespace A161342.P4228042277925599159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A116554 (A038573 n).toNat : ℚ)

end

end A161342.P4228042277925599159

namespace A161342

/-- `∑[7^A274009(2*n+1)]-A116554(A038573(n))` -/
def P4228042277925599159.Spec : Prop :=
  ∀ n, P4228042277925599159.a n = (A161342 n : ℚ)

end A161342

/-! ## A161342.P8566850308927261935

`∑[7^A274009(2*n+1)]-A166653(A001316(n))`
-/

namespace A161342.P8566850308927261935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A166653 (A001316 n).toNat : ℚ)

end

end A161342.P8566850308927261935

namespace A161342

/-- `∑[7^A274009(2*n+1)]-A166653(A001316(n))` -/
def P8566850308927261935.Spec : Prop :=
  ∀ n, P8566850308927261935.a n = (A161342 n : ℚ)

end A161342

/-! ## A161342.P7617837324600303425

`∑[7^A274009(2*n+1)]-A165828(A071044(n))`
-/

namespace A161342.P7617837324600303425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A165828 (A071044 n).toNat : ℚ)

end

end A161342.P7617837324600303425

namespace A161342

/-- `∑[7^A274009(2*n+1)]-A165828(A071044(n))` -/
def P7617837324600303425.Spec : Prop :=
  ∀ n, P7617837324600303425.a n = (A161342 n : ℚ)

end A161342

/-! ## A161342.P12034574437152352221

`∑[7^A274009(2*n+1)]-A165828(A151787(n+1))`
-/

namespace A161342.P12034574437152352221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A274009 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A165828 (A151787 (n + 1)).toNat : ℚ)

end

end A161342.P12034574437152352221

namespace A161342

/-- `∑[7^A274009(2*n+1)]-A165828(A151787(n+1))` -/
def P12034574437152352221.Spec : Prop :=
  ∀ n, P12034574437152352221.a n = (A161342 n : ℚ)

end A161342

/-!
# A161343: a(n) = 7^A000120(n).

The programs for A161343, the canonical program `A161343.P8410613981469799795` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161343 has offset 0).

The definition of A161343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161343.P5807475196598268221

`7^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161343.P5807475196598268221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000120 n : ℤ)

end

end A161343.P5807475196598268221

namespace A161343

/-- `7^A000120(n)` -/
def P5807475196598268221.Spec : Prop :=
  ∀ n, P5807475196598268221.a n = (A161343 n : ℚ)

end A161343

/-! ## A161343.P8410613981469799795

`A000420(A000120(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161343

/-- `A000420(A000120(n))` -/
def P8410613981469799795.Spec : Prop :=
  ∀ n, P8410613981469799795.a n = A161343 n

theorem P8410613981469799795.correct : P8410613981469799795.Spec := by
  intro n
  simp only [A161343]

end A161343

/-! ## A161343.P2125498870697593519

`7*a(and(n, n-1))` with `a(0)=1`
-/

namespace A161343.P2125498870697593519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A161343.P2125498870697593519

namespace A161343

/-- `7*a(and(n, n-1))` -/
def P2125498870697593519.Spec : Prop :=
  ∀ n, (P2125498870697593519.a n : ℤ) = A161343 n

end A161343

/-! ## A161343.P3831360199342182937

`7*a(n-2^floor(log2(n)))` with `a(0)=1`
-/

namespace A161343.P3831360199342182937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 2 ^ Nat.log 2 n)

end

end A161343.P3831360199342182937

namespace A161343

/-- `7*a(n-2^floor(log2(n)))` -/
def P3831360199342182937.Spec : Prop :=
  ∀ n, (P3831360199342182937.a n : ℤ) = A161343 n

end A161343

/-! ## A161343.P8125738968927194459

`abs(a(floor(n/2))*a(n%2))` with `a(0)=1, a(1)=7`
-/

namespace A161343.P8125738968927194459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A161343.P8125738968927194459

namespace A161343

/-- `abs(a(floor(n/2))*a(n%2))` -/
def P8125738968927194459.Spec : Prop :=
  ∀ n, (P8125738968927194459.a n : ℤ) = A161343 n

end A161343

/-! ## A161343.P7368563133102735978

`7^(Δ[n²]-∑[∏{e}[xor(n, -n), #]])`
-/

namespace A161343.P7368563133102735978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

end

end A161343.P7368563133102735978

namespace A161343

/-- `7^(Δ[n²]-∑[∏{e}[xor(n, -n), #]])` -/
def P7368563133102735978.Spec : Prop :=
  ∀ n, P7368563133102735978.a n = (A161343 n : ℚ)

end A161343

/-! ## A161343.P2030400155610000134

`Δ[A161342(n)]`
-/

namespace A161343.P2030400155610000134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161343.P2030400155610000134

namespace A161343

/-- `Δ[A161342(n)]` -/
def P2030400155610000134.Spec : Prop :=
  ∀ n, P2030400155610000134.a n = A161343 n

end A161343

/-! ## A161343.P2953892589723933090

`A160429(n+1)/8`
-/

namespace A161343.P2953892589723933090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160429 (n + 1) : ℚ) / 8

end

end A161343.P2953892589723933090

namespace A161343

/-- `A160429(n+1)/8` -/
def P2953892589723933090.Spec : Prop :=
  ∀ n, P2953892589723933090.a n = (A161343 n : ℚ)

end A161343

/-! ## A161343.P18269997827646401271

`7^(2*n-A005187(n))`
-/

namespace A161343.P18269997827646401271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((2 * n : ℤ) - A005187 n : ℤ)

end

end A161343.P18269997827646401271

namespace A161343

/-- `7^(2*n-A005187(n))` -/
def P18269997827646401271.Spec : Prop :=
  ∀ n, P18269997827646401271.a n = (A161343 n : ℚ)

end A161343

/-! ## A161343.P7183389018492618797

`a(floor(n/2))*A000203(or(n+1, -2)²)` with `a(0)=1`
-/

namespace A161343.P7183389018492618797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A000203 (Int.lor (n + 1 : ℤ) (-2) ^ 2).toNat

end

end A161343.P7183389018492618797

namespace A161343

/-- `a(floor(n/2))*A000203(or(n+1, -2)²)` -/
def P7183389018492618797.Spec : Prop :=
  ∀ n, P7183389018492618797.a n = A161343 n

end A161343

/-! ## A161343.P2796321347965855869

`A116522(A001316(n))`
-/

namespace A161343.P2796321347965855869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (A001316 n).toNat

end

end A161343.P2796321347965855869

namespace A161343

/-- `A116522(A001316(n))` -/
def P2796321347965855869.Spec : Prop :=
  ∀ n, P2796321347965855869.a n = A161343 n

end A161343

/-! ## A161343.P4564143243476298775

`A116554(A038573(n))`
-/

namespace A161343.P4564143243476298775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116554 (A038573 n).toNat

end

end A161343.P4564143243476298775

namespace A161343

/-- `A116554(A038573(n))` -/
def P4564143243476298775.Spec : Prop :=
  ∀ n, P4564143243476298775.a n = A161343 n

end A161343

/-! ## A161343.P6246465069364825543

`A165828(A268444(n))`
-/

namespace A161343.P6246465069364825543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (A268444 n).toNat

end

end A161343.P6246465069364825543

namespace A161343

/-- `A165828(A268444(n))` -/
def P6246465069364825543.Spec : Prop :=
  ∀ n, P6246465069364825543.a n = A161343 n

end A161343

/-! ## A161343.P9931900820832267782

`A123752(2*A000120(n))`
-/

namespace A161343.P9931900820832267782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * A000120 n).toNat

end

end A161343.P9931900820832267782

namespace A161343

/-- `A123752(2*A000120(n))` -/
def P9931900820832267782.Spec : Prop :=
  ∀ n, P9931900820832267782.a n = A161343 n

end A161343

/-! ## A161343.P1192962236858679857

`A161342(n+1)-A161342(n)`
-/

namespace A161343.P1192962236858679857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 (n + 1) - A161342 n

end

end A161343.P1192962236858679857

namespace A161343

/-- `A161342(n+1)-A161342(n)` -/
def P1192962236858679857.Spec : Prop :=
  ∀ n, P1192962236858679857.a n = A161343 n

end A161343

/-! ## A161343.P6745634613490495070

`A166661(A001316(2*n+1)/2)`
-/

namespace A161343.P6745634613490495070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (SequenceMachineLib.roundAway ((A001316 (2 * n + 1) : ℚ) / 2)).toNat

end

end A161343.P6745634613490495070

namespace A161343

/-- `A166661(A001316(2*n+1)/2)` -/
def P6745634613490495070.Spec : Prop :=
  ∀ n, P6745634613490495070.a n = A161343 n

end A161343

/-! ## A161343.P8688215386999155182

`A116522(A256136(n)/A048883(n))`
-/

namespace A161343.P8688215386999155182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (SequenceMachineLib.roundAway ((A256136 n : ℚ) / (A048883 n : ℚ))).toNat

end

end A161343.P8688215386999155182

namespace A161343

/-- `A116522(A256136(n)/A048883(n))` -/
def P8688215386999155182.Spec : Prop :=
  ∀ n, P8688215386999155182.a n = A161343 n

end A161343

/-! ## A161343.P8630122529634992725

`A116522(A006046(n+1)-A006046(n))`
-/

namespace A161343.P8630122529634992725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (A006046 (n + 1) - A006046 n).toNat

end

end A161343.P8630122529634992725

namespace A161343

/-- `A116522(A006046(n+1)-A006046(n))` -/
def P8630122529634992725.Spec : Prop :=
  ∀ n, P8630122529634992725.a n = A161343 n

end A161343

/-! ## A161343.P2914024016959162262

`A017994(A324467(n))`
-/

namespace A161343.P2914024016959162262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 (A324467 n).toNat

end

end A161343.P2914024016959162262

namespace A161343

/-- `A017994(A324467(n))` -/
def P2914024016959162262.Spec : Prop :=
  ∀ n, P2914024016959162262.a n = A161343 n

end A161343

/-! ## A161343.P3706756688012047745

`A165828(A071044(n))`
-/

namespace A161343.P3706756688012047745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (A071044 n).toNat

end

end A161343.P3706756688012047745

namespace A161343

/-- `A165828(A071044(n))` -/
def P3706756688012047745.Spec : Prop :=
  ∀ n, P3706756688012047745.a n = A161343 n

end A161343

/-!
# A161344: Numbers k with A033676(k)=2, where A033676 is the largest divisor <= sqrt(k).

The programs for A161344, the canonical program `A161344.P6462224275357060055` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161344 has offset 1).

The definition of A161344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161344.P5327870312717396255

`2*A175787(n+1)`
-/

namespace A161344.P5327870312717396255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175787 (n + 1)

end

end A161344.P5327870312717396255

namespace A161344

/-- `2*A175787(n+1)` -/
def P5327870312717396255.Spec : Prop :=
  ∀ n, P5327870312717396255.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P6462224275357060055

`2*A046022(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A161344

/-- `2*A046022(n+2)` -/
def P6462224275357060055.Spec : Prop :=
  ∀ n, P6462224275357060055.a n = A161344 (n + 1)

theorem P6462224275357060055.correct : P6462224275357060055.Spec := by
  intro n
  simp only [A161344, Nat.add_sub_cancel]

end A161344

/-! ## A161344.P1299837563502017059

`2*(A068499(n+1)+1)`
-/

namespace A161344.P1299837563502017059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068499 (n + 1) + 1)

end

end A161344.P1299837563502017059

namespace A161344

/-- `2*(A068499(n+1)+1)` -/
def P1299837563502017059.Spec : Prop :=
  ∀ n, P1299837563502017059.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P3521770911100690376

`A001747(n+1)+A000038(A057627(n+1))`
-/

namespace A161344.P3521770911100690376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + A000038 (A057627 (n + 1)).toNat

end

end A161344.P3521770911100690376

namespace A161344

/-- `A001747(n+1)+A000038(A057627(n+1))` -/
def P3521770911100690376.Spec : Prop :=
  ∀ n, P3521770911100690376.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P14297027516778696325

`A175787(A000027(n+1))+A175787(n+1)`
-/

namespace A161344.P14297027516778696325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A000027 (n + 1)).toNat + A175787 (n + 1)

end

end A161344.P14297027516778696325

namespace A161344

/-- `A175787(A000027(n+1))+A175787(n+1)` -/
def P14297027516778696325.Spec : Prop :=
  ∀ n, P14297027516778696325.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P2135892952875680612

`A175787(n+1)+A046022(n+2)`
-/

namespace A161344.P2135892952875680612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) + A046022 (n + 2)

end

end A161344.P2135892952875680612

namespace A161344

/-- `A175787(n+1)+A046022(n+2)` -/
def P2135892952875680612.Spec : Prop :=
  ∀ n, P2135892952875680612.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P5570018984466828790

`A001747(n+1)+A000038(A002265(n+1))`
-/

namespace A161344.P5570018984466828790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + A000038 (A002265 (n + 1)).toNat

end

end A161344.P5570018984466828790

namespace A161344

/-- `A001747(n+1)+A000038(A002265(n+1))` -/
def P5570018984466828790.Spec : Prop :=
  ∀ n, P5570018984466828790.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P17159618416543426005

`record[2*A085729(n+2)]`
-/

namespace A161344.P17159618416543426005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085729 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161344.P17159618416543426005

namespace A161344

/-- `record[2*A085729(n+2)]` -/
def P17159618416543426005.Spec : Prop :=
  ∀ n, P17159618416543426005.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P8643217001223378894

`∩[A138929(n+1), A050990(n+1)]`
-/

namespace A161344.P8643217001223378894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161344.P8643217001223378894

namespace A161344

/-- `∩[A138929(n+1), A050990(n+1)]` -/
def P8643217001223378894.Spec : Prop :=
  ∀ n, (P8643217001223378894.a n : ℤ) = A161344 (n + 1)

end A161344

/-! ## A161344.P6341411596677611040

`record[2*A001414(n+2)]`
-/

namespace A161344.P6341411596677611040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161344.P6341411596677611040

namespace A161344

/-- `record[2*A001414(n+2)]` -/
def P6341411596677611040.Spec : Prop :=
  ∀ n, P6341411596677611040.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P18415850161469354849

`record[2*A337310(n+2)]`
-/

namespace A161344.P18415850161469354849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161344.P18415850161469354849

namespace A161344

/-- `record[2*A337310(n+2)]` -/
def P18415850161469354849.Spec : Prop :=
  ∀ n, P18415850161469354849.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P15854193769495166106

`2*lt[A072480(n)², n]`
-/

namespace A161344.P15854193769495166106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161344.P15854193769495166106

namespace A161344

/-- `2*lt[A072480(n)², n]` -/
def P15854193769495166106.Spec : Prop :=
  ∀ n, (P15854193769495166106.a n : ℤ) = A161344 (n + 1)

end A161344

/-! ## A161344.P15073172116192365469

`2*(lt[A000005(2*(n+2)), 5]+2)`
-/

namespace A161344.P15073172116192365469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A161344.P15073172116192365469

namespace A161344

/-- `2*(lt[A000005(2*(n+2)), 5]+2)` -/
def P15073172116192365469.Spec : Prop :=
  ∀ n, (P15073172116192365469.a n : ℤ) = A161344 (n + 1)

end A161344

/-! ## A161344.P9746985030486218847

`2*(lt[n-1, A000010(n+2)]+2)`
-/

namespace A161344.P9746985030486218847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A161344.P9746985030486218847

namespace A161344

/-- `2*(lt[n-1, A000010(n+2)]+2)` -/
def P9746985030486218847.Spec : Prop :=
  ∀ n, (P9746985030486218847.a n : ℤ) = A161344 (n + 1)

end A161344

/-! ## A161344.P6924391976991149480

`2*(lt[n-1, A006530(n+2)]+2)`
-/

namespace A161344.P6924391976991149480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A161344.P6924391976991149480

namespace A161344

/-- `2*(lt[n-1, A006530(n+2)]+2)` -/
def P6924391976991149480.Spec : Prop :=
  ∀ n, (P6924391976991149480.a n : ℤ) = A161344 (n + 1)

end A161344

/-! ## A161344.P1004813824851533148

`filter[A050990(n+1), A354923(#)]`
-/

namespace A161344.P1004813824851533148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A161344.P1004813824851533148

namespace A161344

/-- `filter[A050990(n+1), A354923(#)]` -/
def P1004813824851533148.Spec : Prop :=
  ∀ n, P1004813824851533148.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P4071246758708504197

`filter[A050990(n+1), A354924(#)]`
-/

namespace A161344.P4071246758708504197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A161344.P4071246758708504197

namespace A161344

/-- `filter[A050990(n+1), A354924(#)]` -/
def P4071246758708504197.Spec : Prop :=
  ∀ n, P4071246758708504197.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P2147632659657310031

`filter[A066664(n+1), A354923(#)]`
-/

namespace A161344.P2147632659657310031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A161344.P2147632659657310031

namespace A161344

/-- `filter[A066664(n+1), A354923(#)]` -/
def P2147632659657310031.Spec : Prop :=
  ∀ n, P2147632659657310031.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P12027305821059484322

`filter[A050990(n+1), A374128(#)]`
-/

namespace A161344.P12027305821059484322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A161344.P12027305821059484322

namespace A161344

/-- `filter[A050990(n+1), A374128(#)]` -/
def P12027305821059484322.Spec : Prop :=
  ∀ n, P12027305821059484322.a n = A161344 (n + 1)

end A161344

/-! ## A161344.P6530004107714765621

`filter[A066664(n+1), A373481(#)]`
-/

namespace A161344.P6530004107714765621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A161344.P6530004107714765621

namespace A161344

/-- `filter[A066664(n+1), A373481(#)]` -/
def P6530004107714765621.Spec : Prop :=
  ∀ n, P6530004107714765621.a n = A161344 (n + 1)

end A161344

/-!
# A161345: Numbers k whose largest divisor <= sqrt(k) is 3.

The programs for A161345, the canonical program `A161345.P15004225687022458003` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161345 has offset 1).

The definition of A161345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161345.P15004225687022458003

`3*A161346(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A161345

/-- `3*A161346(n+1)` -/
def P15004225687022458003.Spec : Prop :=
  ∀ n, P15004225687022458003.a n = A161345 (n + 1)

theorem P15004225687022458003.correct : P15004225687022458003.Spec := by
  intro n
  simp only [A161345, Nat.add_sub_cancel]

end A161345

/-! ## A161345.P3740335711444915440

`3*record[(n+3)%(4*A020639(n+3))]`
-/

namespace A161345.P3740335711444915440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (4 * A020639 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161345.P3740335711444915440

namespace A161345

/-- `3*record[(n+3)%(4*A020639(n+3))]` -/
def P3740335711444915440.Spec : Prop :=
  ∀ n, P3740335711444915440.a n = A161345 (n + 1)

end A161345

/-! ## A161345.P492622240163260933

`3*(lt[A283463(n+3), 4]+3)`
-/

namespace A161345.P492622240163260933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3)

end

end A161345.P492622240163260933

namespace A161345

/-- `3*(lt[A283463(n+3), 4]+3)` -/
def P492622240163260933.Spec : Prop :=
  ∀ n, (P492622240163260933.a n : ℤ) = A161345 (n + 1)

end A161345

/-! ## A161345.P708847067656652772

`A008486(A161346(n+1))`
-/

namespace A161345.P708847067656652772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A161346 (n + 1)).toNat

end

end A161345.P708847067656652772

namespace A161345

/-- `A008486(A161346(n+1))` -/
def P708847067656652772.Spec : Prop :=
  ∀ n, P708847067656652772.a n = A161345 (n + 1)

end A161345

/-! ## A161345.P1104182790040221553

`record[3*A345931(3*(n+1))]`
-/

namespace A161345.P1104182790040221553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A345931 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161345.P1104182790040221553

namespace A161345

/-- `record[3*A345931(3*(n+1))]` -/
def P1104182790040221553.Spec : Prop :=
  ∀ n, P1104182790040221553.a n = A161345 (n + 1)

end A161345

/-! ## A161345.P1074928469180640844

`record[A006368(A006255(n+2))]`
-/

namespace A161345.P1074928469180640844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A006255 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161345.P1074928469180640844

namespace A161345

/-- `record[A006368(A006255(n+2))]` -/
def P1074928469180640844.Spec : Prop :=
  ∀ n, P1074928469180640844.a n = A161345 (n + 1)

end A161345

/-! ## A161345.P4507554306513501586

`eq[3, A033676(n+1)]+1`
-/

namespace A161345.P4507554306513501586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161345.P4507554306513501586

namespace A161345

/-- `eq[3, A033676(n+1)]+1` -/
def P4507554306513501586.Spec : Prop :=
  ∀ n, (P4507554306513501586.a n : ℤ) = A161345 (n + 1)

end A161345

/-! ## A161345.P15189903868024079031

`record[3*A033677(3*(n+1))]`
-/

namespace A161345.P15189903868024079031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033677 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161345.P15189903868024079031

namespace A161345

/-- `record[3*A033677(3*(n+1))]` -/
def P15189903868024079031.Spec : Prop :=
  ∀ n, P15189903868024079031.a n = A161345 (n + 1)

end A161345

/-! ## A161345.P13297603909062496116

`record[3*A095163(3*(n+1))]`
-/

namespace A161345.P13297603909062496116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095163 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161345.P13297603909062496116

namespace A161345

/-- `record[3*A095163(3*(n+1))]` -/
def P13297603909062496116.Spec : Prop :=
  ∀ n, P13297603909062496116.a n = A161345 (n + 1)

end A161345

/-! ## A161345.P8719757250468340166

`eq[3, A033676(A028310(n))]`
-/

namespace A161345.P8719757250468340166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161345.P8719757250468340166

namespace A161345

/-- `eq[3, A033676(A028310(n))]` -/
def P8719757250468340166.Spec : Prop :=
  ∀ n, (P8719757250468340166.a n : ℤ) = A161345 (n + 1)

end A161345

/-! ## A161345.P12339652845822495746

`A075647(A167614(n+1))`
-/

namespace A161345.P12339652845822495746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075647 (A167614 (n + 1)).toNat

end

end A161345.P12339652845822495746

namespace A161345

/-- `A075647(A167614(n+1))` -/
def P12339652845822495746.Spec : Prop :=
  ∀ n, P12339652845822495746.a n = A161345 (n + 1)

end A161345

/-!
# A161346: a(n) = A161345(n)/3.

The programs for A161346, the canonical program `A161346.P17542918926957131899` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161346 has offset 1).

The definition of A161346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161346.P13137369902339410572

`A161345(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161346.P13137369902339410572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161345 (n + 1) : ℚ) / 3

end

end A161346.P13137369902339410572

namespace A161346

/-- `A161345(n+1)/3` -/
def P13137369902339410572.Spec : Prop :=
  ∀ n, P13137369902339410572.a n = (A161346 (n + 1) : ℚ)

end A161346

/-! ## A161346.P3861871602609366286

`record[(n+3)%(4*A020639(n+3))]`
-/

namespace A161346.P3861871602609366286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (4 * A020639 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161346.P3861871602609366286

namespace A161346

/-- `record[(n+3)%(4*A020639(n+3))]` -/
def P3861871602609366286.Spec : Prop :=
  ∀ n, P3861871602609366286.a n = A161346 (n + 1)

end A161346

/-! ## A161346.P17542918926957131899

`lt[(n-3)*A001222(n+3), n+1]+3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A161346

/-- `lt[(n-3)*A001222(n+3), n+1]+3` -/
def P17542918926957131899.Spec : Prop :=
  ∀ n, (P17542918926957131899.a n : ℤ) = A161346 (n + 1)

theorem P17542918926957131899.correct : P17542918926957131899.Spec := by
  intro n
  simp only [A161346, Nat.add_sub_cancel]

end A161346

/-! ## A161346.P13187755293369656107

`lt[(n-2)*A000005(n+3), 2*n+1]+3`
-/

namespace A161346.P13187755293369656107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A000005 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A161346.P13187755293369656107

namespace A161346

/-- `lt[(n-2)*A000005(n+3), 2*n+1]+3` -/
def P13187755293369656107.Spec : Prop :=
  ∀ n, (P13187755293369656107.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P2635771216816769252

`eq[A001222(n+1)-1, A331168(n+1)]+1`
-/

namespace A161346.P2635771216816769252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161346.P2635771216816769252

namespace A161346

/-- `eq[A001222(n+1)-1, A331168(n+1)]+1` -/
def P2635771216816769252.Spec : Prop :=
  ∀ n, (P2635771216816769252.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P5500413344216620013

`lt[A283463(n+3), 4]+3`
-/

namespace A161346.P5500413344216620013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A161346.P5500413344216620013

namespace A161346

/-- `lt[A283463(n+3), 4]+3` -/
def P5500413344216620013.Spec : Prop :=
  ∀ n, (P5500413344216620013.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P6278471121401604260

`lt[n-3, A286254(n+2)]+3`
-/

namespace A161346.P6278471121401604260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286254 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A161346.P6278471121401604260

namespace A161346

/-- `lt[n-3, A286254(n+2)]+3` -/
def P6278471121401604260.Spec : Prop :=
  ∀ n, (P6278471121401604260.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P374999874375396913

`filter[A387426(n+3), A267256(#)]`
-/

namespace A161346.P374999874375396913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387426 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A161346.P374999874375396913

namespace A161346

/-- `filter[A387426(n+3), A267256(#)]` -/
def P374999874375396913.Spec : Prop :=
  ∀ n, P374999874375396913.a n = A161346 (n + 1)

end A161346

/-! ## A161346.P718994927668065023

`eq[A167866(n), A309059(n+1)]`
-/

namespace A161346.P718994927668065023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161346.P718994927668065023

namespace A161346

/-- `eq[A167866(n), A309059(n+1)]` -/
def P718994927668065023.Spec : Prop :=
  ∀ n, (P718994927668065023.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P9345689027588681488

`lt[(2-A277894(n))², A263042(n)]`
-/

namespace A161346.P9345689027588681488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A277894 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161346.P9345689027588681488

namespace A161346

/-- `lt[(2-A277894(n))², A263042(n)]` -/
def P9345689027588681488.Spec : Prop :=
  ∀ n, (P9345689027588681488.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P1709929404000666145

`lt[Δ[A056827(n)], A020639(n+3)]+3`
-/

namespace A161346.P1709929404000666145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 3

end

end A161346.P1709929404000666145

namespace A161346

/-- `lt[Δ[A056827(n)], A020639(n+3)]+3` -/
def P1709929404000666145.Spec : Prop :=
  ∀ n, (P1709929404000666145.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P6069440200046724320

`lt[A002265(n+3), A020639(n+3)]+3`
-/

namespace A161346.P6069440200046724320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A161346.P6069440200046724320

namespace A161346

/-- `lt[A002265(n+3), A020639(n+3)]+3` -/
def P6069440200046724320.Spec : Prop :=
  ∀ n, (P6069440200046724320.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P91087940838537386

`record[A091227(n+2)+A006530(2*(n+1))]`
-/

namespace A161346.P91087940838537386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (n + 2) + A006530 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161346.P91087940838537386

namespace A161346

/-- `record[A091227(n+2)+A006530(2*(n+1))]` -/
def P91087940838537386.Spec : Prop :=
  ∀ n, P91087940838537386.a n = A161346 (n + 1)

end A161346

/-! ## A161346.P5169007605259867456

`lt[gcd(n, A064680(n))-3, A020639(n+3)]+3`
-/

namespace A161346.P5169007605259867456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A064680 n) : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A161346.P5169007605259867456

namespace A161346

/-- `lt[gcd(n, A064680(n))-3, A020639(n+3)]+3` -/
def P5169007605259867456.Spec : Prop :=
  ∀ n, (P5169007605259867456.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P1684006496861303090

`record[A006255(n+2)/A020639(A006255(n+2))]`
-/

namespace A161346.P1684006496861303090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006255 (n + 2) : ℚ) / (A020639 (A006255 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161346.P1684006496861303090

namespace A161346

/-- `record[A006255(n+2)/A020639(A006255(n+2))]` -/
def P1684006496861303090.Spec : Prop :=
  ∀ n, P1684006496861303090.a n = (A161346 (n + 1) : ℚ)

end A161346

/-! ## A161346.P18423138199681017998

`lt[A003056(n)+A002262(n)-1, A020639(n+3)]+3`
-/

namespace A161346.P18423138199681017998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A002262 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A161346.P18423138199681017998

namespace A161346

/-- `lt[A003056(n)+A002262(n)-1, A020639(n+3)]+3` -/
def P18423138199681017998.Spec : Prop :=
  ∀ n, (P18423138199681017998.a n : ℤ) = A161346 (n + 1)

end A161346

/-! ## A161346.P2172828007696368734

`record[A033677(3*(n+1))]`
-/

namespace A161346.P2172828007696368734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161346.P2172828007696368734

namespace A161346

/-- `record[A033677(3*(n+1))]` -/
def P2172828007696368734.Spec : Prop :=
  ∀ n, P2172828007696368734.a n = A161346 (n + 1)

end A161346

/-! ## A161346.P8200751098604680912

`A002264(A161345(n+1))`
-/

namespace A161346.P8200751098604680912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A161345 (n + 1)).toNat

end

end A161346.P8200751098604680912

namespace A161346

/-- `A002264(A161345(n+1))` -/
def P8200751098604680912.Spec : Prop :=
  ∀ n, P8200751098604680912.a n = A161346 (n + 1)

end A161346

/-! ## A161346.P13464542495731660298

`eq[n, A033677(A008486(n))]`
-/

namespace A161346.P13464542495731660298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161346.P13464542495731660298

namespace A161346

/-- `eq[n, A033677(A008486(n))]` -/
def P13464542495731660298.Spec : Prop :=
  ∀ n, (P13464542495731660298.a n : ℤ) = A161346 (n + 1)

end A161346

/-!
# A161349: Positive numbers with property that the digital sum plus the product of the digits is a square.

The programs for A161349, the canonical program `A161349.P9220623831723814997` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161349 has offset 1).

The definition of A161349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161349.P14990183705933364699

`eq[1, A002828(A061762(n))]`
-/

namespace A161349.P14990183705933364699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161349.P14990183705933364699

namespace A161349

/-- `eq[1, A002828(A061762(n))]` -/
def P14990183705933364699.Spec : Prop :=
  ∀ n, (P14990183705933364699.a n : ℤ) = A161349 (n + 1)

end A161349

/-! ## A161349.P9220623831723814997

`eq[1, A053186(A061762(n)+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161349

/-- `eq[1, A053186(A061762(n)+1)]` -/
def P9220623831723814997.Spec : Prop :=
  ∀ n, (P9220623831723814997.a n : ℤ) = A161349 (n + 1)

theorem P9220623831723814997.correct : P9220623831723814997.Spec := by
  intro n
  simp only [A161349, Nat.add_sub_cancel]

end A161349

/-! ## A161349.P13746327396329410842

`eq[A010052(A061762(n)), A057427(n)]`
-/

namespace A161349.P13746327396329410842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A061762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161349.P13746327396329410842

namespace A161349

/-- `eq[A010052(A061762(n)), A057427(n)]` -/
def P13746327396329410842.Spec : Prop :=
  ∀ n, (P13746327396329410842.a n : ℤ) = A161349 (n + 1)

end A161349

/-! ## A161349.P12022675149954760973

`eq[A000007(n), A173517(A061762(n))]`
-/

namespace A161349.P12022675149954760973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161349.P12022675149954760973

namespace A161349

/-- `eq[A000007(n), A173517(A061762(n))]` -/
def P12022675149954760973.Spec : Prop :=
  ∀ n, (P12022675149954760973.a n : ℤ) = A161349 (n + 1)

end A161349

/-! ## A161349.P2969663013378276271

`eq[A165471(n)², A010052(A061762(n))]`
-/

namespace A161349.P2969663013378276271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161349.P2969663013378276271

namespace A161349

/-- `eq[A165471(n)², A010052(A061762(n))]` -/
def P2969663013378276271.Spec : Prop :=
  ∀ n, (P2969663013378276271.a n : ℤ) = A161349 (n + 1)

end A161349

/-! ## A161349.P13884727768711701703

`record[A010052(A061762(n))*A233583(n+1)]`
-/

namespace A161349.P13884727768711701703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A061762 n).toNat * A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161349.P13884727768711701703

namespace A161349

/-- `record[A010052(A061762(n))*A233583(n+1)]` -/
def P13884727768711701703.Spec : Prop :=
  ∀ n, P13884727768711701703.a n = A161349 (n + 1)

end A161349

/-! ## A161349.P14521420488285363014

`eq[A000038(n), A007968(A061762(n))]`
-/

namespace A161349.P14521420488285363014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161349.P14521420488285363014

namespace A161349

/-- `eq[A000038(n), A007968(A061762(n))]` -/
def P14521420488285363014.Spec : Prop :=
  ∀ n, (P14521420488285363014.a n : ℤ) = A161349 (n + 1)

end A161349

/-!
# A161350: Numbers with property that the digital sum times the product of the digits is a square.

The programs for A161350, there is no canonical definition to state claims against.
-/

/-! ## A161350.P18333922635919244692

`eq[A007318(A352128(n)), A214949(n)]`
-/

namespace A161350.P18333922635919244692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A352128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161350.P18333922635919244692

/-! ## A161350.P12516084424409557541

`A185037(A178211(3*n+5))+A038367(n+1)`
-/

namespace A161350.P12516084424409557541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A178211 (3 * n + 5)).toNat + A038367 (n + 1)

end

end A161350.P12516084424409557541

/-! ## A161350.P15611734351109774217

`eq[A107879(A025913(n)), A214949(n)]`
-/

namespace A161350.P15611734351109774217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107879 (A025913 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161350.P15611734351109774217

/-! ## A161350.P3016943735963144721

`eq[A214949(n), A346426(A291168(n))]`
-/

namespace A161350.P3016943735963144721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A291168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161350.P3016943735963144721

/-!
# A161351: a(n) = n + sum_of_digits(n) + product_of_digits(n).

The programs for A161351, the canonical program `A161351.P1670979519900009770` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161351 has offset 1).

The definition of A161351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161351.P1939030282034171683

`∑[2-Δ[A249121(n)]]`
-/

namespace A161351.P1939030282034171683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161351.P1939030282034171683

namespace A161351

/-- `∑[2-Δ[A249121(n)]]` -/
def P1939030282034171683.Spec : Prop :=
  ∀ n, P1939030282034171683.a n = A161351 (n + 1)

end A161351

/-! ## A161351.P15113779298473429131

`2*(n+1)-A249121(n+1)`
-/

namespace A161351.P15113779298473429131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A249121 (n + 1)

end

end A161351.P15113779298473429131

namespace A161351

/-- `2*(n+1)-A249121(n+1)` -/
def P15113779298473429131.Spec : Prop :=
  ∀ n, P15113779298473429131.a n = A161351 (n + 1)

end A161351

/-! ## A161351.P1670979519900009770

`A062028(n+1)+A007954(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161351

/-- `A062028(n+1)+A007954(n+1)` -/
def P1670979519900009770.Spec : Prop :=
  ∀ n, P1670979519900009770.a n = A161351 (n + 1)

theorem P1670979519900009770.correct : P1670979519900009770.Spec := by
  intro n
  simp only [A161351, Nat.add_sub_cancel]

end A161351

/-! ## A161351.P9016598448822977924

`A230099(n+1)+A007953(n+1)`
-/

namespace A161351.P9016598448822977924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (n + 1) + A007953 (n + 1)

end

end A161351.P9016598448822977924

namespace A161351

/-- `A230099(n+1)+A007953(n+1)` -/
def P9016598448822977924.Spec : Prop :=
  ∀ n, P9016598448822977924.a n = A161351 (n + 1)

end A161351

/-! ## A161351.P462718473890811762

`n+1+A007954(n+1)+A007953(n+1)`
-/

namespace A161351.P462718473890811762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A007954 (n + 1) + A007953 (n + 1))

end

end A161351.P462718473890811762

namespace A161351

/-- `n+1+A007954(n+1)+A007953(n+1)` -/
def P462718473890811762.Spec : Prop :=
  ∀ n, P462718473890811762.a n = A161351 (n + 1)

end A161351

/-! ## A161351.P15239854694036405096

`∑[Δ[A061762(n)]+1]`
-/

namespace A161351.P15239854694036405096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161351.P15239854694036405096

namespace A161351

/-- `∑[Δ[A061762(n)]+1]` -/
def P15239854694036405096.Spec : Prop :=
  ∀ n, P15239854694036405096.a n = A161351 (n + 1)

end A161351

/-! ## A161351.P9931880050495331149

`A061762(n+1)+1+n`
-/

namespace A161351.P9931880050495331149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (n + 1) + 1 + (n : ℤ)

end

end A161351.P9931880050495331149

namespace A161351

/-- `A061762(n+1)+1+n` -/
def P9931880050495331149.Spec : Prop :=
  ∀ n, P9931880050495331149.a n = A161351 (n + 1)

end A161351

/-! ## A161351.P101441877139818491

`A007954(n+1)+A160939(n+2)-1`
-/

namespace A161351.P101441877139818491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1) + (A160939 (n + 2) - 1)

end

end A161351.P101441877139818491

namespace A161351

/-- `A007954(n+1)+A160939(n+2)-1` -/
def P101441877139818491.Spec : Prop :=
  ∀ n, P101441877139818491.a n = A161351 (n + 1)

end A161351

/-! ## A161351.P6048014180047025483

`A230099(n+1)+A169805(n+1)/2`
-/

namespace A161351.P6048014180047025483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230099 (n + 1) : ℚ) + (A169805 (n + 1) : ℚ) / 2

end

end A161351.P6048014180047025483

namespace A161351

/-- `A230099(n+1)+A169805(n+1)/2` -/
def P6048014180047025483.Spec : Prop :=
  ∀ n, P6048014180047025483.a n = (A161351 (n + 1) : ℚ)

end A161351

/-! ## A161351.P6194175734697921211

`A161352(n+1)-A004086(n+1)`
-/

namespace A161351.P6194175734697921211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161352 (n + 1) - A004086 (n + 1)

end

end A161351.P6194175734697921211

namespace A161351

/-- `A161352(n+1)-A004086(n+1)` -/
def P6194175734697921211.Spec : Prop :=
  ∀ n, P6194175734697921211.a n = A161351 (n + 1)

end A161351

/-!
# A161352: a(n) = n + R(n) + digsum(n) + product of the digits of n.

The programs for A161352, there is no canonical definition to state claims against.
-/

/-! ## A161352.P7425602151392622540

`A004086(n)+∏{digits}[n, #]+∑{digits}[n, #]+n`
-/

namespace A161352.P7425602151392622540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)

end

end A161352.P7425602151392622540

/-! ## A161352.P536074436605173128

`A061762(n)+A052008(n)`
-/

namespace A161352.P536074436605173128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n + A052008 n

end

end A161352.P536074436605173128

/-! ## A161352.P8174970220423901836

`A061762(n)+A056964(n)`
-/

namespace A161352.P8174970220423901836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n + A056964 n

end

end A161352.P8174970220423901836

/-! ## A161352.P3477380923022536754

`A340479(n)+A230099(n)`
-/

namespace A161352.P3477380923022536754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n + A230099 n

end

end A161352.P3477380923022536754

/-! ## A161352.P4974359975054961188

`A004086(n)+A061762(n)+n`
-/

namespace A161352.P4974359975054961188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + (A061762 n + (n : ℤ))

end

end A161352.P4974359975054961188

/-! ## A161352.P14747448081687213430

`n-A056965(n)+A061762(n)+n`
-/

namespace A161352.P14747448081687213430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056965 n + (A061762 n + (n : ℤ))

end

end A161352.P14747448081687213430

/-!
# A161354: Cubes whose reversal is a prime number.

The programs for A161354, there is no canonical definition to state claims against.
-/

/-! ## A161354.P10042887441407379791

`A059008(n+1)^3`
-/

namespace A161354.P10042887441407379791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1) ^ 3

end

end A161354.P10042887441407379791

/-! ## A161354.P4933853776860808949

`record[A059008(A291769(n))^3]`
-/

namespace A161354.P4933853776860808949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (A291769 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161354.P4933853776860808949

/-! ## A161354.P18443656449462524974

`A059008(2*n+1-n)²*A059008(n+1)`
-/

namespace A161354.P18443656449462524974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (2 * n + 1 - n) ^ 2 * A059008 (n + 1)

end

end A161354.P18443656449462524974

/-! ## A161354.P13902614548139077847

`A059008(n+1)²*record[A059008(A291769(n))]`
-/

namespace A161354.P13902614548139077847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161354.P13902614548139077847

/-! ## A161354.P1725395969349887346

`A000578(A059008(n+1))`
-/

namespace A161354.P1725395969349887346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A059008 (n + 1)).toNat

end

end A161354.P1725395969349887346

/-! ## A161354.P2821011734541315070

`A109588(3*A059008(n+1))`
-/

namespace A161354.P2821011734541315070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (3 * A059008 (n + 1)).toNat

end

end A161354.P2821011734541315070

/-! ## A161354.P5984405735479392158

`A110485(4*A059008(n+1))`
-/

namespace A161354.P5984405735479392158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (4 * A059008 (n + 1)).toNat

end

end A161354.P5984405735479392158

/-!
# A161356: Pronic numbers A002378 (AA) that can be divided into two equal strings (A).

The programs for A161356, there is no canonical definition to state claims against.
-/

/-! ## A161356.P15931745319100891051

`A116285(n+1)*(A116285(n+1)+1)`
-/

namespace A161356.P15931745319100891051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116285 (n + 1) * (A116285 (n + 1) + 1)

end

end A161356.P15931745319100891051

/-! ## A161356.P1019670392263963536

`A116285(n+1)+A116285(n+1)²`
-/

namespace A161356.P1019670392263963536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116285 (n + 1) + A116285 (n + 1) ^ 2

end

end A161356.P1019670392263963536

/-!
# A161357: Longer side (x) of inner rectangle described in A168339.

The programs for A161357, there is no canonical definition to state claims against.
-/

/-! ## A161357.P16250206420388437684

`A143082(n+1)-2`
-/

namespace A161357.P16250206420388437684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143082 (n + 1) - 2

end

end A161357.P16250206420388437684

/-! ## A161357.P3975604127439271353

`ceil(Δ[n²]/A161358(n+1))`
-/

namespace A161357.P3975604127439271353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A161358 (n + 1) : ℚ)⌉

end

end A161357.P3975604127439271353

/-! ## A161357.P18213858089897843657

`floor(2*n/(A145288(n+1)-2))+1`
-/

namespace A161357.P18213858089897843657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (A145288 (n + 1) - 2 : ℚ)⌋ + 1

end

end A161357.P18213858089897843657

/-! ## A161357.P9049392223980682747

`round(acot(A161358(n+1))*A103517(n))`
-/

namespace A161357.P9049392223980682747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A161358 (n + 1) : ℝ) * (A103517 n : ℝ))

end

end A161357.P9049392223980682747

/-! ## A161357.P3625626639694435828

`A023444(ceil(Δ[n²]/(A145288(n+1)-2))+2)`
-/

namespace A161357.P3625626639694435828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A145288 (n + 1) - 2 : ℚ)⌉ + 2).toNat

end

end A161357.P3625626639694435828

/-! ## A161357.P17665703692281977333

`A289207(ceil(Δ[n²]/(A145288(n+1)-2))+2)`
-/

namespace A161357.P17665703692281977333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A145288 (n + 1) - 2 : ℚ)⌉ + 2).toNat

end

end A161357.P17665703692281977333

/-! ## A161357.P1544016144937116874

`A023445(ceil(Δ[n²]/(A145288(n+1)-2))+2)+1`
-/

namespace A161357.P1544016144937116874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A145288 (n + 1) - 2 : ℚ)⌉ + 2).toNat + 1

end

end A161357.P1544016144937116874

/-! ## A161357.P17636936492714151882

`A009056(ceil(Δ[n²]/(A145288(n+1)-2))+2)-4`
-/

namespace A161357.P17636936492714151882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A145288 (n + 1) - 2 : ℚ)⌉ + 2).toNat - 4

end

end A161357.P17636936492714151882

/-! ## A161357.P14373839513635601044

`A008619(floor(A008574(n)/A161358(n+1)))`
-/

namespace A161357.P14373839513635601044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(A008574 n : ℚ) / (A161358 (n + 1) : ℚ)⌋.toNat

end

end A161357.P14373839513635601044

/-! ## A161357.P16267785722316014495

`ceil(A005408(n)/A023444(A145288(n+1)))`
-/

namespace A161357.P16267785722316014495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005408 n : ℚ) / (A023444 (A145288 (n + 1)).toNat : ℚ)⌉

end

end A161357.P16267785722316014495

/-!
# A161358: Shorter side (x) of inner rectangle described in A168339.

The programs for A161358, there is no canonical definition to state claims against.
-/

/-! ## A161358.P8331114725701218592

`A145288(n+1)-2`
-/

namespace A161358.P8331114725701218592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145288 (n + 1) - 2

end

end A161358.P8331114725701218592

/-! ## A161358.P10716595845255267104

`A023444(A145288(n+1))`
-/

namespace A161358.P10716595845255267104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A145288 (n + 1)).toNat

end

end A161358.P10716595845255267104

/-! ## A161358.P7193283631491496021

`A023445(A145288(n+1)+1)`
-/

namespace A161358.P7193283631491496021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A145288 (n + 1) + 1).toNat

end

end A161358.P7193283631491496021

/-! ## A161358.P11724330083408538609

`A023447(A145288(n+1)+3)`
-/

namespace A161358.P11724330083408538609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A145288 (n + 1) + 3).toNat

end

end A161358.P11724330083408538609

/-! ## A161358.P10529749115410836918

`A152832(2*A145288(n+1))`
-/

namespace A161358.P10529749115410836918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 (2 * A145288 (n + 1)).toNat

end

end A161358.P10529749115410836918

/-! ## A161358.P13743074248137592770

`A055400(A145288(n+1)+6)`
-/

namespace A161358.P13743074248137592770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A145288 (n + 1) + 6).toNat

end

end A161358.P13743074248137592770

/-! ## A161358.P3433110926115215313

`A337541(2^A145288(n+1))`
-/

namespace A161358.P3433110926115215313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A145288 (n + 1) : ℤ))).toNat

end

end A161358.P3433110926115215313

/-! ## A161358.P14782508919086897967

`A168265(A145288(n+1)+21)`
-/

namespace A161358.P14782508919086897967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168265 (A145288 (n + 1) + 21).toNat

end

end A161358.P14782508919086897967

/-! ## A161358.P16244408284754941163

`A254078(n+2)%A145288(n+1)`
-/

namespace A161358.P16244408284754941163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A145288 (n + 1))

end

end A161358.P16244408284754941163

/-! ## A161358.P5084842329325634419

`A289207(A145288(n+1)%(n+30))`
-/

namespace A161358.P5084842329325634419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.tmod (A145288 (n + 1)) (n + 30 : ℤ)).toNat

end

end A161358.P5084842329325634419

/-!
# A161359: Number of squares in inner rectangle described in A168339.

The programs for A161359, there is no canonical definition to state claims against.
-/

/-! ## A161359.P13167053884863325811

`A168339(n+1)-2*(A161357(n+1)+A161358(n+1))-4`
-/

namespace A161359.P13167053884863325811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168339 (n + 1) - 2 * (A161357 (n + 1) + A161358 (n + 1)) - 4

end

end A161359.P13167053884863325811

/-! ## A161359.P7630383837552437492

`A161369(n+1)+1+n`
-/

namespace A161359.P7630383837552437492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161369 (n + 1) + 1 + (n : ℤ)

end

end A161359.P7630383837552437492

/-! ## A161359.P17200935824127273834

`A161357(n+1)*A161358(n+1)-(n+1)`
-/

namespace A161359.P17200935824127273834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161357 (n + 1) * A161358 (n + 1) - (n + 1 : ℤ)

end

end A161359.P17200935824127273834

/-! ## A161359.P7841390266515470336

`A001478(n+1)+A161357(n+1)*A161358(n+1)`
-/

namespace A161359.P7841390266515470336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A161357 (n + 1) * A161358 (n + 1)

end

end A161359.P7841390266515470336

/-! ## A161359.P16347729799422415914

`A001478(n+1)+(A145288(n+1)-2)*A161357(n+1)`
-/

namespace A161359.P16347729799422415914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A145288 (n + 1) - 2) * A161357 (n + 1)

end

end A161359.P16347729799422415914

/-! ## A161359.P7748270602029116098

`A001478(n+1)+A023444(A145288(n+1))*A161357(n+1)`
-/

namespace A161359.P7748270602029116098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A023444 (A145288 (n + 1)).toNat * A161357 (n + 1)

end

end A161359.P7748270602029116098

/-! ## A161359.P6850354198100166309

`A001478(n+1)+A055400(A145288(n+1)+6)*A161357(n+1)`
-/

namespace A161359.P6850354198100166309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A055400 (A145288 (n + 1) + 6).toNat * A161357 (n + 1)

end

end A161359.P6850354198100166309

/-! ## A161359.P5463781938208603122

`A001478(n+1)+A161357(n+1)*A168265(A145288(n+1)+21)`
-/

namespace A161359.P5463781938208603122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A161357 (n + 1) * A168265 (A145288 (n + 1) + 21).toNat

end

end A161359.P5463781938208603122

/-! ## A161359.P17254563343606930559

`A001478(n+1)+(A143082(n+1)-2)*A055400(A145288(n+1)+6)`
-/

namespace A161359.P17254563343606930559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A143082 (n + 1) - 2) * A055400 (A145288 (n + 1) + 6).toNat

end

end A161359.P17254563343606930559

/-! ## A161359.P9608086435578597637

`A001478(n+1)+(A143082(n+1)-2)*A168265(A145288(n+1)+21)`
-/

namespace A161359.P9608086435578597637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A143082 (n + 1) - 2) * A168265 (A145288 (n + 1) + 21).toNat

end

end A161359.P9608086435578597637

/-!
# A161361: Convolution square root of A000521.

The programs for A161361, there is no canonical definition to state claims against.
-/

/-! ## A161361.P2068224993414506846

`A161362(∑[n])`
-/

namespace A161361.P2068224993414506846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161361.P2068224993414506846

/-! ## A161361.P5551184422575162751

`and(-1, A161362(A000096(n)))`
-/

namespace A161361.P5551184422575162751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A161362 (A000096 n).toNat)

end

end A161361.P5551184422575162751

/-!
# A161364: Triangle read by rows, modified version of A161363; row sums = A000041.

The programs for A161364, there is no canonical definition to state claims against.
-/

/-! ## A161364.P1466192858048089515

`xor(A180969(A022098(n)), A180969(n))`
-/

namespace A161364.P1466192858048089515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A180969 (A022098 n).toNat) (A180969 n)

end

end A161364.P1466192858048089515

/-! ## A161364.P219623358269385992

`A048675(A091536(n)+A010766(n+1))`
-/

namespace A161364.P219623358269385992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A091536 n + A010766 (n + 1)).toNat

end

end A161364.P219623358269385992

/-! ## A161364.P16778527708142222255

`and(A238343(n), A379629(n+3))`
-/

namespace A161364.P16778527708142222255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238343 n) (A379629 (n + 3))

end

end A161364.P16778527708142222255

/-! ## A161364.P5173458320726120131

`A048793(A238343(n)^A373948(n))`
-/

namespace A161364.P5173458320726120131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.roundAway ((A238343 n : ℚ) ^ (A373948 n : ℤ))).toNat

end

end A161364.P5173458320726120131

/-! ## A161364.P12574352225620869101

`and(A001400(A037952(n)), A238121(n))`
-/

namespace A161364.P12574352225620869101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001400 (A037952 n).toNat) (A238121 n)

end

end A161364.P12574352225620869101

/-!
# A161365: a(n) = 3/2 + 5*n - 5*(-1)^n/2.

The programs for A161365, the canonical program `A161365.P10032920921242083664` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161365 has offset 1).

The definition of A161365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161365.P10032920921242083664

`A017377(floor(n/2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161365

/-- `A017377(floor(n/2))` -/
def P10032920921242083664.Spec : Prop :=
  ∀ n, P10032920921242083664.a n = A161365 (n + 1)

theorem P10032920921242083664.correct : P10032920921242083664.Spec := by
  intro n
  simp only [A161365, Nat.add_sub_cancel]

end A161365

/-! ## A161365.P2587932788050536257

`5*or(1, n)+4`
-/

namespace A161365.P2587932788050536257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor 1 n + 4

end

end A161365.P2587932788050536257

namespace A161365

/-- `5*or(1, n)+4` -/
def P2587932788050536257.Spec : Prop :=
  ∀ n, (P2587932788050536257.a n : ℤ) = A161365 (n + 1)

end A161365

/-! ## A161365.P5077370307371660348

`a(n-2)+10` with `a(0)=9, a(1)=9`
-/

namespace A161365.P5077370307371660348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 9] fun n a =>
  a (n - 2) + 10

end

end A161365.P5077370307371660348

namespace A161365

/-- `a(n-2)+10` -/
def P5077370307371660348.Spec : Prop :=
  ∀ n, (P5077370307371660348.a n : ℤ) = A161365 (n + 1)

end A161365

/-! ## A161365.P15204887933281603504

`10*floor(n/2)+9`
-/

namespace A161365.P15204887933281603504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(n : ℚ) / 2⌋ + 9

end

end A161365.P15204887933281603504

namespace A161365

/-- `10*floor(n/2)+9` -/
def P15204887933281603504.Spec : Prop :=
  ∀ n, P15204887933281603504.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P15187515108845623777

`∑[10-a(n-1)]` with `a(0)=9, a(1)=0`
-/

namespace A161365.P15187515108845623777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 0] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161365.P15187515108845623777

namespace A161365

/-- `∑[10-a(n-1)]` -/
def P15187515108845623777.Spec : Prop :=
  ∀ n, P15187515108845623777.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P2381227665697502639

`A016897(or(1, n))`
-/

namespace A161365.P2381227665697502639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (Nat.lor 1 n)

end

end A161365.P2381227665697502639

namespace A161365

/-- `A016897(or(1, n))` -/
def P2381227665697502639.Spec : Prop :=
  ∀ n, P2381227665697502639.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P3328313789323710431

`A090771(or(1, n)+1)`
-/

namespace A161365.P3328313789323710431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (Nat.lor 1 n + 1)

end

end A161365.P3328313789323710431

namespace A161365

/-- `A090771(or(1, n)+1)` -/
def P3328313789323710431.Spec : Prop :=
  ∀ n, P3328313789323710431.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P12751290837339783766

`A268044(or(1, n)+1)`
-/

namespace A161365.P12751290837339783766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (Nat.lor 1 n + 1)

end

end A161365.P12751290837339783766

namespace A161365

/-- `A268044(or(1, n)+1)` -/
def P12751290837339783766.Spec : Prop :=
  ∀ n, P12751290837339783766.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P3184029190289844020

`A273669(or(1, n)+1)`
-/

namespace A161365.P3184029190289844020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (Nat.lor 1 n + 1)

end

end A161365.P3184029190289844020

namespace A161365

/-- `A273669(or(1, n)+1)` -/
def P3184029190289844020.Spec : Prop :=
  ∀ n, P3184029190289844020.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P16165239082102577033

`A017365(or(1, n))/2`
-/

namespace A161365.P16165239082102577033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017365 (Nat.lor 1 n) : ℚ) / 2

end

end A161365.P16165239082102577033

namespace A161365

/-- `A017365(or(1, n))/2` -/
def P16165239082102577033.Spec : Prop :=
  ∀ n, P16165239082102577033.a n = (A161365 (n + 1) : ℚ)

end A161365

/-! ## A161365.P13807858953824472885

`A090771(gcd(2, n)+n)`
-/

namespace A161365.P13807858953824472885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (Nat.gcd 2 n + n)

end

end A161365.P13807858953824472885

namespace A161365

/-- `A090771(gcd(2, n)+n)` -/
def P13807858953824472885.Spec : Prop :=
  ∀ n, P13807858953824472885.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P1266887629246223090

`∑[A066156(a(n-1))]` with `a(0)=9`
-/

namespace A161365.P1266887629246223090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A066156 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161365.P1266887629246223090

namespace A161365

/-- `∑[A066156(a(n-1))]` -/
def P1266887629246223090.Spec : Prop :=
  ∀ n, P1266887629246223090.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P3389720491832949591

`xor(1, A168460(n+1)+2)`
-/

namespace A161365.P3389720491832949591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A168460 (n + 1) + 2)

end

end A161365.P3389720491832949591

namespace A161365

/-- `xor(1, A168460(n+1)+2)` -/
def P3389720491832949591.Spec : Prop :=
  ∀ n, P3389720491832949591.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P13330721008913056650

`A016897(A109613(n))`
-/

namespace A161365.P13330721008913056650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A109613 n).toNat

end

end A161365.P13330721008913056650

namespace A161365

/-- `A016897(A109613(n))` -/
def P13330721008913056650.Spec : Prop :=
  ∀ n, P13330721008913056650.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P12502214692421967970

`A016897(A052928(n)+1)`
-/

namespace A161365.P12502214692421967970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A052928 n + 1).toNat

end

end A161365.P12502214692421967970

namespace A161365

/-- `A016897(A052928(n)+1)` -/
def P12502214692421967970.Spec : Prop :=
  ∀ n, P12502214692421967970.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P13658492028466658478

`A090771(2*A008619(n))`
-/

namespace A161365.P13658492028466658478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (2 * A008619 n).toNat

end

end A161365.P13658492028466658478

namespace A161365

/-- `A090771(2*A008619(n))` -/
def P13658492028466658478.Spec : Prop :=
  ∀ n, P13658492028466658478.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P6678676806663772561

`A016897(2*A004526(n)+1)`
-/

namespace A161365.P6678676806663772561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * A004526 n + 1).toNat

end

end A161365.P6678676806663772561

namespace A161365

/-- `A016897(2*A004526(n)+1)` -/
def P6678676806663772561.Spec : Prop :=
  ∀ n, P6678676806663772561.a n = A161365 (n + 1)

end A161365

/-! ## A161365.P12206363243285075978

`A273669(n+2-A000035(n))`
-/

namespace A161365.P12206363243285075978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 ((n + 2 : ℤ) - A000035 n).toNat

end

end A161365.P12206363243285075978

namespace A161365

/-- `A273669(n+2-A000035(n))` -/
def P12206363243285075978.Spec : Prop :=
  ∀ n, P12206363243285075978.a n = A161365 (n + 1)

end A161365

/-!
# A161366: Each term is the previous term plus the number of letters in the previous number, as conventionally spelled out in Spanish.

The programs for A161366, there is no canonical definition to state claims against.
-/

/-! ## A161366.P2853259491307113752

`A011762(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A161366.P2853259491307113752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011762 (a (n - 1)).toNat + a (n - 1)

end

end A161366.P2853259491307113752

/-!
# A161367: Primes such that prime(k)-prime(k-1)+1 is not prime.

The programs for A161367, there is no canonical definition to state claims against.
-/

/-! ## A161367.P16968714966004660001

`p?[A244207(n+1)-1]`
-/

namespace A161367.P16968714966004660001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244207 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161367.P16968714966004660001

/-! ## A161367.P10466205221992611780

`p?[2*A135145(n+1)-1]`
-/

namespace A161367.P10466205221992611780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135145 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161367.P10466205221992611780

/-! ## A161367.P4995960209840810301

`record[A006530(A244207(n+1)-1)]`
-/

namespace A161367.P4995960209840810301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A244207 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161367.P4995960209840810301

/-! ## A161367.P638405416784688715

`record[A020639(A244207(n+1)-1)]`
-/

namespace A161367.P638405416784688715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A244207 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161367.P638405416784688715

/-! ## A161367.P4343983932766415824

`∩[A053176(n+1), A244207(n+1)-1]`
-/

namespace A161367.P4343983932766415824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161367.P4343983932766415824

/-!
# A161369: a(n) = A161359(n) - n.

The programs for A161369, there is no canonical definition to state claims against.
-/

/-! ## A161369.P16354508441260596445

`A161359(n+1)-(n+1)`
-/

namespace A161369.P16354508441260596445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161359 (n + 1) - (n + 1 : ℤ)

end

end A161369.P16354508441260596445

/-! ## A161369.P15752118360722173621

`A023443(A161359(n+1)-n)`
-/

namespace A161369.P15752118360722173621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A161359 (n + 1) - (n : ℤ)).toNat

end

end A161369.P15752118360722173621

/-! ## A161369.P2693900460827624335

`A161359(A052938(2*n))-1-n`
-/

namespace A161369.P2693900460827624335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161359 (A052938 (2 * n)).toNat - 1 - (n : ℤ)

end

end A161369.P2693900460827624335

/-! ## A161369.P2207504148053090783

`A161359(n+1)+A001478(n+2)+1`
-/

namespace A161369.P2207504148053090783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161359 (n + 1) + A001478 (n + 2) + 1

end

end A161369.P2207504148053090783

/-! ## A161369.P15272970837235941226

`A161357(n+1)*A161358(n+1)-2*(n+1)`
-/

namespace A161369.P15272970837235941226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161357 (n + 1) * A161358 (n + 1) - (2 * (n + 1) : ℤ)

end

end A161369.P15272970837235941226

/-! ## A161369.P16844319971458999820

`A023443(A161359(n+1)%A028310(n))`
-/

namespace A161369.P16844319971458999820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A161359 (n + 1)) (A028310 n)).toNat

end

end A161369.P16844319971458999820

/-! ## A161369.P3185163967508006840

`A001478(n+1)+A001478(n+1)+A161357(n+1)*A161358(n+1)`
-/

namespace A161369.P3185163967508006840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A001478 (n + 1) + A161357 (n + 1) * A161358 (n + 1))

end

end A161369.P3185163967508006840

/-!
# A161370: a(n) = 2*A010844(n) + 1.

The programs for A161370, the canonical program `A161370.P134387974447513771` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161370 has offset 0).

The definition of A161370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A010844(n)+1` (program `A161370.P134387974447513771`, by `A161370.P134387974447513771.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161370.P134387974447513771

`2*A010844(n)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161370

/-- `2*A010844(n)+1` -/
def P134387974447513771.Spec : Prop :=
  ∀ n, P134387974447513771.a n = A161370 n

theorem P134387974447513771.correct : P134387974447513771.Spec := by
  intro n
  simp only [A161370]

end A161370

/-! ## A161370.P10419617048518628109

`2*n*(a(n-1)-1)+3` with `a(0)=3`
-/

namespace A161370.P10419617048518628109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * ((n : ℤ) * (a (n - 1) - 1)) + 3

end

end A161370.P10419617048518628109

namespace A161370

/-- `2*n*(a(n-1)-1)+3` -/
def P10419617048518628109.Spec : Prop :=
  ∀ n, P10419617048518628109.a n = A161370 n

end A161370

/-! ## A161370.P9252606655064008934

`3-(1-a(n-1))*2*n` with `a(0)=3`
-/

namespace A161370.P9252606655064008934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - (1 - a (n - 1)) * (2 * n : ℤ)

end

end A161370.P9252606655064008934

namespace A161370

/-- `3-(1-a(n-1))*2*n` -/
def P9252606655064008934.Spec : Prop :=
  ∀ n, P9252606655064008934.a n = A161370 n

end A161370

/-! ## A161370.P10403072869322005826

`A099760(n+1)+1`
-/

namespace A161370.P10403072869322005826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 (n + 1) + 1

end

end A161370.P10403072869322005826

namespace A161370

/-- `A099760(n+1)+1` -/
def P10403072869322005826.Spec : Prop :=
  ∀ n, P10403072869322005826.a n = A161370 n

end A161370

/-! ## A161370.P9778363067897723342

`A085644(n+1)+2`
-/

namespace A161370.P9778363067897723342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085644 (n + 1) + 2

end

end A161370.P9778363067897723342

namespace A161370

/-- `A085644(n+1)+2` -/
def P9778363067897723342.Spec : Prop :=
  ∀ n, P9778363067897723342.a n = A161370 n

end A161370

/-! ## A161370.P8039112623512327983

`4*A308876(n)-1`
-/

namespace A161370.P8039112623512327983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A308876 n - 1

end

end A161370.P8039112623512327983

namespace A161370

/-- `4*A308876(n)-1` -/
def P8039112623512327983.Spec : Prop :=
  ∀ n, P8039112623512327983.a n = A161370 n

end A161370

/-! ## A161370.P18425656068366855014

`4*A067273(n)+3`
-/

namespace A161370.P18425656068366855014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A067273 n + 3

end

end A161370.P18425656068366855014

namespace A161370

/-- `4*A067273(n)+3` -/
def P18425656068366855014.Spec : Prop :=
  ∀ n, P18425656068366855014.a n = A161370 n

end A161370

/-! ## A161370.P16655652955373205000

`A077138(Δ[n²])+2`
-/

namespace A161370.P16655652955373205000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A161370.P16655652955373205000

namespace A161370

/-- `A077138(Δ[n²])+2` -/
def P16655652955373205000.Spec : Prop :=
  ∀ n, P16655652955373205000.a n = A161370 n

end A161370

/-! ## A161370.P5104385327058546351

`record[ratio[A161380(n+1)]]`
-/

namespace A161370.P5104385327058546351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161380 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161370.P5104385327058546351

namespace A161370

/-- `record[ratio[A161380(n+1)]]` -/
def P5104385327058546351.Spec : Prop :=
  ∀ n, P5104385327058546351.a n = (A161370 n : ℚ)

end A161370

/-! ## A161370.P6279082786427226809

`A161380(∑[n+1]+1)`
-/

namespace A161370.P6279082786427226809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161380 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A161370.P6279082786427226809

namespace A161370

/-- `A161380(∑[n+1]+1)` -/
def P6279082786427226809.Spec : Prop :=
  ∀ n, P6279082786427226809.a n = A161370 n

end A161370

/-!
# A161371: An infinite overlap-free word without backtracking.

The programs for A161371, there is no canonical definition to state claims against.
-/

/-! ## A161371.P2685873402742055505

`A071461(p?[A270812(A059149(n))])`
-/

namespace A161371.P2685873402742055505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270812 (A059149 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071461 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A161371.P2685873402742055505

/-! ## A161371.P9252328742954233301

`A258141(A091152(n)%A017197(n))`
-/

namespace A161371.P9252328742954233301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258141 (Int.tmod (A091152 n) (A017197 n)).toNat

end

end A161371.P9252328742954233301

/-! ## A161371.P2052850101461763683

`val(xor(A018900(n+1), A117588(n+1))+1, 3)`
-/

namespace A161371.P2052850101461763683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor (A018900 (n + 1)) (A117588 (n + 1)) + 1).toNat 3

end

end A161371.P2052850101461763683

/-! ## A161371.P4932786529218180212

`A352512(A035793(n+1)%A072055(n+1))`
-/

namespace A161371.P4932786529218180212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (Int.tmod (A035793 (n + 1)) (A072055 (n + 1))).toNat

end

end A161371.P4932786529218180212

/-! ## A161371.P15736622544727183842

`floor((∑{e}[A049941(n+1)+2*n+1, #]-1)/2)`
-/

namespace A161371.P15736622544727183842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1 : ℚ) / 2⌋

end

end A161371.P15736622544727183842

/-!
# A161373: "Early bird" binary numbers: write the natural numbers in binary representation in a string 011011100101110111.... Sequence gives numbers which occur in the string strictly ahead of their natural place.

The programs for A161373, there is no canonical definition to state claims against.
-/

/-! ## A161373.P1005640419904035770

`lt[0, A187752(n)]`
-/

namespace A161373.P1005640419904035770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161373.P1005640419904035770

/-! ## A161373.P12707178444369334986

`lt[A333920(n), n]`
-/

namespace A161373.P12707178444369334986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161373.P12707178444369334986

/-! ## A161373.P13775192114839284495

`comp[A161374(n+1)]`
-/

namespace A161373.P13775192114839284495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161373.P13775192114839284495

/-! ## A161373.P16846480584037501529

`lt[n, A296364(n)²]`
-/

namespace A161373.P16846480584037501529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161373.P16846480584037501529

/-! ## A161373.P12248206765758888112

`lt[A083653(n)+1, n]`
-/

namespace A161373.P12248206765758888112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083653 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161373.P12248206765758888112

/-! ## A161373.P11712423716916138694

`A296365(comp[(4*n)²])`
-/

namespace A161373.P11712423716916138694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296365 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A161373.P11712423716916138694

/-! ## A161373.P6930531420119977442

`lt[1, A101933(n+1)]+1`
-/

namespace A161373.P6930531420119977442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161373.P6930531420119977442

/-! ## A161373.P12331366282363041588

`comp[C(A140523(n+1), (n+1)/2^val(n+1, 2))]`
-/

namespace A161373.P12331366282363041588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140523 (n + 1)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161373.P12331366282363041588

/-! ## A161373.P3592047854299503472

`comp[Δ[A161374(A158416(n))]]`
-/

namespace A161373.P3592047854299503472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161374 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161373.P3592047854299503472

/-! ## A161373.P17085301714204400209

`eq[0, A000038(A187752(n)²)]`
-/

namespace A161373.P17085301714204400209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A187752 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161373.P17085301714204400209

/-!
# A161374: "Punctual" binary numbers. Complement of A161373.

The programs for A161374, there is no canonical definition to state claims against.
-/

/-! ## A161374.P14359831165502287334

`eq[A083935(n), A296364(n)]`
-/

namespace A161374.P14359831165502287334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161374.P14359831165502287334

/-! ## A161374.P4633608118953622692

`eq[A083653(n), A319409(n)]`
-/

namespace A161374.P4633608118953622692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161374.P4633608118953622692

/-! ## A161374.P17398412568072639948

`eq[A296364(A070176(n)), A296364(n)]`
-/

namespace A161374.P17398412568072639948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 (A070176 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161374.P17398412568072639948

/-! ## A161374.P15167704651698812667

`eq[n, A333920(n)]`
-/

namespace A161374.P15167704651698812667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161374.P15167704651698812667

/-! ## A161374.P3051750453924228887

`record[gcd(A000290(n), A333920(n))]`
-/

namespace A161374.P3051750453924228887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A333920 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161374.P3051750453924228887

/-!
# A161378: Numbers whose Spanish names include all five vowels at least once.

The programs for A161378, there is no canonical definition to state claims against.
-/

/-! ## A161378.P3067091114499674647

`lt[4, A111867(n+1)]+1`
-/

namespace A161378.P3067091114499674647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161378.P3067091114499674647

/-! ## A161378.P16381850323979946383

`eq[5, A111867(n+2)]+2`
-/

namespace A161378.P16381850323979946383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A161378.P16381850323979946383

/-! ## A161378.P5866354144905486667

`eq[5, A111867(gcd(n, C(2, n²)))]`
-/

namespace A161378.P5866354144905486667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (Nat.gcd n (Nat.choose 2 (n ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161378.P5866354144905486667

/-! ## A161378.P10833011071694218793

`lt[4, A111867(A028310(n))]`
-/

namespace A161378.P10833011071694218793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161378.P10833011071694218793

/-! ## A161378.P11941508335611914089

`A011760(lt[4, A111867(n+1)])`
-/

namespace A161378.P11941508335611914089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161378.P11941508335611914089

/-! ## A161378.P11832409674714154429

`A011760(eq[5, A111867(n+1)])`
-/

namespace A161378.P11832409674714154429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161378.P11832409674714154429

/-! ## A161378.P456257566851566680

`A020725(lt[4, A111867(n+1)])`
-/

namespace A161378.P456257566851566680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161378.P456257566851566680

/-! ## A161378.P7526433195406107703

`A020725(eq[5, A111867(n+1)])`
-/

namespace A161378.P7526433195406107703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161378.P7526433195406107703

/-! ## A161378.P862741452989645742

`A065475(eq[5, A111867(n+1)])`
-/

namespace A161378.P862741452989645742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161378.P862741452989645742

/-! ## A161378.P4604225501133063

`A114637(eq[5, A111867(n+1)])`
-/

namespace A161378.P4604225501133063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161378.P4604225501133063

/-!
# A161379: Prime numbers whose Spanish names have a prime number of letters.

The programs for A161379, there is no canonical definition to state claims against.
-/

/-! ## A161379.P17433013741125074856

`p?[n*A001222(A011762(n))]`
-/

namespace A161379.P17433013741125074856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A011762 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161379.P17433013741125074856

/-! ## A161379.P7180101161713399199

`eq[A003415(n), A003415(A011762(n))]`
-/

namespace A161379.P7180101161713399199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A011762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161379.P7180101161713399199

/-! ## A161379.P16224704341173866355

`eq[A005128(n), A005128(A011762(n))]`
-/

namespace A161379.P16224704341173866355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A011762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161379.P16224704341173866355

/-! ## A161379.P16802733829317154829

`eq[A053204(A011762(n)), A053204(n)]`
-/

namespace A161379.P16802733829317154829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A011762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161379.P16802733829317154829

/-! ## A161379.P8464362627156990110

`p?[A001489(n)*A008683(A011762(n))]`
-/

namespace A161379.P8464362627156990110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A008683 (A011762 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161379.P8464362627156990110

/-!
# A161380: Triangle read by rows: T(n,k) = 2*k*T(n-1,n-1) + 1 (n >= 0, 0 <= k <= n), with T(0,0) = 1.

The programs for A161380, there is no canonical definition to state claims against.
-/

/-! ## A161380.P4843257021921729966

`A227394(A132720(n)^A357638(n))`
-/

namespace A161380.P4843257021921729966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (SequenceMachineLib.roundAway ((A132720 n : ℚ) ^ (A357638 n : ℤ))).toNat

end

end A161380.P4843257021921729966

/-! ## A161380.P16895390227775375068

`or(A007318(2*n+3), A230230(A035470(2*n+1)))`
-/

namespace A161380.P16895390227775375068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (2 * n + 3)) (A230230 (A035470 (2 * n + 1)).toNat)

end

end A161380.P16895390227775375068

/-!
# A161381: Triangle read by rows: T(n,k) = n!*2^k/(n-k)! (n >= 0, 0 <= k <= n).

The programs for A161381, there is no canonical definition to state claims against.
-/

/-! ## A161381.P2031857831540449818

`(n-C(∑[char[∑[n]]], 2))!*A013609(n)`
-/

namespace A161381.P2031857831540449818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A013609 n

end

end A161381.P2031857831540449818

/-! ## A161381.P17691709146376295570

`2^(n-C(∑[char[∑[n]]], 2))*A008279(n)`
-/

namespace A161381.P17691709146376295570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A008279 n : ℚ)

end

end A161381.P17691709146376295570

/-! ## A161381.P2220980037304538693

`A008279(n)*A059268(n)`
-/

namespace A161381.P2220980037304538693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A059268 n

end

end A161381.P2220980037304538693

/-! ## A161381.P14322853647067350530

`A013609(n)*A233543(n)`
-/

namespace A161381.P14322853647067350530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A233543 n

end

end A161381.P14322853647067350530

/-! ## A161381.P4831533963103788309

`abs(A233543(n)*A303872(n))`
-/

namespace A161381.P4831533963103788309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233543 n * A303872 n|

end

end A161381.P4831533963103788309

/-! ## A161381.P15809570455590887034

`A002262(n)!*A013609(n)`
-/

namespace A161381.P15809570455590887034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A013609 n

end

end A161381.P15809570455590887034

/-! ## A161381.P14378822703635352889

`A163351(n)!*A013609(n)`
-/

namespace A161381.P14378822703635352889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163351 n).toNat : ℤ) * A013609 n

end

end A161381.P14378822703635352889

/-! ## A161381.P5211661811920547757

`A166352(n)!*A013609(n)`
-/

namespace A161381.P5211661811920547757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A166352 n).toNat : ℤ) * A013609 n

end

end A161381.P5211661811920547757

/-! ## A161381.P5362148724579956044

`A298486(n)!*A013609(n)`
-/

namespace A161381.P5362148724579956044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A298486 n).toNat : ℤ) * A013609 n

end

end A161381.P5362148724579956044

/-! ## A161381.P361122268907889913

`A000165(A002262(n))*A007318(n)`
-/

namespace A161381.P361122268907889913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A002262 n).toNat * A007318 n

end

end A161381.P361122268907889913

/-!
# A161382: (0,1)-sequence where n-th run has length n^2.

The programs for A161382, the canonical program `A161382.P17829671909695505750` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161382 has offset 1).

The definition of A161382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161382.P9321618701549377524

`log2(gcd(2, ∑[char[∑[n²]]]))`
-/

namespace A161382.P9321618701549377524
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A161382.P9321618701549377524

namespace A161382

/-- `log2(gcd(2, ∑[char[∑[n²]]]))` -/
def P9321618701549377524.Spec : Prop :=
  ∀ n, P9321618701549377524.a n = (A161382 (n + 1) : ℝ)

end A161382

/-! ## A161382.P13894552330868195697

`∑[char[∑[(n+1)²]]]%2`
-/

namespace A161382.P13894552330868195697
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A161382.P13894552330868195697

namespace A161382

/-- `∑[char[∑[(n+1)²]]]%2` -/
def P13894552330868195697.Spec : Prop :=
  ∀ n, (P13894552330868195697.a n : ℤ) = A161382 (n + 1)

end A161382

/-! ## A161382.P9711682904306400576

`1-∑[char[∑[n²]]]%2`
-/

namespace A161382.P9711682904306400576
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A161382.P9711682904306400576

namespace A161382

/-- `1-∑[char[∑[n²]]]%2` -/
def P9711682904306400576.Spec : Prop :=
  ∀ n, P9711682904306400576.a n = A161382 (n + 1)

end A161382

/-! ## A161382.P4987272232836661801

`and(1, ∑[char[∑[(n+1)²]]])`
-/

namespace A161382.P4987272232836661801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161382.P4987272232836661801

namespace A161382

/-- `and(1, ∑[char[∑[(n+1)²]]])` -/
def P4987272232836661801.Spec : Prop :=
  ∀ n, (P4987272232836661801.a n : ℤ) = A161382 (n + 1)

end A161382

/-! ## A161382.P5003070961695667110

`(a(n-1)-char[∑[n²]])²` with `a(0)=0`
-/

namespace A161382.P5003070961695667110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A161382.P5003070961695667110

namespace A161382

/-- `(a(n-1)-char[∑[n²]])²` -/
def P5003070961695667110.Spec : Prop :=
  ∀ n, P5003070961695667110.a n = A161382 (n + 1)

end A161382

/-! ## A161382.P17885350061135181472

`xor(a(n-1), char[a(n-1)+n²])` with `a(0)=0`
-/

namespace A161382.P17885350061135181472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A161382.P17885350061135181472

namespace A161382

/-- `xor(a(n-1), char[a(n-1)+n²])` -/
def P17885350061135181472.Spec : Prop :=
  ∀ n, (P17885350061135181472.a n : ℤ) = A161382 (n + 1)

end A161382

/-! ## A161382.P2621566051680224075

`log2(A161385(n+1))`
-/

namespace A161382.P2621566051680224075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A161385 (n + 1) : ℝ)

end

end A161382.P2621566051680224075

namespace A161382

/-- `log2(A161385(n+1))` -/
def P2621566051680224075.Spec : Prop :=
  ∀ n, P2621566051680224075.a n = (A161382 (n + 1) : ℝ)

end A161382

/-! ## A161382.P17829671909695505750

`A057212(A000217(A074279(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161382

/-- `A057212(A000217(A074279(n+1)))` -/
def P17829671909695505750.Spec : Prop :=
  ∀ n, P17829671909695505750.a n = A161382 (n + 1)

theorem P17829671909695505750.correct : P17829671909695505750.Spec := by
  intro n
  simp only [A161382, Nat.add_sub_cancel]

end A161382

/-! ## A161382.P10779624847067486816

`A000035(A044995(n+1))`
-/

namespace A161382.P10779624847067486816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A044995 (n + 1)).toNat

end

end A161382.P10779624847067486816

namespace A161382

/-- `A000035(A044995(n+1))` -/
def P10779624847067486816.Spec : Prop :=
  ∀ n, P10779624847067486816.a n = A161382 (n + 1)

end A161382

/-! ## A161382.P9760633117326815929

`2-A000034(A044995(n+1)+1)`
-/

namespace A161382.P9760633117326815929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A044995 (n + 1) + 1).toNat

end

end A161382.P9760633117326815929

namespace A161382

/-- `2-A000034(A044995(n+1)+1)` -/
def P9760633117326815929.Spec : Prop :=
  ∀ n, P9760633117326815929.a n = A161382 (n + 1)

end A161382

/-! ## A161382.P4596193282959363042

`A064990(A044971(n+1))`
-/

namespace A161382.P4596193282959363042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (A044971 (n + 1)).toNat

end

end A161382.P4596193282959363042

namespace A161382

/-- `A064990(A044971(n+1))` -/
def P4596193282959363042.Spec : Prop :=
  ∀ n, P4596193282959363042.a n = A161382 (n + 1)

end A161382

/-! ## A161382.P243197300451324683

`A014577(2*(A044995(n+1)+1))`
-/

namespace A161382.P243197300451324683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * (A044995 (n + 1) + 1)).toNat

end

end A161382.P243197300451324683

namespace A161382

/-- `A014577(2*(A044995(n+1)+1))` -/
def P243197300451324683.Spec : Prop :=
  ∀ n, P243197300451324683.a n = A161382 (n + 1)

end A161382

/-! ## A161382.P7874043117533798229

`A014577(A044995(n+1)+A044995(n+1)+2)`
-/

namespace A161382.P7874043117533798229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A044995 (n + 1) + (A044995 (n + 1) + 2)).toNat

end

end A161382.P7874043117533798229

namespace A161382

/-- `A014577(A044995(n+1)+A044995(n+1)+2)` -/
def P7874043117533798229.Spec : Prop :=
  ∀ n, P7874043117533798229.a n = A161382 (n + 1)

end A161382

/-!
# A161385: (1,2)-sequence where n-th run has length n^2.

The programs for A161385, the canonical program `A161385.P3801833948456811551` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161385 has offset 1).

The definition of A161385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161385.P3801833948456811551

`A161382(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161385

/-- `A161382(n+1)+1` -/
def P3801833948456811551.Spec : Prop :=
  ∀ n, P3801833948456811551.a n = A161385 (n + 1)

theorem P3801833948456811551.correct : P3801833948456811551.Spec := by
  intro n
  simp only [A161385, Nat.add_sub_cancel]

end A161385

/-! ## A161385.P11327993444783055694

`gcd(2, ∑[char[∑[n²]]])`
-/

namespace A161385.P11327993444783055694
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161385.P11327993444783055694

namespace A161385

/-- `gcd(2, ∑[char[∑[n²]]])` -/
def P11327993444783055694.Spec : Prop :=
  ∀ n, (P11327993444783055694.a n : ℤ) = A161385 (n + 1)

end A161385

/-! ## A161385.P11393943496504929382

`2-∑[char[∑[n²]]]%2`
-/

namespace A161385.P11393943496504929382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A161385.P11393943496504929382

namespace A161385

/-- `2-∑[char[∑[n²]]]%2` -/
def P11393943496504929382.Spec : Prop :=
  ∀ n, P11393943496504929382.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P7557790950933043338

`∑[char[∑[(n+1)²]]]%2+1`
-/

namespace A161385.P7557790950933043338
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1

end

end A161385.P7557790950933043338

namespace A161385

/-- `∑[char[∑[(n+1)²]]]%2+1` -/
def P7557790950933043338.Spec : Prop :=
  ∀ n, (P7557790950933043338.a n : ℤ) = A161385 (n + 1)

end A161385

/-! ## A161385.P8168049535435630112

`and(1, ∑[char[∑[(n+1)²]]])+1`
-/

namespace A161385.P8168049535435630112
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A161385.P8168049535435630112

namespace A161385

/-- `and(1, ∑[char[∑[(n+1)²]]])+1` -/
def P8168049535435630112.Spec : Prop :=
  ∀ n, (P8168049535435630112.a n : ℤ) = A161385 (n + 1)

end A161385

/-! ## A161385.P14169803684835860725

`∏[char[∑[∑[2*n+1]]]+1]%3`
-/

namespace A161385.P14169803684835860725
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A161385.P14169803684835860725

namespace A161385

/-- `∏[char[∑[∑[2*n+1]]]+1]%3` -/
def P14169803684835860725.Spec : Prop :=
  ∀ n, (P14169803684835860725.a n : ℤ) = A161385 (n + 1)

end A161385

/-! ## A161385.P14843701653798272752

`A000035(∑[char[∑[(n+1)²]]])+1`
-/

namespace A161385.P14843701653798272752
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A161385.P14843701653798272752

namespace A161385

/-- `A000035(∑[char[∑[(n+1)²]]])+1` -/
def P14843701653798272752.Spec : Prop :=
  ∀ n, P14843701653798272752.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P9666870170519035948

`A072078(∑[char[∑[(n+1)²]]]²+1)`
-/

namespace A161385.P9666870170519035948
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1)

end

end A161385.P9666870170519035948

namespace A161385

/-- `A072078(∑[char[∑[(n+1)²]]]²+1)` -/
def P9666870170519035948.Spec : Prop :=
  ∀ n, P9666870170519035948.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P13022599262407378804

`A088431(2*∑[char[∑[n²]]]²+1)-1`
-/

namespace A161385.P13022599262407378804
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) - 1

end

end A161385.P13022599262407378804

namespace A161385

/-- `A088431(2*∑[char[∑[n²]]]²+1)-1` -/
def P13022599262407378804.Spec : Prop :=
  ∀ n, P13022599262407378804.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P3295731812292090242

`A001511(A074279(n+1)²+2)`
-/

namespace A161385.P3295731812292090242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A074279 (n + 1) ^ 2 + 2).toNat

end

end A161385.P3295731812292090242

namespace A161385

/-- `A001511(A074279(n+1)²+2)` -/
def P3295731812292090242.Spec : Prop :=
  ∀ n, P3295731812292090242.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P3156197081647397184

`A074279(A001511(A074279(n+1)))`
-/

namespace A161385.P3156197081647397184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A001511 (A074279 (n + 1)).toNat).toNat

end

end A161385.P3156197081647397184

namespace A161385

/-- `A074279(A001511(A074279(n+1)))` -/
def P3156197081647397184.Spec : Prop :=
  ∀ n, P3156197081647397184.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P2914475957611999515

`A205032(A044995(n+1))`
-/

namespace A161385.P2914475957611999515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205032 (A044995 (n + 1)).toNat

end

end A161385.P2914475957611999515

namespace A161385

/-- `A205032(A044995(n+1))` -/
def P2914475957611999515.Spec : Prop :=
  ∀ n, P2914475957611999515.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P12059088484087231544

`A000034(A044995(n+1)+2)`
-/

namespace A161385.P12059088484087231544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A044995 (n + 1) + 2).toNat

end

end A161385.P12059088484087231544

namespace A161385

/-- `A000034(A044995(n+1)+2)` -/
def P12059088484087231544.Spec : Prop :=
  ∀ n, P12059088484087231544.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P2315346192554639039

`A064990(A044971(n+1))+1`
-/

namespace A161385.P2315346192554639039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (A044971 (n + 1)).toNat + 1

end

end A161385.P2315346192554639039

namespace A161385

/-- `A064990(A044971(n+1))+1` -/
def P2315346192554639039.Spec : Prop :=
  ∀ n, P2315346192554639039.a n = A161385 (n + 1)

end A161385

/-! ## A161385.P878411595495638471

`2-A014577(2*A044995(n+1))`
-/

namespace A161385.P878411595495638471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014577 (2 * A044995 (n + 1)).toNat

end

end A161385.P878411595495638471

namespace A161385

/-- `2-A014577(2*A044995(n+1))` -/
def P878411595495638471.Spec : Prop :=
  ∀ n, P878411595495638471.a n = A161385 (n + 1)

end A161385

/-!
# A161386: Number of letters in n-th prime (in Spanish).

The programs for A161386, there is no canonical definition to state claims against.
-/

/-! ## A161386.P3545692640040554018

`A011762(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A161386.P3545692640040554018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A161386.P3545692640040554018

/-! ## A161386.P453079443324100496

`A011762(Δ[A007504(n)])`
-/

namespace A161386.P453079443324100496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (f1 (n + 1) - f1 n).toNat

end

end A161386.P453079443324100496

/-! ## A161386.P17609354005634887582

`A011762(A000040(n+1))`
-/

namespace A161386.P17609354005634887582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A000040 (n + 1)).toNat

end

end A161386.P17609354005634887582

/-! ## A161386.P16296632306142740377

`A011762(A006005(n+1))`
-/

namespace A161386.P16296632306142740377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A006005 (n + 1)).toNat

end

end A161386.P16296632306142740377

/-! ## A161386.P9559965746546111291

`A011762(A171047(n+1))`
-/

namespace A161386.P9559965746546111291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A171047 (n + 1)).toNat

end

end A161386.P9559965746546111291

/-! ## A161386.P4357834051031143241

`A011762(A171056(n+1))`
-/

namespace A161386.P4357834051031143241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A171056 (n + 1)).toNat

end

end A161386.P4357834051031143241

/-! ## A161386.P16925851222031704348

`A011762(A216884(n+1))`
-/

namespace A161386.P16925851222031704348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A216884 (n + 1)).toNat

end

end A161386.P16925851222031704348

/-! ## A161386.P1935336423691434977

`A011762(A318871(n+1))`
-/

namespace A161386.P1935336423691434977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A318871 (n + 1)).toNat

end

end A161386.P1935336423691434977

/-! ## A161386.P17345455357260276209

`A011762(A008578(n+2))`
-/

namespace A161386.P17345455357260276209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A008578 (n + 2)).toNat

end

end A161386.P17345455357260276209

/-!
# A161387: Primes p such that (p-1)/2 is an (odd) binary palindrome.

The programs for A161387, there is no canonical definition to state claims against.
-/

/-! ## A161387.P6570296033276143350

`2*A161388(n+1)+1`
-/

namespace A161387.P6570296033276143350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161388 (n + 1) + 1

end

end A161387.P6570296033276143350

/-! ## A161387.P4911953614822263650

`p?[A229086(n+1)]`
-/

namespace A161387.P4911953614822263650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161387.P4911953614822263650

/-! ## A161387.P16978697521936511151

`p?[A164302(n+1)+1]`
-/

namespace A161387.P16978697521936511151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164302 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161387.P16978697521936511151

/-! ## A161387.P17480944414635311225

`p?[2*A006995(n+1)+1]`
-/

namespace A161387.P17480944414635311225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006995 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161387.P17480944414635311225

/-! ## A161387.P11397852612963243828

`p?[4*A044051(n+1)-1]`
-/

namespace A161387.P11397852612963243828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A044051 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161387.P11397852612963243828

/-! ## A161387.P4420425324069400875

`A348717(Δ[A229086(n+1)])+A229086(n+1)`
-/

namespace A161387.P4420425324069400875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (f1 (n + 1) - f1 n).toNat + A229086 (n + 1)

end

end A161387.P4420425324069400875

/-! ## A161387.P7835235299889574930

`∩[A002145(n+1), A229086(n+1)]`
-/

namespace A161387.P7835235299889574930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P7835235299889574930

/-! ## A161387.P12588886072604119677

`∩[A045326(n+1), A229086(n+1)]`
-/

namespace A161387.P12588886072604119677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P12588886072604119677

/-! ## A161387.P16696078635041935250

`∩[A085760(n+1), A229086(n+1)]`
-/

namespace A161387.P16696078635041935250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P16696078635041935250

/-! ## A161387.P14649696214975494758

`∩[A229086(n+1), A285015(n+1)]`
-/

namespace A161387.P14649696214975494758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P14649696214975494758

/-! ## A161387.P11120166524566180401

`∩[A229086(n+1), A385221(n+1)]`
-/

namespace A161387.P11120166524566180401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P11120166524566180401

/-! ## A161387.P11346905795132262994

`∩[A049098(n+1), A229086(n+1)]`
-/

namespace A161387.P11346905795132262994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P11346905795132262994

/-! ## A161387.P388165481352163470

`∩[A140409(n+1), A229086(n+1)]`
-/

namespace A161387.P388165481352163470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P388165481352163470

/-! ## A161387.P12316932776426439971

`∩[A040116(n+1), A229086(n+1)]`
-/

namespace A161387.P12316932776426439971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P12316932776426439971

/-! ## A161387.P13567620618908391371

`∩[A045323(n+1), A229086(n+1)]`
-/

namespace A161387.P13567620618908391371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P13567620618908391371

/-! ## A161387.P17195017729639887719

`∩[A045419(n+1), A229086(n+1)]`
-/

namespace A161387.P17195017729639887719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P17195017729639887719

/-! ## A161387.P134992810446539036

`∩[A229086(n+1), A301590(n+1)]`
-/

namespace A161387.P134992810446539036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P134992810446539036

/-! ## A161387.P7337769722000581114

`∩[A042987(n+1), A229086(n+1)]`
-/

namespace A161387.P7337769722000581114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P7337769722000581114

/-! ## A161387.P11445897604248992159

`∩[A045395(n+1), A229086(n+1)]`
-/

namespace A161387.P11445897604248992159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P11445897604248992159

/-! ## A161387.P11127310208149173050

`∩[A066499(n+1), A229086(n+1)]`
-/

namespace A161387.P11127310208149173050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161387.P11127310208149173050

/-!
# A161388: (Odd) binary palindromes n such that 2*n + 1 is a prime.

The programs for A161388, there is no canonical definition to state claims against.
-/

/-! ## A161388.P9959712081220848605

`(A161387(n+1)-1)/2`
-/

namespace A161388.P9959712081220848605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161387 (n + 1) - 1 : ℚ) / 2

end

end A161388.P9959712081220848605

/-! ## A161388.P5736725296568870946

`floor(A161387(n+1)/2)`
-/

namespace A161388.P5736725296568870946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161387 (n + 1) : ℚ) / 2⌋

end

end A161388.P5736725296568870946

/-! ## A161388.P2227614870432493871

`ceil(A008683(A064740(n+2))+A161387(n+1)/2)`
-/

namespace A161388.P2227614870432493871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A064740 (n + 2)).toNat : ℚ) + (A161387 (n + 1) : ℚ) / 2⌉

end

end A161388.P2227614870432493871

/-! ## A161388.P18248390523662858148

`floor(p?[A229086(n+1)]/2)`
-/

namespace A161388.P18248390523662858148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A161388.P18248390523662858148

/-! ## A161388.P5096034212366040324

`p?[A229086(n+1)]/2-(n+1)/Δ[A027689(n)]`
-/

namespace A161388.P5096034212366040324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2 - (n + 1 : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A161388.P5096034212366040324

/-! ## A161388.P11388153134552636728

`∑[A004525(Δ[A229086(n+1)])]`
-/

namespace A161388.P11388153134552636728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161388.P11388153134552636728

/-! ## A161388.P11480883525864674707

`∑[A025480(Δ[A229086(n+1)])]`
-/

namespace A161388.P11480883525864674707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161388.P11480883525864674707

/-! ## A161388.P15030659251655814223

`∑[A026741(Δ[A229086(n+1)])]`
-/

namespace A161388.P15030659251655814223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161388.P15030659251655814223

/-! ## A161388.P16208136201029963670

`∑[A029578(Δ[A229086(n+1)])]`
-/

namespace A161388.P16208136201029963670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161388.P16208136201029963670

/-! ## A161388.P13427433486578524875

`∑[A078898(Δ[A229086(n+1)])]`
-/

namespace A161388.P13427433486578524875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161388.P13427433486578524875

/-! ## A161388.P11002585621711592085

`∩[A006995(n+1), A104635(n+1)]`
-/

namespace A161388.P11002585621711592085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161388.P11002585621711592085

/-! ## A161388.P5087810836424373165

`∩[A044918(n+1), A104635(n+1)]`
-/

namespace A161388.P5087810836424373165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161388.P5087810836424373165

/-! ## A161388.P16540188277889505983

`∩[A057890(n+1), A104635(n+1)]`
-/

namespace A161388.P16540188277889505983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161388.P16540188277889505983

/-! ## A161388.P5361536939354472449

`∩[A104635(n+1), A161604(n+1)]`
-/

namespace A161388.P5361536939354472449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161388.P5361536939354472449

/-! ## A161388.P14131902067718076646

`∩[A104635(n+1), A180204(n+1)]`
-/

namespace A161388.P14131902067718076646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161388.P14131902067718076646

/-! ## A161388.P133058792634254953

`∩[A104635(n+1), A334918(n+1)]`
-/

namespace A161388.P133058792634254953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161388.P133058792634254953

/-! ## A161388.P173462683019966871

`∩[A005097(n+1), A006995(n+1)]`
-/

namespace A161388.P173462683019966871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161388.P173462683019966871

/-! ## A161388.P11569775131487703885

`A000010(A229086(n+2))/2`
-/

namespace A161388.P11569775131487703885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A229086 (n + 2)).toNat : ℚ) / 2

end

end A161388.P11569775131487703885

/-! ## A161388.P13150626946123748470

`filter[A006995(n+1), A101264(#)]`
-/

namespace A161388.P13150626946123748470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A161388.P13150626946123748470

/-!
# A161389: Spelling n in Spanish requires a new letter of the alphabet.

The programs for A161389, there is no canonical definition to state claims against.
-/

/-! ## A161389.P10480618921275397562

`lt[A001223(A290673(n)), 5]`
-/

namespace A161389.P10480618921275397562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A290673 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161389.P10480618921275397562

/-! ## A161389.P12147546388754028943

`lt[A237612(A061245(n+1)), 6]`
-/

namespace A161389.P12147546388754028943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237612 (A061245 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161389.P12147546388754028943

/-! ## A161389.P14919077537483684704

`lt[A033273(A344204(n+1)), 8]`
-/

namespace A161389.P14919077537483684704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A344204 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161389.P14919077537483684704

/-! ## A161389.P16108750381420056716

`lt[A329127(A329110(n+5)), 83]`
-/

namespace A161389.P16108750381420056716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329127 (A329110 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161389.P16108750381420056716

/-! ## A161389.P11940273970103270743

`eq[A355588(n), A394914(n+1)]`
-/

namespace A161389.P11940273970103270743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394914 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161389.P11940273970103270743

/-!
# A161391: Dimension sequence of the right-alternative (=left-alternative) operad.

The programs for A161391, there is no canonical definition to state claims against.
-/

/-! ## A161391.P5291342384736744465

`(n+1)*A348195(A149037(n)+1)`
-/

namespace A161391.P5291342384736744465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A348195 (A149037 n + 1).toNat

end

end A161391.P5291342384736744465

/-!
# A161392: Dimension sequence of the alternative operad in characteristics different from 2 and 3.

The programs for A161392, there is no canonical definition to state claims against.
-/

/-! ## A161392.P2864062190491502464

`A161393(n+1)-char[5]`
-/

namespace A161392.P2864062190491502464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161393 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A161392.P2864062190491502464

/-!
# A161393: Dimension sequence of the alternative operad in characteristic 3.

The programs for A161393, there is no canonical definition to state claims against.
-/

/-! ## A161393.P2833972611262303310

`round(sqrt(A134955(3*n)))`
-/

namespace A161393.P2833972611262303310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A134955 (3 * n) : ℝ))

end

end A161393.P2833972611262303310

/-!
# A161394: Numbers divisible by the number of letters to express them in Spanish.

The programs for A161394, there is no canonical definition to state claims against.
-/

/-! ## A161394.P13029987668055499444

`eq[n+1, lcm(n+1, A011762(n+1))]+1`
-/

namespace A161394.P13029987668055499444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A011762 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161394.P13029987668055499444

/-! ## A161394.P3394140769938921907

`eq[n%A011762(n), A000007(n)]`
-/

namespace A161394.P3394140769938921907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A011762 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161394.P3394140769938921907

/-! ## A161394.P14183493677191710950

`eq[n, lcm(A011762(n), A233583(n+1))]`
-/

namespace A161394.P14183493677191710950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011762 n) (A233583 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161394.P14183493677191710950

/-! ## A161394.P16497843346989752715

`eq[A297999(n)-A297826(n), (n+1)%A011762(n)]`
-/

namespace A161394.P16497843346989752715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n - A297826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A011762 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161394.P16497843346989752715

/-!
# A161397: a(n) = the smallest positive integer that contains the same number of (non-leading) 0's as n when a(n) and n are written in binary, is not coprime to n, and is not a divisor of n.

The programs for A161397, there is no canonical definition to state claims against.
-/

/-! ## A161397.P14162397932901774691

`A145257(n+2)/A105551(A105547(n))`
-/

namespace A161397.P14162397932901774691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145257 (n + 2) : ℚ) / (A105551 (A105547 n).toNat : ℚ)

end

end A161397.P14162397932901774691

/-! ## A161397.P11361776161859414346

`A145257(n+2)/A362852(A374634(2*n+3))`
-/

namespace A161397.P11361776161859414346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145257 (n + 2) : ℚ) / (A362852 (A374634 (2 * n + 3)).toNat : ℚ)

end

end A161397.P11361776161859414346

/-!
# A161398: a(n) = the smallest divisor of n that contains the same number of 1's as n when both numbers are written in binary.

The programs for A161398, there is no canonical definition to state claims against.
-/

/-! ## A161398.P15630172567618268106

`A305422(A305421(n+1))/A325566(n+1)`
-/

namespace A161398.P15630172567618268106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305422 (A305421 (n + 1)).toNat : ℚ) / (A325566 (n + 1) : ℚ)

end

end A161398.P15630172567618268106

/-! ## A161398.P17590804783302265023

`A268385(A268385(n+1))/A325566(n+1)`
-/

namespace A161398.P17590804783302265023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268385 (A268385 (n + 1)).toNat : ℚ) / (A325566 (n + 1) : ℚ)

end

end A161398.P17590804783302265023

/-! ## A161398.P15847939302245329554

`gcd(A379120(n+1), A396748(n))`
-/

namespace A161398.P15847939302245329554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A379120 (n + 1)) (A396748 n)

end

end A161398.P15847939302245329554

/-! ## A161398.P10311422928893888476

`A307267(A307267(n+1))/A325566(n+1)`
-/

namespace A161398.P10311422928893888476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307267 (A307267 (n + 1)).toNat : ℚ) / (A325566 (n + 1) : ℚ)

end

end A161398.P10311422928893888476

/-! ## A161398.P13790031274986883370

`A075362(A000124(n))/A325566(n+1)`
-/

namespace A161398.P13790031274986883370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (A000124 n).toNat : ℚ) / (A325566 (n + 1) : ℚ)

end

end A161398.P13790031274986883370

/-! ## A161398.P12682641414206583409

`A126988(A325566(n+1)+∑[n])`
-/

namespace A161398.P12682641414206583409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A325566 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A161398.P12682641414206583409

/-! ## A161398.P3220588847248947870

`A010766(A325566(n+1)+A000217(n))`
-/

namespace A161398.P3220588847248947870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A325566 (n + 1) + A000217 n).toNat

end

end A161398.P3220588847248947870

/-! ## A161398.P3446603579077900264

`A049834(A325566(n+1)+A000217(n))`
-/

namespace A161398.P3446603579077900264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A325566 (n + 1) + A000217 n).toNat

end

end A161398.P3446603579077900264

/-! ## A161398.P16848982429331413242

`A277227(A325566(n+1)+A000124(n))`
-/

namespace A161398.P16848982429331413242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A325566 (n + 1) + A000124 n).toNat

end

end A161398.P16848982429331413242

/-! ## A161398.P4953464516118311861

`A003056(A027379(n))/A325566(n+1)`
-/

namespace A161398.P4953464516118311861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (A027379 n).toNat : ℚ) / (A325566 (n + 1) : ℚ)

end

end A161398.P4953464516118311861

/-! ## A161398.P2184164861452394565

`(A325566(A158350(n+1))+n)/A325566(n+1)`
-/

namespace A161398.P2184164861452394565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325566 (A158350 (n + 1)).toNat + (n : ℤ) : ℚ) / (A325566 (n + 1) : ℚ)

end

end A161398.P2184164861452394565

/-! ## A161398.P170987721217572056

`(A119350(A119350(n+1))+n)/A325566(n+1)`
-/

namespace A161398.P170987721217572056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119350 (A119350 (n + 1)).toNat + (n : ℤ) : ℚ) / (A325566 (n + 1) : ℚ)

end

end A161398.P170987721217572056

/-!
# A161399: a(n) = the smallest divisor of n that contains the same number of (non-leading) 0's as n when both numbers are written in binary.

The programs for A161399, there is no canonical definition to state claims against.
-/

/-! ## A161399.P1601847805899541210

`gcd(n+1, A100050(A286542(n)))`
-/

namespace A161399.P1601847805899541210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A100050 (A286542 n).toNat)

end

end A161399.P1601847805899541210

/-! ## A161399.P10303588317041288179

`gcd(A100050(A286542(n)), A131738(n))`
-/

namespace A161399.P10303588317041288179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100050 (A286542 n).toNat) (A131738 n)

end

end A161399.P10303588317041288179

/-! ## A161399.P2158471053505218514

`(n+1)%A120769(A153671(2*(n+1)))`
-/

namespace A161399.P2158471053505218514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A120769 (A153671 (2 * (n + 1))).toNat)

end

end A161399.P2158471053505218514

/-! ## A161399.P10695080750365698376

`A023443(n+2)%A028310(A120769(2*n+2))`
-/

namespace A161399.P10695080750365698376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (n + 2)) (A028310 (A120769 (2 * n + 2)).toNat)

end

end A161399.P10695080750365698376

/-! ## A161399.P249440364467190704

`gcd(Δ[n²]-n, A341509(A286542(n)²))`
-/

namespace A161399.P249440364467190704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A341509 (A286542 n ^ 2).toNat)

end

end A161399.P249440364467190704

